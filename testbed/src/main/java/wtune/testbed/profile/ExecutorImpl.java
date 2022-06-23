package wtune.testbed.profile;

import wtune.common.utils.ITriConsumer;
import wtune.sql.support.resolution.ParamDesc;
import wtune.testbed.common.Actuator;
import wtune.testbed.population.PreparedStatementActuator;
import wtune.testbed.profile.ParamsGen.IsNull;
import wtune.testbed.profile.ParamsGen.NotNull;
import wtune.testbed.runner.Profile;

import java.lang.System.Logger.Level;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;
import java.util.Map;

class ExecutorImpl extends PreparedStatementActuator implements Executor {
  protected final String sql;
  protected final Connection conn;

  protected PreparedStatement stmt;
  protected ResultSet resultSet;

  ExecutorImpl(Connection conn, String sql) {
    this.conn = conn;
    this.sql = sql;
    System.out.println(sql);
  }

  @Override
  public boolean installParams(Map<ParamDesc, Object> params) {
    final ParamInstaller installer = new ParamInstaller(this);
    for (var pair : params.entrySet())
      if (!installer.install(pair.getKey(), pair.getValue())) {
        Profile.LOG.log(Level.ERROR, "failed to install parameters {0} to sql {1}", pair, sql);
        return false;
      }

    return true;
  }

  @Override
  public long execute() {
    try {
      //      final String str = statement().toString();
      //      System.out.println(str.substring(str.indexOf("SELECT")));
      PreparedStatement statement = statement();
      statement.setQueryTimeout(100);
      final long start = System.nanoTime();
      resultSet = statement.executeQuery();
      final long end = System.nanoTime();
      return end - start;

    } catch (SQLException exception) {
      Profile.LOG.log(
          Level.ERROR,
          "encounter exception when execute query: [{0}] {1}",
          exception.getSQLState(),
          exception.getMessage());
      return -1L;
    }
  }

  @Override
  public ResultSet getResultSet() {
    return resultSet;
  }

  @Override
  public void endOne() {
    performSQL(stmt::close);
    stmt = null;
    index = 1;
  }

  @Override
  public void close() {
    if (stmt != null) performSQL(stmt::close);
    performSQL(conn::close);
  }

  @Override
  protected Connection connection() {
    return conn;
  }

  @Override
  protected PreparedStatement statement() throws SQLException {
    if (stmt != null) return stmt;
    return stmt = conn.prepareStatement(sql);
  }
}

class ParamInstaller {
  private static final Map<Class<?>, ITriConsumer<ParamInstaller, Integer, Object>> DISPATCH =
      Map.of(
          Integer.class,
          ParamInstaller::setInt,
          Double.class,
          ParamInstaller::setFraction,
          BigDecimal.class,
          ParamInstaller::setDecimal,
          Boolean.class,
          ParamInstaller::setBool,
          String.class,
          ParamInstaller::setString,
          LocalDateTime.class,
          ParamInstaller::setDateTime,
          LocalDate.class,
          ParamInstaller::setDate,
          LocalTime.class,
          ParamInstaller::setTime);

  private final Actuator actuator;

  ParamInstaller(Actuator actuator) {
    this.actuator = actuator;
  }

  private void setInt(int i, Object value) {
    actuator.setInt(i, (Integer) value);
  }

  private void setFraction(int i, Object value) {
    actuator.setFraction(i, (Double) value);
  }

  private void setDecimal(int i, Object value) {
    actuator.setDecimal(i, (BigDecimal) value);
  }

  private void setBool(int i, Object value) {
    actuator.setBool(i, (Boolean) value);
  }

  private void setString(int i, Object value) {
    actuator.setString(i, (String) value);
  }

  private void setDateTime(int i, Object value) {
    actuator.setDateTime(i, (LocalDateTime) value);
  }

  private void setDate(int i, Object value) {
    actuator.setDate(i, (LocalDate) value);
  }

  private void setTime(int i, Object value) {
    actuator.setTime(i, (LocalTime) value);
  }

  public boolean install(ParamDesc param, Object value) {
    if (value instanceof NotNull || value instanceof IsNull) return true;
    if (value instanceof List) {
      int i = param.index() + 1;
      for (Object e : (List<?>) value) {
        final var handle = DISPATCH.get(e.getClass());
        if (handle == null) return false;
        handle.accept(this, i++, e);
      }
      return true;
    }

    final var handle = DISPATCH.get(value.getClass());
    if (handle == null) return false;
    handle.accept(this, param.index() + 1, value);

    return true;
  }
}
