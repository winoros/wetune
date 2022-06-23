package wtune.superopt.daemon;

import org.apache.commons.lang3.NotImplementedException;
import wtune.sql.ast.SqlNode;
import wtune.stmt.Statement;
import wtune.superopt.profiler.ConnectionProvider;

import static wtune.common.datasource.DbSupport.MySQL;
import static wtune.common.datasource.DbSupport.PostgreSQL;

public interface Registration {
  void register(Statement stmt, SqlNode optimized);

  boolean contains(Statement stmt);

  static Registration make(String dbType, ConnectionProvider connPool) {
    switch (dbType) {
      case MySQL:
        return new MySQLRegistration(connPool);
      case PostgreSQL:
        throw new NotImplementedException();
      default:
        throw new IllegalArgumentException();
    }
  }
}
