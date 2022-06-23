package wtune.testbed.runner;

import me.tongfei.progressbar.ProgressBar;
import org.apache.commons.lang3.exception.ExceptionUtils;
import wtune.common.datasource.DbSupport;
import wtune.common.utils.Args;
import wtune.common.utils.IOSupport;
import wtune.stmt.App;
import wtune.stmt.Statement;
import wtune.stmt.support.OptimizerType;
import wtune.testbed.population.Generators;
import wtune.testbed.population.PopulationConfig;
import wtune.testbed.profile.ProfileConfig;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.function.Function;
import java.util.stream.Stream;

import static java.lang.System.Logger.Level.WARNING;
import static java.util.Arrays.asList;
import static wtune.testbed.profile.ProfileSupport.dryRunStmt;

public class CalciteDryRunToRewrite implements Runner {
  public static final System.Logger LOG = System.getLogger("calcite");

  private static final String CALCITE_REWRITE_DIR = "rewrite_calcite";
  private static final Path CALCITE_REWRITE_LOG_FILE_PATH =
      Runner.dataDir().resolve(CALCITE_REWRITE_DIR).resolve("rewrite_log.tsv");
  private static final Path CALCITE_REWRITE_ERR_FILE_PATH =
      Runner.dataDir().resolve(CALCITE_REWRITE_DIR).resolve("err.txt");

  private String tag;
  private String optimizedBy;
  private Set<String> stmts;

  //private Path currRewriteFile;
  private boolean collectRewritten;
  private Path prevOutFile;
  private Path outFile;

