package wtune.testbed.profile;

public interface ExecutorFactory {
  Executor mk(String sql, boolean useSqlServer, boolean calciteConn);

  default void close() {}
}
