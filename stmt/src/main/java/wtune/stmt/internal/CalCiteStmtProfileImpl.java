package wtune.stmt.internal;

import wtune.stmt.CalciteStmtProfile;

public class CalCiteStmtProfileImpl implements CalciteStmtProfile {

  private final String appName;
  private final int stmtId;

  private final Long p50BaseLatency;
  private final Long p90BaseLatency;
  private final Long p99BaseLatency;

  private final Long p50OptLatencyCalcite;
  private final Long p90OptLatencyCalcite;
  private final Long p99OptLatencyCalcite;

  private final Long p50OptLatencyWeTune;
  private final Long p90OptLatencyWeTune;
  private final Long p99OptLatencyWeTune;

  public CalCiteStmtProfileImpl(
      String appName,
      int stmtId,
      Long p50BaseLatency,
      Long p90BaseLatency,
      Long p99BaseLatency,
      Long p50OptLatencyCalcite,
      Long p90OptLatencyCalcite,
      Long p99OptLatencyCalcite,
      Long p50OptLatencyWeTune,
      Long p90OptLatencyWeTune,
      Long p99OptLatencyWeTune) {
    this.appName = appName;
    this.stmtId = stmtId;
    this.p50BaseLatency = p50BaseLatency;
    this.p90BaseLatency = p90BaseLatency;
    this.p99BaseLatency = p99BaseLatency;
    this.p50OptLatencyCalcite = p50OptLatencyCalcite;
    this.p90OptLatencyCalcite = p90OptLatencyCalcite;
    this.p99OptLatencyCalcite = p99OptLatencyCalcite;
    this.p50OptLatencyWeTune = p50OptLatencyWeTune;
    this.p90OptLatencyWeTune = p90OptLatencyWeTune;
    this.p99OptLatencyWeTune = p99OptLatencyWeTune;
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
  public Float p50ImproveCalcite() {
    if (p50OptLatencyCalcite == null) return null;
    return (float) (1.0 - ((float) p50OptLatencyCalcite) / ((float) p50BaseLatency));
  }

  @Override
  public Float p90ImproveCalcite() {
    if (p90OptLatencyCalcite == null) return null;
    return (float) (1.0 - ((float) p90OptLatencyCalcite) / ((float) p90BaseLatency));
  }

  @Override
  public Float p99ImproveCalcite() {
    if (p99OptLatencyCalcite == null) return null;
    return (float) (1.0 - ((float) p99OptLatencyCalcite) / ((float) p99BaseLatency));
  }

  @Override
  public Float p50ImproveWeTune() {
    if (p50OptLatencyWeTune == null) return null;
    return (float) (1.0 - ((float) p50OptLatencyWeTune) / ((float) p50BaseLatency));
  }

  @Override
  public Float p90ImproveWeTune() {
    if (p90OptLatencyWeTune == null) return null;
    return (float) (1.0 - ((float) p90OptLatencyWeTune) / ((float) p90BaseLatency));
  }

  @Override
  public Float p99ImproveWeTune() {
    if (p99OptLatencyWeTune == null) return null;
    return (float) (1.0 - ((float) p99OptLatencyWeTune) / ((float) p99BaseLatency));
  }

}
