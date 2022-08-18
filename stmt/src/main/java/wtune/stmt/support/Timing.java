package wtune.stmt.support;

import wtune.stmt.support.internal.TimingImpl;

import java.util.List;
import java.util.stream.Stream;

public interface Timing {
  String app();

  int stmtId();

  String tag();

  long p50();

  long p90();

  long p99();

  static List<Timing> fromLines(String appName, String tag, Stream<String> lines) {
    return TimingImpl.fromLines(appName, tag, lines);
  }
}
