package wtune.stmt.dao.internal;

import wtune.stmt.Statement;
import wtune.stmt.StmtProfile;
import wtune.stmt.dao.OptStatementDao;
import wtune.stmt.support.OptimizerType;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

public class DbOptStatementDao extends DbDao implements OptStatementDao {

  public static OptStatementDao instance(OptimizerType kind) {
    return new DbOptStatementDao(kind);
  }

  static final String KEY_APP_NAME = "app";
  static final String KEY_STMT_ID = "stmtId";
  static final String KEY_RAW_SQL = "rawSql";
  static final String KEY_TRACE = "trace";

  private static final String SELECT_ITEMS =
      String.format(
          "opt_app_name AS %s, opt_stmt_id AS %s, opt_raw_sql AS %s, trace AS %s ",
          KEY_APP_NAME, KEY_STMT_ID, KEY_RAW_SQL, KEY_TRACE);

  private String OPT_STMTS_TABLE;
  private String FIND_ALL;
  private String FIND_ONE;
  private String FIND_BY_APP;

  // Update optimized stmts query
  private String CLEAN_OPT_STMT;
  private String ADD_OPT_STMTS;
  private String UPDATE_PROFILE_TEMPLATE;

  private OptimizerType optimizerType;

  private DbOptStatementDao(OptimizerType kind) {
    this.optimizerType = kind;
    switch (kind) {
      case WeTune_Raw -> OPT_STMTS_TABLE = "wtune_opt_stmts";
      case WeTune -> OPT_STMTS_TABLE = "wtune_opt_stmts_wtune";
      case SPES -> OPT_STMTS_TABLE = "wtune_opt_stmts_spes";
      case Merge -> OPT_STMTS_TABLE = "wtune_opt_stmts_wtune_spes";
      case Calcite -> OPT_STMTS_TABLE = "wtune_opt_stmts_calcite";
    }
    initQueryTemplates();
  }

  private void initQueryTemplates() {
    FIND_ALL = "SELECT " + SELECT_ITEMS + "FROM " + OPT_STMTS_TABLE + " ";
    FIND_ONE = FIND_ALL + "WHERE opt_app_name = ? AND opt_stmt_id = ?";
    FIND_BY_APP = FIND_ALL + "WHERE opt_app_name = ?";
    CLEAN_OPT_STMT = "DELETE FROM " + OPT_STMTS_TABLE + " WHERE TRUE";
    ADD_OPT_STMTS = "INSERT INTO " + OPT_STMTS_TABLE + " VALUES (?, ?, ?, ?, null, null, null, null)";
    UPDATE_PROFILE_TEMPLATE =
        "UPDATE " + OPT_STMTS_TABLE +
        " SET %s_improve = ? WHERE opt_app_name = ? AND opt_stmt_id = ?";
  }

  private Statement toStatement(ResultSet rs) throws SQLException {
    final Statement stmt =
        Statement.mk(
            rs.getString(KEY_APP_NAME), rs.getInt(KEY_STMT_ID), rs.getString(KEY_RAW_SQL), rs.getString(KEY_TRACE));
    stmt.setRewritten(true);
    stmt.setOptimizerType(optimizerType);
    return stmt;
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
  public void cleanOptStmts() {
    try {
      final PreparedStatement clean0 = prepare(CLEAN_OPT_STMT);
      clean0.executeUpdate();
    } catch (SQLException throwables) {
      throw new RuntimeException(throwables);
    }
  }

  @Override
  public void updateOptStmts(Statement stmt) {
    try {
      final PreparedStatement insert0 = prepare(ADD_OPT_STMTS);

      insert0.setString(1, stmt.appName());
      insert0.setInt(2, stmt.stmtId());

      insert0.setString(3, stmt.rawSql());
      if (stmt.stackTrace() == null)
        insert0.setNull(4, Types.VARCHAR);
      else
        insert0.setString(4, stmt.stackTrace());

      insert0.executeUpdate();
    } catch (SQLException throwables) {
      throw new RuntimeException(throwables);
    }
  }

  @Override
  public void updateStmtProfile(StmtProfile stmtProfile) {
    try {
      final String updateQuery = UPDATE_PROFILE_TEMPLATE.formatted(stmtProfile.workloadType());
      final PreparedStatement update0 = prepare(updateQuery);

      update0.setDouble(1, stmtProfile.p50Improve());
      update0.setString(2, stmtProfile.appName());
      update0.setInt(3, stmtProfile.stmtId());

      update0.executeUpdate();
    } catch (SQLException throwables) {
      throw new RuntimeException(throwables);
    }
  }
}
