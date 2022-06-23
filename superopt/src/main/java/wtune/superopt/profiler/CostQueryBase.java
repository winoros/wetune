package wtune.superopt.profiler;

import java.sql.SQLException;

public abstract class CostQueryBase implements CostQuery {
  protected final ConnectionProvider provider;
  protected final String query;

  private boolean queried;
  private double cost = Double.MAX_VALUE;

  public CostQueryBase(ConnectionProvider provider, String query) {
    this.provider = provider;
    this.query = query;
  }

  protected abstract double doQuery() throws SQLException;

  @Override
  public double getCost() {
    if (queried) return cost;

    try {
      cost = doQuery();
    } catch (SQLException ex) {
      System.out.println(query);
      System.out.println(ex);
      cost = Double.MAX_VALUE;
    }

    queried = true;
    return cost;
  }
}