  static {
    try {
      Files.deleteIfExists(CALCITE_REWRITE_LOG_FILE_PATH);
      Files.deleteIfExists(CALCITE_REWRITE_ERR_FILE_PATH);
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  @Override
  public void prepare(String[] argStrings) throws Exception {
    final Args args = Args.parse(argStrings, 1);
    tag = args.getOptional("tag", String.class, GenerateTableData.BASE);
    optimizedBy = args.getOptional("opt", "optimizer", String.class, "WeTune_Raw");

    final String targetStmts = args.getOptional("stmt", String.class, null);
    if (targetStmts != null) stmts = new HashSet<>(asList(targetStmts.split(",")));

    // Collect rewrite queries in log file
    collectRewritten = args.getOptional("collect", boolean.class, false);
    if (collectRewritten) {
      final String time = LocalDateTime.now().format(DateTimeFormatter.ofPattern("MMddHHmmss"));
      final String outFileName = "result." + time + ".tsv";
      final Path parentDir = Runner.dataDir().resolve(CALCITE_REWRITE_DIR);

      outFile = parentDir.resolve(outFileName);

      final Stream<Path> stream = Files.list(parentDir);
      final List<String> resultFiles = stream
              .filter(file -> !Files.isDirectory(file))
              .map(Path::getFileName)
              .map(Path::toString)
              .filter(str -> str.startsWith("result")).sorted().toList();

      if (!resultFiles.isEmpty()) {
        prevOutFile = parentDir.resolve(resultFiles.get(resultFiles.size() - 1));
        IOSupport.checkFileExists(prevOutFile);
      }

      if (!Files.exists(outFile)) {
        Files.createDirectories(outFile.getParent());
        Files.createFile(outFile);
      }
    }
  }

  @Override
  public void run() throws Exception {
    Class.forName("net.sf.log4jdbc.DriverSpy");

    final List<String> failures = new ArrayList<>();

    final List<Statement> stmtPool = getStmtPool();
    try (final ProgressBar pb = new ProgressBar("CalciteDryRun", stmtPool.size())) {
      for (Statement stmt : stmtPool) {
        if (stmts != null && !stmts.contains(stmt.toString())) continue;

        IOSupport.appendTo(
            CALCITE_REWRITE_LOG_FILE_PATH,
            writer -> writer.printf("=====%s\n".formatted(stmt.toString())));

        if (!runOne(stmt.original())) {
          failures.add(stmt.toString());
        }
        pb.step();
      }
    }
    LOG.log(WARNING, "failed to run {0}", failures);

    if (collectRewritten) collectFromLog();

  }

  private List<Statement> getStmtPool() {
    final OptimizerType type = OptimizerType.valueOf(optimizedBy);
    return Statement.findAllRewritten(type);
  }

  private boolean runOne(Statement original) {
    final PopulationConfig popConfig = GenerateTableData.mkConfig(tag);
    final ProfileConfig config = ProfileConfig.mk(Generators.make(popConfig));
    config.setDryRun(false);
    config.setUseSqlServer(false);
    config.setCalciteConn(true);
    config.setDbProperties(getCalciteWrappedDbProps(original.app()));
    config.setParamSaveFile(getParamSaveFile());
    config.setWarmupCycles(10);
    config.setProfileCycles(100);

    try {
      return dryRunStmt(original, config);
    } catch (Exception e) {
      IOSupport.appendTo(
          CALCITE_REWRITE_ERR_FILE_PATH,
          writer ->
              writer.printf(
                  "%s\n%s\n".formatted(original.toString(), ExceptionUtils.getStackTrace(e))));
      // e.printStackTrace();
      return false;
    }
  }

  private Properties getCalciteWrappedDbProps(App app) {
    final String dbName = app.name() + "_" + tag;
    return DbSupport.dbPropsCalciteWrap(app.dbType(), dbName);
  }

  private Function<Statement, String> getParamSaveFile() {
    return stmt ->
        stmt.isRewritten()
            ? "wtune_data/params/%s_%s_%s_%s".formatted(stmt, "opt", stmt.optimizerType(), tag)
            : "wtune_data/params/%s_%s_%s".formatted(stmt, "base", tag);
  }

  private void collectFromLog() throws IOException {
    // Get existing rewritten sqls
    final StatementBank stmtBank = new StatementBank();
    if (prevOutFile != null) {
      final List<String> prevLines = Files.readAllLines(prevOutFile);
      for (String line : prevLines) {
        final String[] fields = line.split("\t");
        if (fields.length == 3) {
          final String appName = fields[0], stmtId = fields[1], sql = fields[2];
          stmtBank.insert(appName, stmtId, sql);
        } else {
          final String appName = fields[0], stmtId = fields[1];
          stmtBank.insert(appName, stmtId);
        }
      }
    }
    // Read new rewritten sqls from input file
    final List<String> inputLines = Files.readAllLines(CALCITE_REWRITE_LOG_FILE_PATH);
    for (int i = 0, bound = inputLines.size(); i < bound;) {
      String line = inputLines.get(i);
      assert line.startsWith("=====");
      final String[] fields = line.substring(line.lastIndexOf("=") + 1).split("-");
      final String appName = fields[0], stmtId = fields[1];

      // Get lines of this sql block
      final List<String> linesOfSql = new ArrayList<>();
      if (++i < bound) {
        line = inputLines.get(i);
        while (!line.startsWith("=====")) {
          linesOfSql.add(line);
          if (++i >= bound) break;
          line = inputLines.get(i);
        }
      }
      if (linesOfSql.isEmpty()) {
        stmtBank.insert(appName, stmtId);
        continue;
      }

      // Analyze the content of this block
      int idx = 0;
      List<String> sqls = new ArrayList<>();
      while (idx < linesOfSql.size()) {
        StringBuilder stringBuilder = new StringBuilder();
        while(idx < linesOfSql.size() && !linesOfSql.get(idx).isEmpty()) {
          stringBuilder.append(linesOfSql.get(idx));
          idx++;
        }
        sqls.add(stringBuilder.toString());
        idx++;
      }
      sqls = sqls
              .stream()
              .filter(sql -> !sql.contains("java.sql"))
              .filter(sql -> !(sql.contains("PreparedStatement.execute()") || sql.contains("Statement.execute()")))
              .filter(sql -> !sql.contains("current_database()"))
              .toList();
      if (sqls.isEmpty()) {
        stmtBank.insert(appName, stmtId);
      } else {
        final String finalSql = String.join("|", sqls);
        stmtBank.insert(appName, stmtId, finalSql);
      }
    }

    // Store all rewritten sqls to output file
    stmtBank.writeToFile(outFile);
  }

  static class StatementBank {
    private final List<LogStatement> stmts;

    public StatementBank() {
      this.stmts = new ArrayList<>();
    }

    public void insert(String appName, String stmtId) {
      for (LogStatement statement : stmts) {
        if (statement.appName.equals(appName) && statement.stmtId.equals(stmtId)) {
          return;
        }
      }
      stmts.add(new LogStatement(appName, stmtId));
    }

    public void insert(String appName, String stmtId, String sql) {
      assert sql != null;
      for (LogStatement statement : stmts) {
        if (statement.appName.equals(appName) && statement.stmtId.equals(stmtId)) {
          statement.sql = sql;
          return;
        }
      }
      stmts.add(new LogStatement(appName, stmtId, sql));
    }

    public void writeToFile(Path out) {
      int rewriteNum = 0;
      for (LogStatement statement : stmts) {
        if (statement.sql != null ) rewriteNum++;
        IOSupport.appendTo(out,
                writer -> writer.println(statement.toString()));
      }
      System.out.println("current rewrite " + rewriteNum + " sqls.");
    }
  }

  static class LogStatement {
    private final String appName;
    private final String stmtId;
    private String sql;

    public LogStatement(String appName, String stmtId, String sql) {
      this.appName = appName;
      this.stmtId = stmtId;
      this.sql = sql;
    }

    public LogStatement(String appName, String stmtId) {
      this(appName, stmtId, null);
    }

    @Override
    public String toString() {
      if (sql == null) return String.format("%s\t%s\t", appName, stmtId);
      return String.join("\t", appName, stmtId, sql);
    }
  }
}
