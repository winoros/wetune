package wtune.testbed.population;

import wtune.testbed.common.BatchActuator;
import wtune.testbed.common.Collection;
import wtune.testbed.common.Element;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static wtune.common.datasource.DbSupport.MySQL;
import static wtune.common.datasource.DbSupport.PostgreSQL;

class PopulationActuator extends PreparedStatementActuator implements BatchActuator {
  private final int batchSize;
  private final String dbType;
  private final Connection conn;
  private final char quotation;

  private int rowInCurrentBatch;
  private PreparedStatement stmt;

  PopulationActuator(String dbType, Connection conn, int batchSize) {
    this.dbType = dbType;
    this.conn = conn;
    this.batchSize = batchSize;
    this.quotation = MySQL.equals(dbType) ? '`' : '"';
  }

  @Override
  public void begin(Collection collection) {
    performSQL(() -> begin0(collection));
  }

  private void begin0(Collection collection) throws SQLException {
    final Statement stmt = conn.createStatement();
    if (MySQL.equals(dbType)) {
      stmt.execute("set foreign_key_checks=0");
      stmt.execute("set unique_checks=0");
      stmt.execute("truncate table " + quotation + collection.collectionName() + quotation);

    } else if (PostgreSQL.equals(dbType)) {
      stmt.execute("set session_replication_role='replica'");
      stmt.execute(
          "truncate table " + quotation + collection.collectionName() + quotation + " CASCADE");
    }

    stmt.close();
  }

  @Override
  public void end() {
    performSQL(this::end0);
  }

  private void end0() throws SQLException {
    if (stmt != null) {
      stmt.executeUpdate();
      stmt = null;
    }
    conn.close();
  }

  @Override
  public void beginOne(Collection collection) {
    performSQL(() -> beginOne0(collection));
  }

  protected void beginOne0(Collection collection) throws SQLException {
    if (rowInCurrentBatch == 0) {
      final List<Element> elements = collection.elements();
      final String sql =
          "INSERT INTO %c%s%c (%s) VALUES (%s)"
              .formatted(
                  quotation,
                  collection.collectionName(),
                  quotation,
                  elements.stream()
                      .map(it -> "%c%s%c".formatted(quotation, it.elementName(), quotation))
                      .collect(Collectors.joining(",")),
                  Stream.generate(() -> "?")
                      .limit(elements.size())
                      .collect(Collectors.joining(",")));

      stmt = conn.prepareStatement(sql);
    }

    index = 1;
    ++rowInCurrentBatch;
  }

  @Override
  public void endOne() {
    performSQL(this::endOne0);
  }

  protected void endOne0() throws SQLException {
    stmt.addBatch();
    if (rowInCurrentBatch >= batchSize) {
      stmt.executeBatch();
      stmt.close();
      stmt = null;
      rowInCurrentBatch = 0;
    }
  }

  @Override
  protected PreparedStatement statement() {
    return stmt;
  }

  @Override
  protected Connection connection() {
    return conn;
  }
}
