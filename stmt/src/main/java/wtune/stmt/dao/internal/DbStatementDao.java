package wtune.stmt.dao.internal;

import wtune.stmt.Statement;
import wtune.stmt.dao.StatementDao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DbStatementDao extends DbDao implements StatementDao {
  private static final StatementDao INSTANCE = new DbStatementDao();

  private DbStatementDao() {}

  public static StatementDao instance() {
    return INSTANCE;
  }

  static final String KEY_APP_NAME = "app";
  static final String KEY_STMT_ID = "stmtId";
  static final String KEY_RAW_SQL = "rawSql";
  static final String KEY_STACK_TRACE = "stackTrace";
  private static final String STMTS_TABLE = "wtune_stmts";

  private static final String INSERT =
      "INSERT INTO "
          + STMTS_TABLE
          + " (stmt_app_name, stmt_id, stmt_raw_sql, stmt_trace) "
          + "VALUES (?, ?, ?, ?)";

  private static final String SELECT_ITEMS =
      String.format(
          "stmt_app_name AS %s, stmt_id AS %s, stmt_raw_sql AS %s, stmt_trace AS %s ",
          KEY_APP_NAME, KEY_STMT_ID, KEY_RAW_SQL, KEY_STACK_TRACE);
  private static final String FIND_ALL =
      "SELECT " + SELECT_ITEMS + "FROM " + STMTS_TABLE + " WHERE stmt_app_name <> 'broadleaf_tmp' ";
  private static final String FIND_ONE = FIND_ALL + "AND stmt_app_name = ? AND stmt_id = ?";
  private static final String FIND_BY_APP = FIND_ALL + "AND stmt_app_name = ?";
  private static final String DELETE_ONE =
      "DELETE FROM " + STMTS_TABLE + " WHERE stmt_app_name = ? AND stmt_id = ?";
  private static final String INSERT_DELETED =
      "INSERT INTO wtune_deleted_stmts (stmt_app_name, stmt_id, stmt_raw_sql, cause) "
          + "VALUES (?, ?, ?, ?)";

  private static Statement toStatement(ResultSet rs) throws SQLException {
    return Statement.mk(
        rs.getString(KEY_APP_NAME),
        rs.getInt(KEY_STMT_ID),
        rs.getString(KEY_RAW_SQL),
        rs.getString(KEY_STACK_TRACE));
  }

  @Override
  public Statement findOne(String appName, int stmtId) {
    try {
      final PreparedStatement ps = prepare(FIND_ONE);
      ps.setString(1, appName);
      ps.setInt(2, stmtId);

      final ResultSet rs = ps.executeQuery();

      if (rs.next()) return toStatement(rs);
      else return null;

    } catch (SQLException throwables) {
      throw new RuntimeException(throwables);
    }
  }

  @Override
  public List<Statement> findByApp(String appName) {
    try {
      final PreparedStatement ps = prepare(FIND_BY_APP);
      ps.setString(1, appName);

      final ResultSet rs = ps.executeQuery();

      final List<Statement> stmts = new ArrayList<>(250);
      while (rs.next()) stmts.add(toStatement(rs));

      return stmts;

    } catch (SQLException throwables) {
      throw new RuntimeException(throwables);
    }
  }

  @Override
  public List<Statement> findAll() {
    try {
      final PreparedStatement ps = prepare(FIND_ALL);
      final ResultSet rs = ps.executeQuery();

      final List<Statement> stmts = new ArrayList<>(10000);
      while (rs.next()) stmts.add(toStatement(rs));

      return stmts;

    } catch (SQLException throwables) {
      throw new RuntimeException(throwables);
    }
  }

  @Override
  public void delete(Statement stmt, String cause) {
    try {
      final PreparedStatement delete = prepare(DELETE_ONE);
      final PreparedStatement insert = prepare(INSERT_DELETED);
      insert.setString(1, stmt.appName());
      insert.setInt(2, stmt.stmtId());
      insert.setString(3, stmt.rawSql());
      insert.setString(4, cause);
      insert.executeUpdate();

      delete.setString(1, stmt.appName());
      delete.setInt(2, stmt.stmtId());
      delete.executeUpdate();

    } catch (SQLException throwables) {
      throw new RuntimeException(throwables);
    }
  }

  @Override
  public void save(Statement stmt) {
    if (stmt.stmtId() <= 0) throw new IllegalArgumentException("stmt id not set");

    try {
      final PreparedStatement insert = prepare(INSERT);
      insert.setString(1, stmt.appName());
      insert.setInt(2, stmt.stmtId());
      insert.setString(3, stmt.rawSql());
      insert.setString(4, stmt.stackTrace());
      insert.executeUpdate();

    } catch (SQLException throwables) {
      throw new RuntimeException(throwables);
    }
  }

  @Override
  public void beginBatch() {
    begin();
  }

  @Override
  public void endBatch() {
    commit();
  }
}
