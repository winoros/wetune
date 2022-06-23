package wtune.superopt.profiler;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MySQLCostQuery extends CostQueryBase {
  private static final String LABEL = "\"query_cost\": \"";

  public MySQLCostQuery(ConnectionProvider provider, String query) {
    super(provider, query);
  }

  @Override
  protected double doQuery() throws SQLException {
    try (final Connection conn = provider.get()) {
      final Statement stmt = conn.createStatement();
      final ResultSet rs = stmt.executeQuery("EXPLAIN FORMAT=JSON (" + query + ");");

      if (!rs.next()) return Double.MAX_VALUE;

      final String json = rs.getString(1);
      double cost = 0.0;
      int idx, start, end = 0;

      while ((idx = json.indexOf(LABEL, end)) != -1) {
        start = idx + LABEL.length();
        end = json.indexOf("\"", start);
        if (end == -1) continue;
        cost += Double.parseDouble(json.substring(start, end));
      }

      return end == 0 ? Double.MAX_VALUE : cost;
    }
  }
}
