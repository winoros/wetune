package wtune.testbed.population;

import wtune.testbed.common.Actuator;

import java.io.InputStream;
import java.math.BigDecimal;
import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

public abstract class PreparedStatementActuator implements Actuator {
  protected int index;

  protected interface SQLOperation {
    void invoke() throws SQLException;
  }

  protected static void performSQL(SQLOperation op) {
    try {
      op.invoke();
    } catch (SQLException throwables) {
      throw new RuntimeException(throwables);
    }
  }

  @Override
  public int getAndForwardIndex() {
    return index++;
  }

  @Override
  public void setInt(int index, int i) {
    performSQL(() -> statement().setInt(index, i));
  }

  @Override
  public void setFraction(int index, double d) {
    performSQL(() -> statement().setDouble(index, d));
  }

  @Override
  public void setDecimal(int index, BigDecimal d) {
    performSQL(() -> statement().setBigDecimal(index, d));
  }

  @Override
  public void setBool(int index, boolean b) {
    performSQL(() -> statement().setBoolean(index, b));
  }

  @Override
  public void setString(int index, String s) {
    performSQL(() -> statement().setString(index, s));
  }

  @Override
  public void setDateTime(int index, LocalDateTime t) {
    final Timestamp x = Timestamp.valueOf(t);
    performSQL(() -> statement().setTimestamp(index, Timestamp.valueOf(t)));
  }

  @Override
  public void setTime(int index, LocalTime t) {
    performSQL(() -> statement().setTime(index, Time.valueOf(t)));
  }

  @Override
  public void setDate(int index, LocalDate t) {
    performSQL(() -> statement().setDate(index, Date.valueOf(t)));
  }

  @Override
  public void setBlob(int index, InputStream in, int length) {
    performSQL(() -> statement().setBlob(index, in, length));
  }

  @Override
  public void setBytes(int index, byte[] bs) {
    performSQL(() -> statement().setBytes(index, bs));
  }

  @Override
  public void setObject(int index, Object obj, int typeId) {
    performSQL(() -> statement().setObject(index, obj, typeId));
  }

  @Override
  public void setArray(int index, Object[] array, String type) {
    performSQL(() -> statement().setArray(index, connection().createArrayOf(type, array)));
  }

  protected abstract Connection connection();

  protected abstract PreparedStatement statement() throws SQLException;
}
