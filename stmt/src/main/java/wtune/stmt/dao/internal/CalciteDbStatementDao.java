package wtune.stmt.dao.internal;

import wtune.stmt.CalciteStmtProfile;
import wtune.stmt.Statement;
import wtune.stmt.dao.CalciteStatementDao;
import wtune.stmt.support.OptimizerType;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

public class CalciteDbStatementDao extends DbDao implements CalciteStatementDao {
  private static final CalciteStatementDao INSTANCE = new CalciteDbStatementDao();

  private CalciteDbStatementDao() {}

  public static CalciteStatementDao instance() {
    return INSTANCE;
  }

  static final String KEY_APP_NAME = "app";
  static final String KEY_STMT_ID = "stmtId";
  static final String KEY_RAW_SQL = "rawSql";

  private static final String CALCITE_STMTS_TABLE = "calcite_stmts";
  private static final String SELECT_ITEMS =
      String.format(
          "stmt_app_name AS %s, stmt_id AS %s, stmt_raw_sql AS %s ",
          KEY_APP_NAME, KEY_STMT_ID, KEY_RAW_SQL);
  private static final String SELECT_CALCITE_ITEMS =
      String.format(
          "stmt_app_name AS %s, stmt_id AS %s, stmt_calcite_sql AS %s ",
          KEY_APP_NAME, KEY_STMT_ID, KEY_RAW_SQL);

  // Find original statements
  private static final String FIND_ALL =
      "SELECT " + SELECT_ITEMS + "FROM " + CALCITE_STMTS_TABLE + " ";
  private static final String FIND_ONE = FIND_ALL + "WHERE stmt_app_name = ? AND stmt_id = ?";
  private static final String FIND_BY_APP = FIND_ALL + "WHERE stmt_app_name = ?";

  // Find calcite rewritten statements
  private static final String FIND_ALL_CALCITE =
      "SELECT "
          + SELECT_CALCITE_ITEMS
          + "FROM "
          + CALCITE_STMTS_TABLE
          + " WHERE stmt_calcite_sql IS NOT NULL ";
  private static final String FIND_ONE_CALCITE =
      FIND_ALL_CALCITE + "AND stmt_app_name = ? AND stmt_id = ?";
  private static final String FIND_BY_APP_CALCITE = FIND_ALL_CALCITE + "AND stmt_app_name = ?";

  // Update profile query
  private static final String CLEAN_OPT_DATA =
      "UPDATE "
          + CALCITE_STMTS_TABLE
          + " SET improve_calcite = null, improve_wetune = null"
          + " WHERE TRUE";

  private static final String UPDATE_OPT_DATA =
      "UPDATE "
          + CALCITE_STMTS_TABLE
          + " SET improve_calcite = ?, improve_wetune = ?"
          + " WHERE stmt_app_name = ? and stmt_id = ?";

  private static Statement toStatement(ResultSet rs) throws SQLException {
    return Statement.mkCalcite(
        rs.getString(KEY_APP_NAME), rs.getInt(KEY_STMT_ID), rs.getString(KEY_RAW_SQL), null);
  }

  private static Statement toCalciteRewrittenStatement(ResultSet rs) throws SQLException {
    final Statement stmt =
        Statement.mkCalcite(
            rs.getString(KEY_APP_NAME), rs.getInt(KEY_STMT_ID), rs.getString(KEY_RAW_SQL), null);
    stmt.setOptimizerType(OptimizerType.Calcite);
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
  public Statement findOneCalciteVersion(String appName, int stmtId) {
    try {
      final PreparedStatement ps = prepare(FIND_ONE_CALCITE);
      ps.setString(1, appName);
      ps.setInt(2, stmtId);

      final ResultSet rs = ps.executeQuery();

      if (rs.next()) return toCalciteRewrittenStatement(rs);
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
  public void cleanProfileData() {
    try {
      final PreparedStatement clean0 = prepare(CLEAN_OPT_DATA);
      clean0.executeUpdate();
    } catch (SQLException throwables) {
      throw new RuntimeException(throwables);
    }
  }

  @Override
  public void updateProfile(CalciteStmtProfile stmtProfile) {
    try {
      final PreparedStatement insert0 = prepare(UPDATE_OPT_DATA);
      if (stmtProfile.p50ImproveCalcite() == null)
        insert0.setNull(1, Types.FLOAT);
      else
        insert0.setFloat(1, stmtProfile.p50ImproveCalcite());
      if (stmtProfile.p50ImproveWeTune() == null)
        insert0.setNull(2, Types.FLOAT);
      else
        insert0.setFloat(2, stmtProfile.p50ImproveWeTune());

      insert0.setString(3, stmtProfile.appName());
      insert0.setInt(4, stmtProfile.stmtId());
      insert0.executeUpdate();

    } catch (SQLException throwables) {
      throw new RuntimeException(throwables);
    }
  }
}
