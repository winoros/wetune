package wtune.stmt.internal;

import wtune.stmt.StmtProfile;

public class StmtProfileImpl implements StmtProfile {
  private final String appName;
  private final int stmtId;
  private final String workloadType;

  private final long p50BaseLatency;
  private final long p90BaseLatency;
  private final long p99BaseLatency;

  private final long p50OptLatency;
  private final long p90OptLatency;
  private final long p99OptLatency;

  public StmtProfileImpl(
      String appName,
      int stmtId,
      String workloadType,
      long p50BaseLatency,
      long p90BaseLatency,
      long p99BaseLatency,
      long p50OptLatency,
      long p90OptLatency,
      long p99OptLatency) {
    this.appName = appName;
    this.stmtId = stmtId;
    this.workloadType = workloadType;
    this.p50BaseLatency = p50BaseLatency;
    this.p90BaseLatency = p90BaseLatency;
    this.p99BaseLatency = p99BaseLatency;
    this.p50OptLatency = p50OptLatency;
    this.p90OptLatency = p90OptLatency;
    this.p99OptLatency = p99OptLatency;
  }

  @Override
  public String appName() {
    return appName;
  }

  @Override
  public int stmtId() {
    return stmtId;
  }

  @Override
  public String workloadType() {
    return workloadType;
  }

  @Override
  public double p50Improve() {
    return 1.0 - ((double) p50OptLatency) / ((double) p50BaseLatency);
  }

  @Override
  public double p90Improve() {
    return 1.0 - ((double) p90OptLatency) / ((double) p90BaseLatency);
  }

  @Override
  public double p99Improve() {
    return 1.0 - ((double) p99OptLatency) / ((double) p99BaseLatency);
  }
}
