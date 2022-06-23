package wtune.stmt.dao;

import wtune.stmt.Statement;
import wtune.stmt.dao.internal.DbStatementDao;

import java.util.List;

public interface StatementDao {
  void beginBatch();

  void endBatch();

  Statement findOne(String appName, int stmtId);

  List<Statement> findByApp(String appName);

  List<Statement> findAll();

  void delete(Statement stmt, String cause);

  void save(Statement stmt);

  static StatementDao instance() {
    return DbStatementDao.instance();
  }
}
