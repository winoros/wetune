package wtune.superopt.runner;

import me.tongfei.progressbar.ProgressBar;
import wtune.common.utils.Args;
import wtune.common.utils.IOSupport;
import wtune.sql.ast.SqlNode;
import wtune.sql.plan.PlanContext;
import wtune.sql.plan.PlanKind;
import wtune.sql.plan.PlanSupport;
import wtune.sql.schema.Schema;
import wtune.stmt.Statement;
import wtune.stmt.dao.StatementDao;
import wtune.superopt.optimizer.OptimizationStep;
import wtune.superopt.optimizer.Optimizer;
import wtune.superopt.optimizer.OptimizerSupport;
import wtune.superopt.substitution.SubstitutionBank;
import wtune.superopt.substitution.SubstitutionSupport;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Set;

import static wtune.common.utils.Commons.countOccurrences;
import static wtune.common.utils.Commons.joining;
import static wtune.common.utils.IterableSupport.all;
import static wtune.sql.plan.PlanSupport.*;
import static wtune.sql.support.action.NormalizationSupport.normalizeAst;
import static wtune.superopt.optimizer.OptimizerSupport.*;
import static wtune.superopt.runner.RunnerSupport.dataDir;
import static wtune.superopt.runner.RunnerSupport.parseIntArg;

public class RewriteQuery implements Runner {
  private Path out, err;
  private String targetApp;
  private int stmtId;
  private boolean single, excludeNonEssential;
  private int verbosity;

  private String sqlText;
  private SubstitutionBank rules;

  public void setRawSQL(String appName, int stmtId, String rawSQL) {
      targetApp = appName;
      this.stmtId = stmtId;
      sqlText = rawSQL;
      verbosity = 4;

      final Path dataDir = RunnerSupport.dataDir();
      final Path ruleFilePath = dataDir.resolve("rules/rules.txt");
      try {
          rules = SubstitutionSupport.loadBank(ruleFilePath);
      } catch (IOException e) {
          System.out.println("rule set failed");
      }
  }

  @Override
  public void prepare(String[] argStrings) throws IOException {
    final Args args = Args.parse(argStrings, 1);

    final String target = args.getOptional("T", "target", String.class, null);
    if (target != null) {
      final int index = target.indexOf('-');
      if (index < 0) {
        targetApp = target;
        stmtId = -1;
      } else {
        targetApp = target.substring(0, index);
        stmtId = parseIntArg(target.substring(index + 1), "stmtId");
      }
    }

    final String sql =args.getOptional("s", "sql", String.class, null);
    if (sql != null) {
        sqlText = sql;
    }

      System.out.printf("target: %s, stmtId: %d, rawSQL: %s\n", target, stmtId, sqlText);

    single = args.getOptional("1", "single", boolean.class, false);
    if (single && (target == null)) {
      throw new IllegalArgumentException("-single/-1 must be specified with -T/-target");
    }

    verbosity = args.getOptional("v", "verbose", int.class, 0);
    if (single && stmtId > 0) verbosity = Integer.MAX_VALUE;

    excludeNonEssential = args.getOptional("E", boolean.class, false);

    final Path dataDir = RunnerSupport.dataDir();
    final String ruleFileName = args.getOptional("R", "rules", String.class, "rules/rules.txt");

    final Path ruleFilePath = dataDir.resolve(ruleFileName);
    IOSupport.checkFileExists(ruleFilePath);
    rules = SubstitutionSupport.loadBank(ruleFilePath);

    if (single) return;

    final String subDirName = LocalDateTime.now().format(DateTimeFormatter.ofPattern("MMddHHmmss"));
    final String dirName = args.getOptional("D", "dir", String.class, "rewrite");
    final Path dir = dataDir.resolve(dirName).resolve("run" + subDirName);

    if (!Files.exists(dir)) Files.createDirectories(dir);

    out = dir.resolve("1_query.tsv");
    err = dir.resolve("1_err.txt");

    if (ruleFileName.contains("spes")) Files.createFile(dir.resolve("use_spes"));
    if (ruleFileName.contains("merged")) Files.createFile(dir.resolve("use_merged"));
  }

