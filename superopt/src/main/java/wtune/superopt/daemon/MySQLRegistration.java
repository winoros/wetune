package wtune.superopt.daemon;

import wtune.superopt.profiler.ConnectionProvider;

import java.lang.System.Logger.Level;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import static wtune.superopt.daemon.DaemonContext.LOG;

public class MySQLRegistration extends RegistrationBase {
  private final ConnectionProvider connPool;

  public MySQLRegistration(ConnectionProvider connPool) {
    this.connPool = connPool;
  }

  @Override
  protected void uninstall(int id) {
    try (final Connection conn = connPool.get()) {
      conn.createStatement()
          .executeUpdate("DELETE FROM query_rewrite.rewrite_rules WHERE id=" + id);

    } catch (SQLException ex) {
      LOG.log(Level.WARNING, "failed to uninstall optimization for MySQL", ex);
    }
  }

  @Override
  protected int install(String dbName, String originalQuery, String optimizedQuery) {
    try (final Connection conn = connPool.get()) {
      final Statement stmt = conn.createStatement();
      final String sql =
          "INSERT INTO query_rewrite.rewrite_rules (pattern_database, pattern, replacement) VALUES ('%s','%s','%s')";
      stmt.executeUpdate(
          sql.formatted(dbName, originalQuery, optimizedQuery), Statement.RETURN_GENERATED_KEYS);

      final ResultSet idResult = stmt.getGeneratedKeys();
      if (idResult.next()) {
        final int id = idResult.getInt(1);
        stmt.execute("CALL query_rewrite.flush_rewrite_rules();");
        return id;
      }

      return -1;

    } catch (SQLException ex) {
      LOG.log(Level.WARNING, "failed to install optimization for MySQL", ex);
      return -1;
    }
  }
}
