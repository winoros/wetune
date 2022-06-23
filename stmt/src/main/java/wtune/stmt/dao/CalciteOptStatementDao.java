package wtune.stmt.dao;

import wtune.stmt.Statement;
import wtune.stmt.dao.internal.CalciteDbOptStatementDao;

import java.util.List;

public interface CalciteOptStatementDao {
  Statement findOne(String appName, int stmtId);

  List<Statement> findByApp(String appName);

  List<Statement> findAll();

  void cleanOptStmts();

  void updateOptStmts(Statement stmt);

  static CalciteOptStatementDao instance() {
    return CalciteDbOptStatementDao.instance();
  }
}
