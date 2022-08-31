package wtune.stmt.support.internal;

import wtune.stmt.support.Timing;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static wtune.common.io.FileUtils.CSV_SEP;

public record TimingImpl(String app, int stmtId, String tag, long p50, long p90, long p99)
    implements Timing {
  public static List<Timing> fromLines(String appName, String tag, Stream<String> lines) {
    return lines.map(it -> fromLine(appName, tag, it)).collect(Collectors.toList());
  }

  private static Timing fromLine(String appName, String tag, String line) {
    final String[] fields = line.split(CSV_SEP);
    final int stmtId = Integer.parseInt(fields[0]);
    final long p50 = Long.parseLong(fields[1]);
    final long p90 = Long.parseLong(fields[2]);
    final long p99 = Long.parseLong(fields[3]);
    return new TimingImpl(appName, stmtId, tag, p50, p90, p99);
  }
}
