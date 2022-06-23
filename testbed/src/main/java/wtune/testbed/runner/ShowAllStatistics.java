package wtune.testbed.runner;

import wtune.common.utils.Args;
import wtune.common.utils.IOSupport;
import wtune.stmt.Statement;
import wtune.stmt.support.OptimizerType;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

import static wtune.testbed.runner.GenerateTableData.*;

public class ShowAllStatistics implements Runner {
  // Input
  private Path rewriteTraceFile;
  private Path profileDir;

  // Output
  private Path outRulesFile;
  private Path outStatistic;

  private OptimizerType optimizer;
  private boolean calcite;

  @Override
  public void prepare(String[] argStrings) throws Exception {
    final Args args = Args.parse(argStrings, 1);

    final Path dataDir = Runner.dataDir();
    final Path rewriteDir =
        dataDir.resolve(args.getOptional("rewriteDir", String.class, "rewrite/result"));
    rewriteTraceFile =
        rewriteDir.resolve(args.getOptional("traceFile", String.class, "2_trace.tsv"));
    profileDir = dataDir.resolve(args.getOptional("profileDir", String.class, "profile/result"));

    IOSupport.checkFileExists(rewriteTraceFile);
    IOSupport.checkFileExists(profileDir);

    final String subDirName = LocalDateTime.now().format(DateTimeFormatter.ofPattern("MMddHHmmss"));
    final String outDir = args.getOptional("out", "O", String.class, "viewall");
    final Path dir = dataDir.resolve(outDir).resolve("view" + subDirName);

    if (!Files.exists(dir)) Files.createDirectories(dir);

    outRulesFile = dir.resolve("rules.tsv");
    outStatistic = dir.resolve("statistic.tsv");

    optimizer = OptimizerType.valueOf(args.getOptional("opt", "optimizer", String.class, "WeTune"));
    calcite = args.getOptional("calcite", boolean.class, false);
  }

  @Override
  public void run() throws Exception {
    collectRules();

    if (calcite) collectStatisticCalcite();
    else collectStatistic();
  }

  private void collectRules() throws IOException {
    final List<String> traceLines = Files.readAllLines(rewriteTraceFile);
    Set<String> ruleSet = new HashSet<>();
    for (int i = 0, bound = traceLines.size(); i < bound; ++i) {
      String[] fields = traceLines.get(i).split("\t", 4);
      if (fields.length != 4) {
        continue;
      }
      String[] traces = fields[3].split(",");
      ruleSet.addAll(Arrays.asList(traces));
    }
    List<String> ruleList = new ArrayList<>(ruleSet);
    Collections.sort(ruleList);
    for (String ruleId : ruleList) {
      IOSupport.appendTo(outRulesFile, writer -> writer.printf("%s\n", ruleId));
    }
  }

  private void collectStatistic() throws IOException {
    Map<String, StatementStatistic> statementStatMap = new HashMap<>();
    Map<String, Boolean> workloadExist =
        new HashMap<>(Map.of(BASE, false, ZIPF, false, LARGE, false, LARGE_ZIPF, false));

    for (String tag : List.of(BASE, ZIPF, LARGE, LARGE_ZIPF)) {
      final Path profileFile = profileDir.resolve(tag);
      if (!Files.exists(profileFile)) continue;

      workloadExist.put(tag, true);
      final List<String> lines = Files.readAllLines(profileFile);
      for (int i = 0, bound = lines.size(); i < bound; i += 2) {
        final String[] fieldsBase = lines.get(i).split(";");
        final String[] fieldsOpt = lines.get(i + 1).split(";");

        final String appName = fieldsBase[0];
        final int stmtId = Integer.parseInt(fieldsBase[1]);
        final int baseLatency = Integer.parseInt(fieldsBase[3]);
        final int optLatency = Integer.parseInt(fieldsOpt[3]);
        final double p50Improvement = 1.0 - ((double) optLatency) / ((double) baseLatency);

        final StatementStatistic stat = statementStatMap.computeIfAbsent(
            "%s-%d".formatted(appName, stmtId),
            s -> new StatementStatistic(s.split("-")[0], Integer.parseInt(s.split("-")[1])));
        stat.updateProfile(p50Improvement, tag);
      }
    }

    // Write header
    final StringBuilder sb = new StringBuilder(
        String.format("%s\t%s\t%s\t%s\t%s", "appName", "stmtId", "rawSql", "optSql", "usedRules"));
    if (workloadExist.get(BASE)) sb.append("\t%s".formatted("baseImprove"));
    if (workloadExist.get(ZIPF))sb.append("\t%s".formatted("zipfImprove"));
    if (workloadExist.get(LARGE)) sb.append("\t%s".formatted("largeImprove"));
    if (workloadExist.get(LARGE_ZIPF)) sb.append("\t%s".formatted("large_zipfImprove"));
    IOSupport.appendTo(outStatistic, writer -> writer.printf("%s\n", sb.toString()));

    // Write data
    List<String> stmtStatKeyList = new ArrayList<>(statementStatMap.keySet());
    Collections.sort(stmtStatKeyList);
    for (String stmtKey : stmtStatKeyList) {
      final StatementStatistic statistic = statementStatMap.get(stmtKey);
      IOSupport.appendTo(
          outStatistic,
          writer -> writer.printf("%s\n",
              statistic.toString(
                  workloadExist.get(BASE),
                  workloadExist.get(ZIPF),
                  workloadExist.get(LARGE),
                  workloadExist.get(LARGE_ZIPF)
              )
          )
      );
    }
  }

