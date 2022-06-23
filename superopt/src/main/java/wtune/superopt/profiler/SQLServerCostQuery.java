package wtune.superopt.profiler;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SQLServerCostQuery extends CostQueryBase {
  private static final String SHOW_PLAN_ON_CMD = "SET SHOWPLAN_ALL ON";
  private static final String SHOW_PLAN_OFF_CMD = "SET SHOWPLAN_ALL OFF";

  private static final String LABEL = "TotalSubtreeCost";

  public SQLServerCostQuery(ConnectionProvider provider, String query) {
    super(provider, query);
  }

  @Override
  protected double doQuery() throws SQLException {
    try (final Connection conn = provider.get()) {
      final Statement configStmt = conn.createStatement();
      configStmt.execute(SHOW_PLAN_ON_CMD);

      final Statement stmt = conn.createStatement();
      final ResultSet rs = stmt.executeQuery(query);
      double cost = rs.next() ? Double.parseDouble(rs.getString(LABEL)) : Double.MAX_VALUE;

      configStmt.execute(SHOW_PLAN_OFF_CMD);
      return cost;
    }
  }
}