  @Override
  public void run() throws Exception {
    if (rules.isExtended()) addOptimizerTweaks(TWEAK_ENABLE_EXTENSIONS);
    addOptimizerTweaks(TWEAK_SORT_FILTERS_BEFORE_OUTPUT);

    if (single && stmtId > 0) {
        System.out.println("1111111111111111");
      optimizeOne(Statement.findOne(targetApp, stmtId));
    } else if (sqlText == null) {
        System.out.println("22222222222222222222");
      optimizeAll(collectToRun());
    } else {
        System.out.println("3333333333333");
        insertAndOptimize();
    }
  }

  private List<Statement> collectToRun() {
    final List<Statement> toRun = new ArrayList<>();
    boolean appLatch = targetApp == null;
    boolean stmtLatch = stmtId <= 0;

    for (Statement stmt : Statement.findAll()) {
      if (!appLatch) appLatch = stmt.appName().equals(targetApp);
      if (appLatch && !stmtLatch) stmtLatch = stmt.stmtId() >= stmtId;
      if (!appLatch || !stmtLatch) continue;
      if (single && !stmt.appName().equals(targetApp)) break;
      toRun.add(stmt);
    }

    return toRun;
  }

  private void optimizeAll(List<Statement> stmts) {
    try (final ProgressBar pb = new ProgressBar("Optimization", stmts.size())) {
      for (Statement stmt : stmts) {
        optimizeOne(stmt);
        pb.step();
      }
    }
  }

  public String insertAndOptimize() {
      StatementDao.instance().insertSQL(targetApp, stmtId, sqlText);
      Statement stmt = Statement.mk(targetApp, stmtId, sqlText, "");
      String result = optimizeOneAndPickOne(stmt);
      StatementDao.instance().deleteStmt(targetApp, stmtId);
      return result;

  }

  private String optimizeOneAndPickOne(Statement stmt) {
      if (verbosity >= 3) {
          System.out.println("begin optimize " + stmt);
          if (verbosity >= 4) System.out.println(stmt.ast().toString(false));
      }

      PlanContext plan = null;
      try {
          plan = parsePlan(stmt);
          if (plan == null) {
              if (verbosity >= 3) System.out.println("nil plan generated");
              return null;
          }

          if (isSimple(plan)) {
              if (verbosity >= 3) System.out.println("skip simple query " + stmt);
              return null;
          }

          final Optimizer optimizer = Optimizer.mk(rules);
          optimizer.setTimeout(5000);
          optimizer.setTracing(true);

          final Set<PlanContext> optimized = optimizer.optimize(plan);
          if (optimized.isEmpty()) {
              if (verbosity >= 3) System.out.println("skip this query since optmized plan is empty" + stmt);
              return null;
          }
          final List<String> optimizedSql = new ArrayList<>(optimized.size());
          final List<String> traces = new ArrayList<>(optimized.size());
          for (PlanContext opt : optimized) {
              final List<OptimizationStep> steps = optimizer.traceOf(opt);

              if (steps.isEmpty()) {
                  if (verbosity >= 3) System.out.println("skip the query since the opt steps is empty" + stmt);
                  continue;
              }
              if (excludeNonEssential && all(steps, step -> step.rule() == null)) continue;

              final SqlNode sqlNode = translateAsAst(opt, opt.root(), false);
              if (sqlNode == null) {
                  if (verbosity >= 1)
                      System.err.println(
                              "fail to translate optimized plan of "
                              + stmt
                              + " to SQL due to "
                              + PlanSupport.getLastError());
                  if (verbosity >= 2) System.err.println(stringifyTree(opt, opt.root(), false, false));
                  continue;
              }

                  System.out.println("===== Rewritings =====");
                  System.out.println(sqlNode.toString(false));
                  OptimizerSupport.dumpTrace(optimizer, opt);
                  return sqlNode.toString(false);
          }

          if (single) return null;

      } catch (Throwable ex) {
          if (verbosity >= 1) System.err.println("fail to optimize stmt " + stmt);
          if (verbosity >= 2) {
              System.err.println(stmt.ast().toString(false));
              if (plan != null) System.err.println(stringifyTree(plan, plan.root(), false, false));
              ex.printStackTrace();
          }
      }
      return null;
  }

