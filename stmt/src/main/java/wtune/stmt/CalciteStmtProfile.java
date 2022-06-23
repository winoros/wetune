package wtune.stmt;

import wtune.stmt.internal.CalCiteStmtProfileImpl;

public interface CalciteStmtProfile {
  String appName();

  int stmtId();

  Float p50ImproveCalcite();

  Float p90ImproveCalcite();

  Float p99ImproveCalcite();

  Float p50ImproveWeTune();

  Float p90ImproveWeTune();

  Float p99ImproveWeTune();

  static CalciteStmtProfile mk(
      String appName,
      int stmtId,
      Long p50Base,
      Long p90Base,
      Long p99Base,
      Long p50OptCalcite,
      Long p90OptCalcite,
      Long p99OptCalcite,
      Long p50OptWeTune,
      Long p90OptWeTune,
      Long p99OptWeTune) {
    return new CalCiteStmtProfileImpl(
        appName,
        stmtId,
        p50Base,
        p90Base,
        p99Base,
        p50OptCalcite,
        p90OptCalcite,
        p99OptCalcite,
        p50OptWeTune,
        p90OptWeTune,
        p99OptWeTune);
  }
}
