package wtune.stmt;

import wtune.stmt.internal.StmtProfileImpl;

public interface StmtProfile {
  String appName();

  int stmtId();

  String workloadType();

  double p50Improve();

  double p90Improve();

  double p99Improve();

  static StmtProfile mk(String appName,
                        int stmtId,
                        String workloadType,
                        long p50BaseLatency,
                        long p90BaseLatency,
                        long p99BaseLatency,
                        long p50OptLatency,
                        long p90OptLatency,
                        long p99OptLatency) {
    return new StmtProfileImpl(
        appName,
        stmtId,
        workloadType,
        p50BaseLatency,
        p90BaseLatency,
        p99BaseLatency,
        p50OptLatency,
        p90OptLatency,
        p99OptLatency);
  }
}
