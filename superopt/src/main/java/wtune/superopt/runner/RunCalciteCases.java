package wtune.superopt.runner;

import gnu.trove.set.TIntSet;
import wtune.common.utils.Args;
import wtune.common.utils.IOSupport;
import wtune.sql.SqlSupport;
import wtune.sql.ast.SqlNode;
import wtune.sql.plan.PlanContext;
import wtune.sql.plan.PlanSupport;
import wtune.sql.schema.Schema;
import wtune.sql.support.action.NormalizationSupport;
import wtune.stmt.App;
import wtune.superopt.optimizer.Optimizer;
import wtune.superopt.optimizer.OptimizerSupport;
import wtune.superopt.substitution.SubstitutionBank;
import wtune.superopt.substitution.SubstitutionSupport;

import java.nio.file.Files;
import java.nio.file.Path;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import static wtune.sql.SqlSupport.parseSql;
import static wtune.common.datasource.DbSupport.MySQL;
import static wtune.sql.plan.PlanSupport.assemblePlan;
import static wtune.sql.plan.PlanSupport.translateAsAst;
import static wtune.superopt.runner.RunnerSupport.parseIndices;

public class RunCalciteCases implements Runner {
  private static final String CALCITE_APP_NAME = "calcite_test";

  private Path out;
  private Path testCases;
  private Path rulesFile;
  private App app;
  private boolean verbose;
  private TIntSet targetLines;
  private boolean singleCase;
  private int singleTargetLineNum;

  private static List<Integer> blackList = List.of(127, 203, 229, 255, 281, 353, 395, 463);

  @Override
  public void prepare(String[] argStrings) {
    final Args args = Args.parse(argStrings, 1);
    final String lineRangeSpec = args.getOptional("T", "line", String.class, null);
    final Path dataDir = RunnerSupport.dataDir();
    final String calciteDirName = "calcite";
    final String defaultOutFileName =
        "rewrites_"
            + LocalDateTime.now().format(DateTimeFormatter.ofPattern("MMddHHmmss"))
            + ".tsv";
    final String outFileName = args.getOptional("o", "out", String.class, defaultOutFileName);
    out = dataDir.resolve(calciteDirName).resolve(outFileName);

    testCases = Path.of(args.getOptional("i", "cases", String.class, "wtune_data/calcite_tests"));
    rulesFile = Path.of(args.getOptional("R", "rules", String.class, "wtune_data/rules.txt"));
    verbose = args.getOptional("v", "verbose", boolean.class, false);
    app = App.of(CALCITE_APP_NAME);

    if (lineRangeSpec != null) targetLines = parseIndices(lineRangeSpec);

    if (!Files.exists(rulesFile)) throw new IllegalArgumentException("no such file: " + rulesFile);
    if (!Files.exists(testCases)) throw new IllegalArgumentException("no such file: " + testCases);

    singleTargetLineNum = args.getOptional("single", Integer.class, -1);
    singleCase = (singleTargetLineNum > 0);
  }

