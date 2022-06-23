package wtune.stmt.rawlog;

import java.util.Objects;

public class RawStmt {
  private final int id;
  private final String sql;
  private StackTrace stackTrace;

  public RawStmt(int id, String sql) {
    this.id = id;
    this.sql = sql;
  }

  public int id() {
    return id;
  }

  public String sql() {
    return sql;
  }

  public StackTrace stackTrace() {
    return stackTrace;
  }

  public void setStackTrace(StackTrace stackTrace) {
    this.stackTrace = stackTrace;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    RawStmt rawStmt = (RawStmt) o;
    return id == rawStmt.id;
  }

  @Override
  public int hashCode() {
    return Objects.hash(id);
  }

  @Override
  public String toString() {
    return id + " " + sql;
  }
}
