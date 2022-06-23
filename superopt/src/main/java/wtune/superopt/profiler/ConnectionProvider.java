package wtune.superopt.profiler;

import java.sql.Connection;
import java.sql.SQLException;

@FunctionalInterface
public interface ConnectionProvider {
  Connection get() throws SQLException;
}
