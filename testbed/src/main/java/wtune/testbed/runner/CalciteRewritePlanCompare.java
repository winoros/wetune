package wtune.testbed.runner;

import wtune.common.utils.Args;
import wtune.common.utils.IOSupport;
import wtune.sql.plan.*;
import wtune.stmt.Statement;
import wtune.stmt.support.OptimizerType;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.*;
import java.util.function.Function;

import static java.lang.System.Logger.Level.WARNING;
import static java.util.Arrays.asList;

public class CalciteRewritePlanCompare implements Runner {
  public static final System.Logger LOG = System.getLogger("calcite");

  private OptimizerType optimizerToCompare;
  private Set<String> stmts;
  private String outDir;

  // Statistics
  private Map<Statement, List<RewriteIssue>> issues;
  private Path calciteIssues;

  @Override
  public void prepare(String[] argStrings) throws Exception {
    final Args args = Args.parse(argStrings, 1);

    optimizerToCompare =
        OptimizerType.valueOf(args.getOptional("opt", "optimizer", String.class, "WeTune_Raw"));

    final String targetStmts = args.getOptional("stmt", String.class, null);
    if (targetStmts != null) stmts = new HashSet<>(asList(targetStmts.split(",")));

    outDir = args.getOptional("dir", String.class, "plan");
    final Path dir = Runner.dataDir().resolve(outDir);
    final Path statisticsDir = dir.resolve("statistics");
    if (!Files.exists(statisticsDir)) Files.createDirectories(statisticsDir);

    issues = new HashMap<>();
    calciteIssues = statisticsDir.resolve("calciteIssues.tsv");
    Files.deleteIfExists(calciteIssues);
  }

  @Override
  public void run() throws Exception {
    final List<String> failures = new ArrayList<>();

    final List<Statement> stmtsOptByCalcite = Statement.findAllRewritten(OptimizerType.Calcite);
    for (Statement stmtCalcite : stmtsOptByCalcite) {
      if (stmts != null && !stmts.contains(stmtCalcite.toString())) continue;

      System.out.println("Processing %s.".formatted(stmtCalcite));
      final Statement stmtOrigin = stmtCalcite.original();
      final Statement stmtCmp = stmtCalcite.rewritten(optimizerToCompare);

      final PlanContext planOrigin = toPlan(stmtOrigin);
      final PlanContext planCalcite = toPlan(stmtCalcite);
      final PlanContext planToCmp = toPlan(stmtCmp);

      if (planOrigin == null || planCalcite == null || planToCmp == null) {
        System.out.println("Cannot translate to plan for %s.".formatted(stmtCalcite));
        failures.add(stmtCalcite.toString());
        continue;
      }

      IOSupport.writeTo(getPlanSaveFile().apply(stmtOrigin), writer -> writer.println(planOrigin));
      IOSupport.writeTo(getPlanSaveFile().apply(stmtCalcite), writer -> writer.println(planCalcite));
      IOSupport.writeTo(getPlanSaveFile().apply(stmtCmp), writer -> writer.println(planToCmp));

      analyseDiffNumberOfInput(planCalcite, planToCmp, stmtCalcite);
      analyseDistinct(planCalcite, planToCmp, stmtCalcite);
    }
    writeIssues();

    LOG.log(WARNING, "failed to run {0}", failures);
  }

  private PlanContext toPlan(Statement stmt) {
    if (stmt.ast() == null) return null;
    return PlanSupport.assemblePlan(stmt.ast(), stmt.app().schema("base", true));
  }

  private Function<Statement, Path> getPlanSaveFile() {
    return stmt ->
        stmt.isRewritten()
            ? Runner.dataDir()
                .resolve(outDir)
                .resolve("%s_%s_%s".formatted(stmt, "opt", stmt.optimizerType()))
            : Runner.dataDir().resolve(outDir).resolve("%s_%s".formatted(stmt, "base"));
  }

  private void writeIssues() {
    List<Statement> orderedStmtList =
        issues.keySet().stream().sorted(Comparator.comparing(Statement::toString)).toList();
    for (var stmt : orderedStmtList) {
      final var stmtIssues = issues.get(stmt);
      final StringBuilder issueBuilder = new StringBuilder();

      for (var issue : RewriteIssue.values()) {
        if (stmtIssues.contains(issue)) issueBuilder.append(issue).append(",");
        else issueBuilder.append(",");
      }
      issueBuilder.deleteCharAt(issueBuilder.length() - 1);

      IOSupport.appendTo(
          calciteIssues,
          writer ->
              writer.printf("%s,%d,%s\n".formatted(stmt.appName(), stmt.stmtId(), issueBuilder)));
    }
  }

  /** Analyse plan struct differences */
  private void analyseDiffNumberOfInput(
      PlanContext planCalcite, PlanContext planCmp, Statement stmt) {
    final int inputCntCalcite = countInput(planCalcite.planRoot(), planCalcite);
    final int inputCntCmp = countInput(planCmp.planRoot(), planCmp);
    if (inputCntCalcite > inputCntCmp) {
      issues
          .computeIfAbsent(stmt, statement -> new ArrayList<>())
          .add(RewriteIssue.CALCITE_MORE_INPUTS);
    } else if (inputCntCalcite < inputCntCmp) {
      issues
          .computeIfAbsent(stmt, statement -> new ArrayList<>())
          .add(RewriteIssue.CALCITE_LESS_INPUTS);
    }
  }

  private int countInput(PlanNode root, PlanContext planCtx) {
    if (root.kind() == PlanKind.Input) return 1;

    int counter = 0;
    for (PlanNode child : root.children(planCtx)) counter += countInput(child, planCtx);
    return counter;
  }

  private void analyseDistinct(PlanContext planCalcite, PlanContext planCmp, Statement stmt) {
    final boolean containDistinctCalcite = containDistinct(planCalcite.planRoot(), planCalcite);
    final boolean containDistinctCmp = containDistinct(planCmp.planRoot(), planCmp);
    if (containDistinctCalcite && !containDistinctCmp) {
      issues
          .computeIfAbsent(stmt, statement -> new ArrayList<>())
          .add(RewriteIssue.CALCITE_RESERVE_DISTINCT);
    } else if (!containDistinctCalcite && containDistinctCmp) {
      issues
          .computeIfAbsent(stmt, statement -> new ArrayList<>())
          .add(RewriteIssue.CALCITE_DROP_DISTINCT);
    }
  }

  private boolean containDistinct(PlanNode root, PlanContext planCtx) {
    if (root.kind() == PlanKind.Proj && ((ProjNode) root).deduplicated()) return true;
    if (root.kind() == PlanKind.Agg && ((AggNode) root).deduplicated()) return true;

    for (PlanNode child : root.children(planCtx)) {
      if (containDistinct(child, planCtx)) return true;
    }
    return false;
  }
}

enum RewriteIssue {
  // Negative
  CALCITE_MORE_INPUTS,
  CALCITE_RESERVE_DISTINCT,

  // Positive
  CALCITE_LESS_INPUTS,
  CALCITE_DROP_DISTINCT
}
