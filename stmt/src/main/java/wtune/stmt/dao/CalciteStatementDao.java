package wtune.stmt.dao;

import wtune.stmt.CalciteStmtProfile;
import wtune.stmt.Statement;
import wtune.stmt.dao.internal.CalciteDbStatementDao;

import java.util.List;

public interface CalciteStatementDao {
  Statement findOne(String appName, int stmtId);

  Statement findOneCalciteVersion(String appName, int stmtId);

  List<Statement> findByApp(String appName);

  List<Statement> findAll();

  void cleanProfileData();

  void updateProfile(CalciteStmtProfile stmtProfile);

  static CalciteStatementDao instance() {
    return CalciteDbStatementDao.instance();
  }
}
