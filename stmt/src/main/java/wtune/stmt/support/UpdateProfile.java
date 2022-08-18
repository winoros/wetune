package wtune.stmt.support;

import wtune.stmt.CalciteStmtProfile;
import wtune.stmt.StmtProfile;
import wtune.stmt.dao.CalciteStatementDao;
import wtune.stmt.dao.OptStatementDao;

public interface UpdateProfile {
  static void cleanCalcite() {
    CalciteStatementDao.instance().cleanProfileData();
  }

  static void updateCalciteProfile(CalciteStmtProfile stmtProfile) {
    CalciteStatementDao.instance().updateProfile(stmtProfile);
  }

  static void updateProfile(StmtProfile stmtProfile, OptimizerType type) {
    OptStatementDao.instance(type).updateStmtProfile(stmtProfile);
  }
}
