package wtune.testbed.runner;

import me.tongfei.progressbar.ProgressBar;
import wtune.common.utils.Args;
import wtune.common.utils.IOSupport;
import wtune.common.utils.SetSupport;
import wtune.sql.ast.SqlNode;
import wtune.sql.ast.SqlNodes;
import wtune.sql.schema.Schema;
import wtune.sql.schema.Table;
import wtune.stmt.App;
import wtune.stmt.Statement;
import wtune.stmt.support.OptimizerType;
import wtune.testbed.common.Collection;
import wtune.testbed.population.PopulationConfig;
import wtune.testbed.population.SQLPopulator;
import wtune.testbed.util.RandomHelper;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.*;
import java.util.function.Function;

import static wtune.common.utils.Commons.joining;
import static wtune.common.utils.FuncSupport.deaf;
import static wtune.sql.ast.SqlNodeFields.TableName_Table;
import static wtune.sql.ast.TableSourceFields.Simple_Table;
import static wtune.sql.ast.TableSourceKind.SimpleSource;
import static wtune.sql.support.locator.LocatorSupport.nodeLocator;
import static wtune.common.utils.IOSupport.*;

public class GenerateTableData implements Runner {
  static final String BASE = "base";
  static final String ZIPF = "zipf";
  static final String LARGE = "large";
  static final String LARGE_ZIPF = "large_zipf";

  private Map<String, Set<String>> targets;
  private OptimizerType optimizedBy;
  private int verbosity;
  private String tag;
  private Path dir, failure;
  private ProgressBar progressBar;

  @Override
  public void prepare(String[] argStrings) throws Exception {
    final Args args = Args.parse(argStrings, 1);

    final Path parentDir = Runner.dataDir();
    final String dirName = args.getOptional("D", "dir", String.class, "dump");

    targets = new HashMap<>();
    final String targetFileName = args.getOptional("targetFile", String.class, null);
    if (targetFileName != null) {
      final Path targetFile = parentDir.resolve(targetFileName);
      checkFileExists(targetFile);
      readTargetFile(targetFile);
    } else {
      final String targetString = args.getOptional("T", "target", String.class, "opt_used");
      if (targetString.equals("opt_used"))
        optimizedBy = OptimizerType.valueOf(args.getOptional("optimizer", String.class, "WeTune"));
      readTargetSpec(targetString);
    }

    tag = args.getOptional("t", "tag", String.class, BASE);
    verbosity = args.getOptional("v", "verbose", int.class, 0);
    dir = parentDir.resolve(dirName);
    failure = dir.resolve("failed_tables_" + tag + ".txt");
    if (!Files.exists(dir)) Files.createDirectories(dir);
  }

  @Override
  public void run() throws Exception {
    if (targets.isEmpty()) return;
    if (verbosity >= 3) System.out.println("Targets:");
    int numTargets = 0;
    int lineNums = LARGE.equals(tag) || LARGE_ZIPF.equals(tag) ? 1_000_000 : 10_000;
    for (var pair : targets.entrySet()) {
      numTargets += pair.getValue().size();
      if (verbosity >= 3)
        System.out.printf(" %s: %d %s\n", pair.getKey(), pair.getValue().size(), pair.getValue());
    }

    try (final ProgressBar pb = new ProgressBar("Population", ((long) numTargets) * lineNums)) {
      this.progressBar = pb;

      for (var pair : targets.entrySet()) {
        final String appName = pair.getKey();
        final Set<String> tableNames = pair.getValue();
        final App app = App.of(appName);
        final Schema schema = app.schema("base", true);

        final PopulationConfig config = mkConfigForApp(appName, tag);
        final List<String> failed = new ArrayList<>();
        for (String tableName : tableNames) {
          final Table table = schema.table(tableName);
          if (table == null) {
            if (verbosity >= 1) System.err.println("no such table: " + appName + '.' + tableName);
            continue;
          }

          if (!populateOne(config, app.name(), table.name())) {
            failed.add(table.name());
          }
        }

        if (!failed.isEmpty()) {
          if (verbosity >= 1)
            System.err.printf("failed to populate tables for %s: %s\n", appName, failed);

          IOSupport.appendTo(
              failure,
              writer -> {
                writer.print(appName);
                writer.print(':');
                writer.println(joining(",", failed));
              });
        }
      }
    }
  }

  private void readTargetFile(Path path) throws IOException {
    for (String line : Files.readAllLines(path)) {
      final String[] fields = line.split(":", 2);
      targets
          .computeIfAbsent(fields[0], deaf(HashSet::new))
          .addAll(Arrays.asList(fields[1].split(",")));
    }
  }

