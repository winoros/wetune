package wtune.stmt;

import wtune.sql.ast.SqlNode;
import wtune.stmt.internal.CalciteStatementImpl;
import wtune.stmt.internal.StatementImpl;
import wtune.stmt.support.OptimizerType;
import wtune.stmt.dao.CalciteOptStatementDao;
import wtune.stmt.dao.CalciteStatementDao;
import wtune.stmt.dao.OptStatementDao;
import wtune.stmt.dao.StatementDao;

import java.util.List;

public interface Statement {
  String appName();

  int stmtId();

  String rawSql();

  String stackTrace();

  boolean isRewritten();

  OptimizerType optimizerType();

  SqlNode ast();

  void setStmtId(int stmtId);

  void setRewritten(boolean rewritten);

  void setOptimizerType(OptimizerType type);

  Statement rewritten();

  Statement rewritten(OptimizerType type);

  Statement original();

  default App app() {
    return App.of(appName());
  }

  static Statement mk(String appName, String rawSql, String stackTrace) {
    return StatementImpl.build(appName, rawSql, stackTrace);
  }

  static Statement mk(String appName, int stmtId, String rawSql, String stackTrace) {
    return StatementImpl.build(appName, stmtId, rawSql, stackTrace);
  }

  static Statement mkCalcite(String appName, String rawSql, String stackTrace) {
    return CalciteStatementImpl.build(appName, rawSql, stackTrace);
  }

  static Statement mkCalcite(String appName, int stmtId, String rawSql, String stackTrace) {
    return CalciteStatementImpl.build(appName, stmtId, rawSql, stackTrace);
  }

  // Find original statement(s)
  static Statement findOne(String appName, int stmtId) {
    return StatementDao.instance().findOne(appName, stmtId);
  }

  static List<Statement> findByApp(String appName) {
    return StatementDao.instance().findByApp(appName);
  }

  static List<Statement> findAll() {
    return StatementDao.instance().findAll();
  }

  // Find optimized statement(s)
  static Statement findOneRewritten(String appName, int stmtId) {
    return findOneRewritten(appName, stmtId, OptimizerType.WeTune);
  }
  static Statement findOneRewritten(String appName, int stmtId, OptimizerType type) {
    return OptStatementDao.instance(type).findOne(appName, stmtId);
  }

  static List<Statement> findRewrittenByApp(String appName) {
    return findRewrittenByApp(appName, OptimizerType.WeTune);
  }
  static List<Statement> findRewrittenByApp(String appName, OptimizerType type) {
    return OptStatementDao.instance(type).findByApp(appName);
  }

  static List<Statement> findAllRewritten() {
    return findAllRewritten(OptimizerType.WeTune);
  }
  static List<Statement> findAllRewritten(OptimizerType type) {
    return OptStatementDao.instance(type).findAll();
  }

  // Calcite statements
  static Statement findOneCalcite(String appName, int stmtId) {
    return CalciteStatementDao.instance().findOne(appName, stmtId);
  }

  static List<Statement> findAllCalcite() {
    return CalciteStatementDao.instance().findAll();
  }

  static Statement findOneRewrittenCalcite(String appName, int stmtId) {
    return CalciteOptStatementDao.instance().findOne(appName, stmtId);
  }

  static List<Statement> findAllRewrittenCalcite() {
    return CalciteOptStatementDao.instance().findAll();
  }
}
