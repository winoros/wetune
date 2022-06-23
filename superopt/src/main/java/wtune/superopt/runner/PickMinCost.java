package wtune.superopt.runner;

import me.tongfei.progressbar.ProgressBar;
import wtune.common.datasource.DbSupport;
import wtune.common.utils.Args;
import wtune.common.utils.IOSupport;
import wtune.sql.ast.SqlNode;
import wtune.sql.plan.PlanContext;
import wtune.sql.schema.Schema;
import wtune.sql.support.action.NormalizationSupport;
import wtune.stmt.App;
import wtune.stmt.Statement;
import wtune.superopt.profiler.Profiler;

import java.nio.file.Files;
import java.nio.file.Path;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;

import static java.util.Collections.emptyList;
import static java.util.Collections.singletonList;
import static wtune.common.utils.Commons.isNullOrEmpty;
import static wtune.common.utils.IterableSupport.linearFind;
import static wtune.common.utils.ListSupport.map;
import static wtune.sql.SqlSupport.parseSql;
import static wtune.common.datasource.DbSupport.SQLServer;
import static wtune.sql.plan.PlanSupport.assemblePlan;
import static wtune.superopt.runner.RunnerSupport.*;

public class PickMinCost implements Runner {
  private Path inOptFile, outOptFile, outTraceFile;
  private String targetApp;
  private int stmtId;
  private int verbosity;
  private boolean useSqlServer;
  private final Map<String, Properties> dbProps = new ConcurrentHashMap<>();

  @Override
  public void prepare(String[] argStrings) throws Exception {
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

    verbosity = args.getOptional("v", "verbose", int.class, 0);
    if (stmtId > 0) verbosity = Integer.MAX_VALUE;

    final Path dataDir = dataDir();
    final Path dir = dataDir.resolve(args.getOptional("D", "dir", String.class, "rewrite/result"));
    inOptFile = dir.resolve(args.getOptional("i", "in", String.class, "1_query.tsv"));
    IOSupport.checkFileExists(inOptFile);

    final String defaultOutFileName =
        "optimize_"
            + LocalDateTime.now().format(DateTimeFormatter.ofPattern("MMddHHmmss"))
            + ".tsv";
    final String defaultOutTraceFileName =
        "optimize_trace"
            + LocalDateTime.now().format(DateTimeFormatter.ofPattern("MMddHHmmss"))
            + ".tsv";
    final String outFileName = args.getOptional("out", String.class, "2_query.tsv");
    final String outTraceFileName =
        args.getOptional("out_trace", String.class, "2_trace.tsv");
    outOptFile = dir.resolve(outFileName);
    outTraceFile = dir.resolve(outTraceFileName);

    // Default datasource is Sql Server
    useSqlServer = args.getOptional("sqlserver", boolean.class, true);
  }

  @Override
  public void run() throws Exception {
    final List<String> failures = new ArrayList<>();

    final List<String> lines = Files.readAllLines(inOptFile);

    final List<OptimizedStatements> groups = filterToRun(collectOpts(lines));
    try (final ProgressBar pb = new ProgressBar("PickMin", groups.size())) {
      for (OptimizedStatements group : groups) {
        if (!pickMin(group)) {
          failures.add(group.toString());
        }
        pb.step();
      }
    }
    System.err.println("failed to profile " + (failures));
  }

  private List<OptimizedStatements> collectOpts(List<String> lines) {
    final List<OptimizedStatements> optimizations = new ArrayList<>(lines.size() / 20);

    OptimizedStatements current = null;
    for (int i = 0, bound = lines.size(); i < bound; ++i) {
      final String line = lines.get(i);
      final String[] fields = line.split("\t", 5);
      if (fields.length != 5) {
        if (verbosity >= 1) System.err.println("malformed line " + i + " " + line);
        continue;
      }

      final String app = fields[0];
      final int stmtId = parseIntSafe(fields[1], -1);
      if (app.isEmpty() || stmtId <= 0) {
        if (verbosity >= 1) System.err.println("malformed line " + i + " " + line);
        continue;
      }

      if (current == null || !current.appName.equals(app) || current.stmtId != stmtId) {
        optimizations.add(current = new OptimizedStatements(app, stmtId, true));
      }

      current.sqls.add(fields[3]);
      current.traces.add(fields[4]);
    }

    return optimizations;
  }

