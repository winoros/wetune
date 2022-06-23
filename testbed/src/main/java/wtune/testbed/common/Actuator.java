package wtune.testbed.common;

import java.io.InputStream;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

public interface Actuator {
  int getAndForwardIndex();

  default void setInt(int index, int i) {}

  default void setFraction(int index, double d) {}

  default void setDecimal(int index, BigDecimal d) {}

  default void setBool(int index, boolean b) {}

  default void setString(int index, String s) {}

  default void setDateTime(int index, LocalDateTime t) {}

  default void setTime(int index, LocalTime t) {}

  default void setDate(int index, LocalDate t) {}

  default void setBlob(int index, InputStream in, int length) {}

  default void setBytes(int index, byte[] bs) {}

  default void setObject(int index, Object obj, int typeId) {}

  default void setArray(int index, Object[] array, String type) {}

  default void appendInt(int i) {
    setInt(getAndForwardIndex(), i);
  }

  default void appendFraction(double d) {
    setFraction(getAndForwardIndex(), d);
  }

  default void appendDecimal(BigDecimal d) {
    setDecimal(getAndForwardIndex(), d);
  }

  default void appendBool(boolean b) {
    setBool(getAndForwardIndex(), b);
  }

  default void appendString(String s) {
    setString(getAndForwardIndex(), s);
  }

  default void appendDateTime(LocalDateTime t) {
    setDateTime(getAndForwardIndex(), t);
  }

  default void appendTime(LocalTime t) {
    setTime(getAndForwardIndex(), t);
  }

  default void appendDate(LocalDate t) {
    setDate(getAndForwardIndex(), t);
  }

  default void appendBlob(InputStream in, int length) {
    setBlob(getAndForwardIndex(), in, length);
  }

  default void appendBytes(byte[] bs) {
    setBytes(getAndForwardIndex(), bs);
  }

  default void appendObject(Object obj, int typeId) {
    setObject(getAndForwardIndex(), obj, typeId);
  }

  default void appendArray(Object[] array, String type) {
    setArray(getAndForwardIndex(), array, type);
  }
}
