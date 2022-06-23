package wtune.superopt.runner;

import wtune.common.utils.Args;
import wtune.common.utils.IOSupport;
import wtune.stmt.Statement;
import wtune.stmt.support.OptimizerType;
import wtune.stmt.support.UpdateStmts;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

import static wtune.superopt.runner.RunnerSupport.dataDir;
import static wtune.superopt.runner.RunnerSupport.parseIntSafe;

public class UpdateOptStmts implements Runner {
  private Path optFile;
  private int verbosity;
  private String optimizedBy;
  private boolean calcite;

  @Override
  public void prepare(String[] argStrings) throws Exception {
    final Args args = Args.parse(argStrings, 1);

    verbosity = args.getOptional("v", "verbose", int.class, 0);
    optimizedBy = args.getOptional("opt", "optimizer", String.class, "WeTune");
    calcite = args.getOptional("calcite", boolean.class, false);

    final Path dataDir = dataDir();
    final Path dir = dataDir.resolve(args.getOptional("D", "dir", String.class, "rewrite/result"));
    optFile = dir.resolve(args.getOptional("i", "in", String.class, "2_query.tsv"));
    IOSupport.checkFileExists(optFile);
  }

  @Override
  public void run() throws Exception {
    final List<String> lines = Files.readAllLines(optFile);
    final OptimizerType optimizerType = OptimizerType.valueOf(optimizedBy);

    if (calcite) UpdateStmts.cleanCalciteOptStmts();
    else UpdateStmts.cleanOptStmts(optimizerType);

    for (int i = 0, bound = lines.size(); i < bound; i++) {
      final String line = lines.get(i);
      final String[] fields = line.split("\t", 4);
      if (fields.length != 4) {
        if (verbosity >= 1) System.err.println("malformed line " + i + " " + line);
        continue;
      }
      final String app = fields[0];
      final int stmtId = parseIntSafe(fields[1], -1);
      final String rawSql = fields[2], trace = fields[3];
      if (app.isEmpty() || stmtId <= 0) {
        if (verbosity >= 1) System.err.println("malformed line " + i + " " + line);
        continue;
      }
      if (calcite)
        UpdateStmts.updateCalciteOptStmts(Statement.mkCalcite(app, stmtId, rawSql, trace));
      else UpdateStmts.updateOptStmts(Statement.mk(app, stmtId, rawSql, trace), optimizerType);
    }
  }
}