  private void optimizeOne(Statement stmt) {
    if (verbosity >= 3) {
      System.out.println("begin optimize " + stmt);
      if (verbosity >= 4) System.out.println(stmt.ast().toString(false));
    }

    PlanContext plan = null;
    try {
      plan = parsePlan(stmt);
      if (plan == null) {
          if (verbosity >= 3) System.out.println("nil plan generated");
          return;
      }

      if (isSimple(plan)) {
        if (verbosity >= 3) System.out.println("skip simple query " + stmt);
        return;
      }

      final Optimizer optimizer = Optimizer.mk(rules);
      optimizer.setTimeout(5000);
      optimizer.setTracing(true);

      final Set<PlanContext> optimized = optimizer.optimize(plan);
      if (optimized.isEmpty()) {
          if (verbosity >= 3) System.out.println("skip this query since optmized plan is empty" + stmt);
          return;
      }

      final List<String> optimizedSql = new ArrayList<>(optimized.size());
      final List<String> traces = new ArrayList<>(optimized.size());
      for (PlanContext opt : optimized) {
          final List<OptimizationStep> steps = optimizer.traceOf(opt);

          if (steps.isEmpty()) {
              if (verbosity >= 3) System.out.println("skip the query since the opt steps is empty" + stmt);
            continue;
        }
        if (excludeNonEssential && all(steps, step -> step.rule() == null)) continue;

        final SqlNode sqlNode = translateAsAst(opt, opt.root(), false);
        if (sqlNode == null) {
          if (verbosity >= 1)
            System.err.println(
                "fail to translate optimized plan of "
                    + stmt
                    + " to SQL due to "
                    + PlanSupport.getLastError());
          if (verbosity >= 2) System.err.println(stringifyTree(opt, opt.root(), false, false));
          continue;
        }

        if (single) {
          System.out.println("===== Rewritings =====");
          System.out.println(sqlNode.toString(false));
          OptimizerSupport.dumpTrace(optimizer, opt);
        }

        optimizedSql.add(sqlNode.toString());

        final String trace = joining(",", steps, it -> String.valueOf(it.ruleId()));
        traces.add(trace);
      }

      if (single) return;

      IOSupport.appendTo(
          out,
          writer -> {
            for (int i = 0, bound = optimizedSql.size(); i < bound; i++)
              writer.printf(
                  "%s\t%d\t%d\t%s\t%s\n",
                  stmt.appName(), stmt.stmtId(), i, optimizedSql.get(i), traces.get(i));
          });

    } catch (Throwable ex) {
      if (verbosity >= 1) System.err.println("fail to optimize stmt " + stmt);
      if (verbosity >= 2) {
        System.err.println(stmt.ast().toString(false));
        if (plan != null) System.err.println(stringifyTree(plan, plan.root(), false, false));
        ex.printStackTrace();
      }
      if (single) return;

      IOSupport.appendTo(
          err,
          writer -> {
            writer.print(" >");
            writer.println(stmt);
            ex.printStackTrace(writer);
          });
    }
  }

  private PlanContext parsePlan(Statement stmt) {
    final Schema schema = stmt.app().schema("base", true);
    try {
      final SqlNode ast = stmt.ast();

      if (ast == null) {
        if (verbosity >= 1) System.err.println("fail to parse sql " + stmt);
        return null;
      }

      if (!PlanSupport.isSupported(ast)) {
        if (verbosity >= 1)
          System.err.println("fail to parse plan " + stmt + " due to unsupported SQL feature");
        return null;
      }

      ast.context().setSchema(schema);
      normalizeAst(ast);

      final PlanContext plan = assemblePlan(ast, schema);

      if (plan == null) {
        if (verbosity >= 1)
          System.err.println(
              "fail to parse plan " + stmt + " due to " + PlanSupport.getLastError());
      }

      return plan;

    } catch (Throwable ex) {
      if (verbosity >= 1) {
        System.err.println("fail to parse sql/plan " + stmt + " due to exception");
        ex.printStackTrace();
      }
      return null;
    }
  }

  private static boolean isTooComplex(String sql) {
    return countOccurrences(sql.toLowerCase(Locale.ROOT), "join") >= 10;
  }

  private static boolean isSimple(PlanContext plan) {
    int node = plan.root();
    if (plan.kindOf(node) == PlanKind.Limit) node = plan.childOf(node, 0);
    if (plan.kindOf(node) == PlanKind.Sort) node = plan.childOf(node, 0);
    if (plan.kindOf(node) != PlanKind.Proj || PlanSupport.isDedup(plan, node)) return false;
    node = plan.childOf(node, 0);

    while (plan.kindOf(node) == PlanKind.Filter) node = plan.childOf(node, 0);
    return plan.kindOf(node) == PlanKind.Input;
  }

    @Override
    public void stop() {
      if (sqlText != null) {
          StatementDao.instance().deleteStmt(targetApp, stmtId);
      }
  }
}