  private void readTargetSpec(String specString) {
    final List<String> specs = Arrays.asList(specString.split(","));
    if (specs.contains("all")) {
      for (App app : App.all()) putTablesOfApp(app.name(), "all");
    } else if (specs.contains("used")) {
      for (App app : App.all()) putTablesOfApp(app.name(), "used");
    } else if (specs.contains("opt_used")) {
      for (App app : App.all()) putTablesOfApp(app.name(), "opt_used");
    } else {
      for (String spec : specs) {
        final String[] fields = spec.split("\\.", 2);
        if (fields.length == 1) putTablesOfApp(fields[0], null);
        else putTablesOfApp(fields[0], fields[1]);
      }
    }
  }

  private void putTablesOfApp(String appName, String restriction) {
    final App app = App.of(appName);
    final Schema schema = app.schema("base", true);
    if (schema == null) {
      if (verbosity >= 1)
        System.err.println("no such app or its schema file is missed: " + appName);
      return;
    }

    if (restriction == null || "all".equals(restriction) || appName.equals("calcite_test")) {
      targets.put(appName, SetSupport.map(schema.tables(), Table::name));

    } else if ("used".equals(restriction)) {
      final List<Statement> stmts = Statement.findByApp(app.name());
      getUsedTables(stmts, targets);

    } else if ("opt_used".equals(restriction)) {
      final List<Statement> stmts = Statement.findRewrittenByApp(app.name(), optimizedBy);
      getUsedTables(stmts, targets);

    } else {
      final Table table = schema.table(restriction);
      if (table != null) targets.computeIfAbsent(appName, deaf(HashSet::new)).add(table.name());
      else if (verbosity >= 1) System.err.printf("no such table: %s.%s\n", appName, restriction);
    }
  }

  private static void getUsedTables(List<Statement> statements, Map<String, Set<String>> tables) {
    for (Statement stmt : statements) {
      final SqlNode ast = stmt.original().ast();
      if (ast == null) continue;

      final Set<String> usedTables = tables.computeIfAbsent(stmt.appName(), deaf(HashSet::new));
      final Schema schema = stmt.app().schema("base", true);
      final SqlNodes tableSources = nodeLocator().accept(SimpleSource).gather(ast);
      for (SqlNode tableSource : tableSources) {
        final String tableName = tableSource.$(Simple_Table).$(TableName_Table);
        final Table table = schema.table(tableName);
        if (table != null) usedTables.add(tableName);
      }
    }
  }

  static PopulationConfig mkConfig(String tag) {
    final PopulationConfig config = PopulationConfig.mk();

    if (tag.equals(LARGE) || tag.equals(LARGE_ZIPF)) config.setDefaultUnitCount(1_000_000);
    else config.setDefaultUnitCount(10_000);

    if (tag.equals(ZIPF) || tag.equals(LARGE_ZIPF))
      config.setDefaultRandGen(() -> RandomHelper.makeZipfRand(1.5));
    else config.setDefaultRandGen(RandomHelper::makeUniformRand);

    return config;
  }

  private PopulationConfig mkConfigForApp(String appName, String tag) throws IOException {
    final PopulationConfig config = mkConfig(tag);
    config.setDump(fileDump(appName, tag));
    config.setProgressCallback(progressBar::step);
    return config;
  }

  private boolean populateOne(PopulationConfig config, String appName, String tableName) {
    final SQLPopulator populator = new SQLPopulator();
    populator.setConfig(config);

    final App app = App.of(appName);
    final Schema schema = app.schema("base", true);
    final Table table = schema.table(tableName);

    if (verbosity >= 3) System.out.printf("start %s.%s\n", appName, tableName);

    final long start = System.currentTimeMillis();
    final boolean success = populator.populate(Collection.ofTable(table));
    final long end = System.currentTimeMillis();

    if (success && verbosity >= 3)
      System.out.printf("done %s.%s in %d ms\n", appName, tableName, end - start);

    return success;
  }

  @SuppressWarnings("all")
  private Function<String, PrintWriter> fileDump(String appName, String postfix)
      throws IOException {
    final Path baseDir = dir.resolve(postfix).resolve(appName);
    if (!Files.exists(baseDir)) Files.createDirectories(baseDir);
    return tableName -> runIO(() -> newPrintWriter(baseDir.resolve(tableName + ".csv")));
  }
}
