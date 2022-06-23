package wtune.superopt.profiler;


import static wtune.common.datasource.DbSupport.*;

public interface CostQuery {
  double getCost();

  static CostQuery mysql(ConnectionProvider provider, String query) {
    return new MySQLCostQuery(provider, query);
  }

  static CostQuery pg(ConnectionProvider provider, String query) {
    return new PGCostQuery(provider, query);
  }

  static CostQuery sqlserver(ConnectionProvider provider, String query) {
    return new SQLServerCostQuery(provider, query);
  }

  static CostQuery mk(String dbType, ConnectionProvider provider, String query) {
    return switch (dbType) {
      case MySQL -> mysql(provider, query);
      case PostgreSQL -> pg(provider, query);
      case SQLServer -> sqlserver(provider, query);
      default -> throw new IllegalArgumentException("unknown db type");
    };
  }
}