  private void collectStatisticCalcite() throws IOException {
    Map<String, CalciteStatementStatistic> statementStatMap = new HashMap<>();

    final Path profileFile = profileDir.resolve("base");
    if (!Files.exists(profileFile)) {
      System.out.println("Have not profile base workload of Calcite cases.");
      return;
    }

    final List<String> lines = Files.readAllLines(profileFile);
    for (int i = 0, bound = lines.size(); i < bound; i += 2) {
      final String[] fieldsBase = lines.get(i).split(";");
      final String[] fieldsCalciteOpt = lines.get(i + 1).split(";");
      if (i + 3 >= bound) break;
      final String[] fieldsWeTuneOpt = lines.get(i + 3).split(";");

      final String appName = fieldsBase[0];
      final int stmtId = Integer.parseInt(fieldsBase[1]);
      final String probeAppName = fieldsWeTuneOpt[0];
      final int probeStmtId = Integer.parseInt(fieldsWeTuneOpt[1]);
      if (! (appName.equals(probeAppName) && stmtId == probeStmtId)) {
        continue;
      }

      final int baseLatency = Integer.parseInt(fieldsBase[3]);
      final int calciteOptLatency = Integer.parseInt(fieldsCalciteOpt[3]);
      final int weTuneOptLatency = Integer.parseInt(fieldsWeTuneOpt[3]);
      final double calciteP50Improvement =
          1.0 - ((double) calciteOptLatency) / ((double) baseLatency);
      final double weTuneP50Improvement =
          1.0 - ((double) weTuneOptLatency) / ((double) baseLatency);

      final CalciteStatementStatistic stat =  statementStatMap.computeIfAbsent(
          "%s-%d".formatted(appName, stmtId),
          s -> new CalciteStatementStatistic(s.split("-")[0], Integer.parseInt(s.split("-")[1])));
      stat.updateCalciteImprove(calciteP50Improvement);
      stat.updateWeTuneImprove(weTuneP50Improvement);

      i += 2;
    }

    // Write header
    final String header =
        String.format("%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s",
            "appName", "stmtId",
            "rawSql", "calciteOptSql", "optSql", "usedRules",
            "calciteImprove", "weTuneImprove");
    IOSupport.appendTo(outStatistic, writer -> writer.printf("%s\n", header));

    // Write data
    List<String> stmtStatKeyList = new ArrayList<>(statementStatMap.keySet());
    Collections.sort(stmtStatKeyList);
    for (String stmtKey : stmtStatKeyList) {
      final CalciteStatementStatistic statistic = statementStatMap.get(stmtKey);
      IOSupport.appendTo(
          outStatistic, writer -> writer.printf("%s\n", statistic.toString())
      );
    }
  }

  private class StatementStatistic {
    private final Statement stmt;
    private Double baseImprove;
    private Double zipfImprove;
    private Double largeImprove;
    private Double large_zipfImprove;

    public StatementStatistic(String appName, int stmtId) {
      this.stmt = Statement.findOne(appName, stmtId);
    }

    public void updateProfile(double val, String workloadType) {
      switch (workloadType) {
        case BASE -> baseImprove = val;
        case ZIPF -> zipfImprove = val;
        case LARGE -> largeImprove = val;
        case LARGE_ZIPF -> large_zipfImprove = val;
      }
    }

    public String toString(boolean base, boolean zipf, boolean large, boolean largeZipf) {
      final StringBuilder sb = new StringBuilder(this.toString());
      if (base) sb.append("\t%s".formatted(baseImprove));
      if (zipf) sb.append("\t%s".formatted(zipfImprove));
      if (large) sb.append("\t%s".formatted(largeImprove));
      if (largeZipf) sb.append("\t%s".formatted(large_zipfImprove));

      return sb.toString();
    }

    @Override
    public String toString() {
      return String.format("%s\t%d\t%s\t%s\t%s",
          stmt.appName(),
          stmt.stmtId(),
          stmt.original().rawSql(),
          stmt.rewritten(optimizer).rawSql(),
          stmt.rewritten(optimizer).stackTrace());
    }
  }

  private class CalciteStatementStatistic {
    private final Statement stmt;
    // Only record base workload.
    private Double weTuneImprove;
    private Double calciteImprove;

    public CalciteStatementStatistic(String appName, int stmtId) {
      this.stmt = Statement.findOneCalcite(appName, stmtId);
    }

    public void updateWeTuneImprove(double val) {
      this.weTuneImprove = val;
    }

    public void updateCalciteImprove(double val) {
      this.calciteImprove = val;
    }

    @Override
    public String toString() {
      return String.format("%s\t%d\t%s\t%s\t%s\t%s\t%s\t%s",
          stmt.appName(),
          stmt.stmtId(),
          stmt.original().rawSql(),
          stmt.rewritten(OptimizerType.Calcite).rawSql(),
          stmt.rewritten(optimizer).rawSql(),
          stmt.rewritten(optimizer).stackTrace(),
          calciteImprove,
          weTuneImprove);
    }
  }
}