  private List<OptimizedStatements> filterToRun(List<OptimizedStatements> opts) {
    opts.removeIf(it -> it.sqls.isEmpty());

    if (stmtId > 0) {
      assert targetApp != null;
      final String targetApp = this.targetApp;
      final int stmtId = this.stmtId;
      final OptimizedStatements found =
          linearFind(opts, it -> targetApp.equals(it.appName) && stmtId == it.stmtId);
      if (found == null) return emptyList();
      else return singletonList(found);
    }

    if (targetApp != null) {
      final String targetApp = this.targetApp;
      opts.removeIf(it -> !targetApp.equals(it.appName));
      return opts;
    }

    return opts;
  }

  private Properties mkDbProps(String appName) {
    final Properties existing = dbProps.get(appName);
    if (existing != null) return existing;

    final String dbName = appName + "_base";
    final String dbType = useSqlServer ? SQLServer : App.of(appName).dbType();
    final Properties props = DbSupport.dbProps(dbType, dbName);
    dbProps.put(appName, props);
    return props;
  }

  private PlanContext mkPlan(Schema schema, String sql) {
    final SqlNode ast = parseSql(schema.dbType(), sql);
    return assemblePlan(ast, schema);
  }

  private boolean pickMin(OptimizedStatements group) {
    if (verbosity >= 3) System.out.println("Begin pick min " + group);

    final Profiler profiler;
    try {
      profiler = profile(group);
    } catch (Throwable ex) {
      if (verbosity >= 1) {
        System.err.printf("fail to profile %s due exception\n", group);
        if (verbosity >= 2) ex.printStackTrace();
      }
      return false;
    }

    final int idx = profiler.minCostIndex();
    if (idx < 0) {
      if (verbosity >= 3) System.out.println("No better than baseline " + group);
      // IOSupport.appendTo(
      //     outOptFile,
      //     writer -> writer.printf("%s\t%d: No better than baseline.\n", group.appName,
      // group.stmtId));
      return true;
    }
    if (verbosity >= 3) System.out.println("Opt No." + idx + " pick for " + group);
    if (verbosity >= 4) {
      System.out.println("Baseline ==>");
      final Statement baseLineStmt =
          group.appName.equals("calcite_test")
              ? Statement.findOneCalcite(group.appName, group.stmtId)
              : Statement.findOne(group.appName, group.stmtId);
      System.out.println(baseLineStmt.ast().toString(false));
      System.out.println("Optimized ==>");
      System.out.println(
          parseSql(App.of(group.appName).dbType(), group.sqls.get(idx)).toString(false));
    }

    if (stmtId > 0) return true;

    if (!isNullOrEmpty(group.traces)) {
      IOSupport.appendTo(
          outOptFile,
          writer ->
              writer.printf(
                  "%s\t%d\t%s\t%s\n",
                  group.appName, group.stmtId, group.sqls.get(idx), group.traces.get(idx)));
      IOSupport.appendTo(
          outTraceFile,
          writer ->
              writer.printf("%s\t%d\t%d\t%s\n", group.appName, group.stmtId, idx, group.traces.get(idx)));
    } else {
      IOSupport.appendTo(
          outOptFile,
          writer ->
              writer.printf("%s\t%d\t%s\n", group.appName, group.stmtId, group.sqls.get(idx)));
    }
    return true;
  }

  private Profiler profile(OptimizedStatements group) {
    final Statement stmt =
        group.appName.equals("calcite_test")
            ? Statement.findOneCalcite(group.appName, group.stmtId)
            : Statement.findOne(group.appName, group.stmtId);
    final Schema schema = stmt.app().schema("base");
    final SqlNode ast = stmt.ast();
    ast.context().setSchema(schema);
    NormalizationSupport.normalizeAst(ast);

    final PlanContext baseline = assemblePlan(ast, schema);
    final List<PlanContext> candidates = map(group.sqls, sql -> mkPlan(schema, sql));
    final Properties dbProps = mkDbProps(group.appName);
    final Profiler profiler = Profiler.mk(dbProps);
    profiler.setBaseline(baseline);
    for (PlanContext candidate : candidates) profiler.profile(candidate);

    return profiler;
  }

  private static class OptimizedStatements {
    private final String appName;
    private final int stmtId;
    private final List<String> sqls;
    private final List<String> traces;

    private OptimizedStatements(String appName, int stmtId, boolean hasTrace) {
      this.appName = appName;
      this.stmtId = stmtId;
      this.sqls = new ArrayList<>();
      this.traces = hasTrace ? new ArrayList<>() : null;
    }

    @Override
    public String toString() {
      return appName + "-" + stmtId;
    }
  }
}