  @Override
  public void run() throws Exception {
    final List<String> lines = Files.readAllLines(testCases);
    final List<QueryPair> pairs = readPairs(lines);
    System.out.printf("total pairs: %d, supported: %d\n", lines.size() / 2, pairs.size());
    final SubstitutionBank bank = SubstitutionSupport.loadBank(rulesFile);
    for (final QueryPair pair : pairs) {
      if (targetLines != null && !targetLines.contains(pair.lineNum)) continue;
      if ((singleCase && pair.lineNum != singleTargetLineNum)) continue;
      if (blackList.contains(pair.lineNum)) continue;

      final Optimizer optimizer = Optimizer.mk(bank);
      optimizer.setTracing(targetLines != null);

      final Set<PlanContext> optimized0 = optimizer.optimize(pair.p0);
      final Set<PlanContext> optimized1 = optimizer.optimize(pair.p1);

      final List<String> optimizedSql0 = new ArrayList<>(optimized0.size());
      final List<String> optimizedSql1 = new ArrayList<>(optimized1.size());
      for (PlanContext optPlan0 : optimized0) {
        final SqlNode sqlNode0 = translateAsAst(optPlan0, optPlan0.root(), false);
        if (sqlNode0 != null) optimizedSql0.add(sqlNode0.toString());
      }
      for (PlanContext optPlan1 : optimized1) {
        final SqlNode sqlNode1 = translateAsAst(optPlan1, optPlan1.root(), false);
        if (sqlNode1 != null) optimizedSql1.add(sqlNode1.toString());
      }

      System.out.printf("==== optimized of line %d ====\n", pair.lineNum);
      IOSupport.appendTo(
          out,
          writer -> {
            for (PlanContext optPlan0 : optimized0) {
              final SqlNode sqlNode0 = translateAsAst(optPlan0, optPlan0.root(), false);
              if (sqlNode0 != null) {
                writer.printf("%s-%d\t%s\t%s\n", CALCITE_APP_NAME, pair.q0Id(), pair.q0, sqlNode0);
              }
            }
          });
      IOSupport.appendTo(
          out,
          writer -> {
            for (PlanContext optPlan1 : optimized1) {
              final SqlNode sqlNode1 = translateAsAst(optPlan1, optPlan1.root(), false);
              if (sqlNode1 != null) {
                writer.printf("%s-%d\t%s\t%s\n", CALCITE_APP_NAME, pair.q1Id(), pair.q1, sqlNode1);
              }
            }
          });

      if (targetLines != null || optimized0.size() > 1) {
        System.out.println("Original Query: ");
        System.out.println("  " + pair.q0);
        System.out.println("SPES result: ");
        System.out.println("  " + pair.q1);
        System.out.println("WeTune result: ");
        for (PlanContext opt : optimized0) {
          System.out.println("  " + translateAsAst(opt, opt.root(), false));
          if (verbose && targetLines != null) OptimizerSupport.dumpTrace(optimizer, opt);
        }
      }

      if (singleCase) break;
    }
  }

  private static class QueryPair {
    private final int lineNum;
    private final SqlNode q0, q1;
    private final PlanContext p0, p1;

    private QueryPair(int lineNum, SqlNode q0, SqlNode q1, PlanContext p0, PlanContext p1) {
      this.lineNum = lineNum;
      this.q0 = q0;
      this.q1 = q1;
      this.p0 = p0;
      this.p1 = p1;
    }

    private int q0Id() {
      return lineNum;
    }

    private int q1Id() {
      return lineNum + 1;
    }

    private int pairId() {
      return lineNum + 1 >> 1;
    }
  }

  private List<QueryPair> readPairs(List<String> lines) {
    final Schema schema = app.schema("base");
    SqlSupport.muteParsingError();

    final List<QueryPair> pairs = new ArrayList<>(lines.size() >> 1);
    for (int i = 0, bound = lines.size(); i < bound; i += 2) {
      final String first = lines.get(i), second = lines.get(i + 1);
      final SqlNode q0 = parseSql(MySQL, first);
      final SqlNode q1 = parseSql(MySQL, second);

      if (q0 == null || !PlanSupport.isSupported(q0)) {
        if (verbose) System.err.printf("unsupported query at line %d: %s \n", i + 1, first);
        continue;
      }
      if (q1 == null || !PlanSupport.isSupported(q1)) {
        if (verbose) System.err.printf("unsupported query at line %d: %s \n", i + 2, second);
        continue;
      }

      q0.context().setSchema(schema);
      q1.context().setSchema(schema);
      NormalizationSupport.normalizeAst(q0);
      NormalizationSupport.normalizeAst(q1);

      final PlanContext p0 = assemblePlan(q0, schema);
      if (p0 == null) {
        if (verbose) {
          System.err.printf("wrong query at line %d: %s\n", i + 1, first);
          System.err.println(PlanSupport.getLastError());
        }
        continue;
      }
      final PlanContext p1 = assemblePlan(q1, schema);
      if (p1 == null) {
        if (verbose) {
          System.err.printf("wrong query at line %d: %s\n", i + 2, second);
          System.err.println(PlanSupport.getLastError());
        }
        continue;
      }

      pairs.add(new QueryPair(i + 1, q0, q1, p0, p1));
    }

    return pairs;
  }
}
