package wtune.superopt.daemon;

import wtune.sql.ast.SqlNode;
import wtune.stmt.Statement;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import static wtune.sql.support.action.NormalizationSupport.installParamMarkers;

public class RegistrationBase implements Registration {
  private static final long TTL = 50 * 60 * 1000; // 50 min

  private final Map<String, Status> registration = new ConcurrentHashMap<>();

  @Override
  public void register(Statement stmt, SqlNode optimized) {
    final String query = stmt.ast().toString();

    if (optimized == null) {
      // remember a query that is unable to optimize
      registration.put(query, new Status(-1, System.currentTimeMillis() + TTL));
      return;
    }

    // assume the the original and optimized queries are both parameterize

    final Status existing = registration.get(query);
    if (existing != null) uninstall(existing.id);

    final int id = install(stmt.appName(), query, optimized.toString());
    if (id != -1) registration.put(query, new Status(id, System.currentTimeMillis() + TTL));
  }

  @Override
  public boolean contains(Statement stmt) {
    installParamMarkers(stmt.ast());
    final Status status = registration.get(stmt.ast().toString());
    return status != null && status.expiration <= System.currentTimeMillis();
  }

  protected int install(String dbName, String originalQuery, String optimizedQuery) {
    return 0;
  }

  protected void uninstall(int id) {}

  private static class Status {
    private final int id;
    private final long expiration;

    private Status(int id, long expiration) {
      this.id = id;
      this.expiration = expiration;
    }
  }
}
