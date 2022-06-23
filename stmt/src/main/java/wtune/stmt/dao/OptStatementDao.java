package wtune.stmt.dao;

import wtune.stmt.Statement;
import wtune.stmt.StmtProfile;
import wtune.stmt.dao.internal.DbOptStatementDao;
import wtune.stmt.support.OptimizerType;

import java.util.List;

public interface OptStatementDao {
  Statement findOne(String appName, int stmtId);

  List<Statement> findByApp(String appName);

  List<Statement> findAll();

  void cleanOptStmts();

  void updateOptStmts(Statement stmt);

  void updateStmtProfile(StmtProfile stmtProfile);

  static OptStatementDao instance(OptimizerType type) {
    return DbOptStatementDao.instance(type);
  }
}
