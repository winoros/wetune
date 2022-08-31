package wtune.stmt.rawlog;

import java.io.IOException;
import java.nio.file.Path;
import java.util.Iterator;

import static wtune.common.io.FileUtils.dataFile;

public class RawLog implements Iterable<RawStmt>, AutoCloseable {
  private final RawStmtLog stmts;
  private RawTraceLog traces;

  private final Iterator<RawStmt> stmtIter;
  private Iterator<StackTrace> traceIter;

  private RawStmt next;

  private RawLog(RawStmtLog stmts, RawTraceLog traces) {
    this.stmts = stmts;
    this.traces = traces;
    this.stmtIter = stmts.iterator();
    this.traceIter = traces != null ? traces.iterator() : null;
    forward();
  }

  public static RawLog open(String appName, Path logPath, Path tracePath) throws IOException {
    logPath = logPath != null ? logPath : dataFile("logs", appName, "stmts.log");
    tracePath = tracePath != null ? tracePath : dataFile("logs", appName, "traces.log");

    final RawStmtLog logs = RawStmtLog.open(logPath);
    final RawTraceLog traces;
    if (tracePath.toFile().exists()) traces = RawTraceLog.open(tracePath);
    else traces = null;

    return new RawLog(logs, traces);
  }

  public RawLog skip(int count) {
    stmts.skip(count);
    if (traces != null) traces.skip(count);
    return this;
  }

  public RawLog withoutTrace() {
    traces = null;
    traceIter = null;
    return this;
  }

  private void forward() {
    if (!stmtIter.hasNext()) return;
    next = stmtIter.next();
    if (traceIter != null) next.setStackTrace(traceIter.next());
  }

  @Override
  public Iterator<RawStmt> iterator() {
    return new Itr();
  }

  @Override
  public void close() {
    stmts.close();
    if (traces != null) traces.close();
  }

  private class Itr implements Iterator<RawStmt> {

    @Override
    public boolean hasNext() {
      return next != null;
    }

    @Override
    public RawStmt next() {
      final RawStmt ret = next;
      forward();
      return ret;
    }
  }
}
