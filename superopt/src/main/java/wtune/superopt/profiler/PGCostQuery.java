package wtune.superopt.profiler;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class PGCostQuery extends CostQueryBase {
  private static final String LABEL_0 = "cost";
  private static final String LABEL_1 = "..";

  public PGCostQuery(ConnectionProvider provider, String query) {
    super(provider, query);
  }

  protected double doQuery() throws SQLException {
    try (final Connection conn = provider.get()) {

      final Statement stmt = conn.createStatement();
      final ResultSet rs = stmt.executeQuery("EXPLAIN (" + query + ");");

      if (rs.next()) {
        final String result = rs.getString(1);

        int idx = result.indexOf(LABEL_0);
        if (idx == -1) return Double.MAX_VALUE;
        idx = result.indexOf(LABEL_1);
        if (idx == -1) return Double.MAX_VALUE;

        final int start = idx + LABEL_1.length();
        final int end = result.indexOf(" ", start);
        return end == -1 ? Double.MAX_VALUE : Double.parseDouble(result.substring(start, end));

      } else return Double.MAX_VALUE;
    }
  }
}
