package wtune.stmt.dao.internal;

import wtune.stmt.dao.IssueDao;
import wtune.stmt.support.Issue;
import wtune.stmt.support.internal.IssueImpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DbIssueDao extends DbDao implements IssueDao {
  private static final IssueDao INSTANCE = new DbIssueDao();

  private DbIssueDao() {}

  public static IssueDao instance() {
    return INSTANCE;
  }

  private static final String KEY_APP_NAME = "app";
  private static final String KEY_STMT_ID = "stmtId";

  private static final String SELECT_ITEMS =
      String.format("issue_app_name AS %s, issue_stmt_id AS %s", KEY_APP_NAME, KEY_STMT_ID);
  private static final String SELECT_ITEMS_2 =
      String.format("stat_app_name AS %s, stat_stmt_id AS %s", KEY_APP_NAME, KEY_STMT_ID);
  private static final String SELECT_ALL =
      "SELECT " + SELECT_ITEMS + " FROM wtune_issues ORDER BY issue_app_name, issue_stmt_id";
  private static final String SELECT_BY_APP =
      "SELECT "
          + SELECT_ITEMS
          + " FROM wtune_issues WHERE issue_app_name = ? ORDER BY issue_stmt_id";
  private static final String SELECT_UNCHECKED_BY_APP =
      "SELECT "
          + SELECT_ITEMS_2
          + " FROM wtune_opt_stat"
          + " WHERE stat_app_name = ?"
          + "  AND (stat_app_name, stat_stmt_id) NOT IN ("
          + "   SELECT issue_app_name, issue_stmt_id"
          + "   FROM wtune_issues)";

  private static Issue populateOne(ResultSet rs) throws SQLException {
    final String app = rs.getString(KEY_APP_NAME);
    final int stmtId = rs.getInt(KEY_STMT_ID);
    return new IssueImpl(app, stmtId);
  }

  @Override
  public List<Issue> findAll() {
    try {
      final PreparedStatement ps = prepare(SELECT_ALL);
      final ResultSet rs = ps.executeQuery();

      final List<Issue> issues = new ArrayList<>(200);
      while (rs.next()) issues.add(populateOne(rs));

      return issues;

    } catch (SQLException throwables) {
      throw new RuntimeException(throwables);
    }
  }

  @Override
  public List<Issue> findByApp(String appName) {
    final PreparedStatement ps;
    try {
      ps = prepare(SELECT_BY_APP);
      ps.setString(1, appName);

      final List<Issue> issues = new ArrayList<>(20);
      final ResultSet rs = ps.executeQuery();
      while (rs.next()) issues.add(populateOne(rs));

      return issues;

    } catch (SQLException throwables) {
      throw new RuntimeException(throwables);
    }
  }

  @Override
  public List<Issue> findUnchecked(String appName) {
    try {
      final PreparedStatement ps = prepare(SELECT_UNCHECKED_BY_APP);
      ps.setString(1, appName);

      final List<Issue> issues = new ArrayList<>(100);
      final ResultSet rs = ps.executeQuery();
      while (rs.next()) issues.add(populateOne(rs));

      return issues;

    } catch (SQLException throwables) {
      throw new RuntimeException(throwables);
    }
  }
}
