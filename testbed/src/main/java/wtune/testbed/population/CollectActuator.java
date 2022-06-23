package wtune.testbed.population;

import wtune.testbed.common.BatchActuator;
import wtune.testbed.common.Collection;

import java.io.InputStream;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

class CollectActuator implements BatchActuator {
  private Object obj;

  public Object obj() {
    return obj;
  }

  @Override
  public void begin(Collection collection) {}

  @Override
  public void end() {}

  @Override
  public void beginOne(Collection collection) {}

  @Override
  public void endOne() {}

  @Override
  public int getAndForwardIndex() {
    return 0;
  }

  @Override
  public void setInt(int index, int i) {
    obj = i;
  }

  @Override
  public void setFraction(int index, double d) {
    obj = d;
  }

  @Override
  public void setDecimal(int index, BigDecimal d) {
    obj = d;
  }

  @Override
  public void setBool(int index, boolean b) {
    obj = b;
  }

  @Override
  public void setString(int index, String s) {
    obj = s;
  }

  @Override
  public void setDateTime(int index, LocalDateTime t) {
    obj = t;
  }

  @Override
  public void setTime(int index, LocalTime t) {
    obj = t;
  }

  @Override
  public void setDate(int index, LocalDate t) {
    obj = t;
  }

  @Override
  public void setBlob(int index, InputStream in, int length) {
    obj = in;
  }

  @Override
  public void setBytes(int index, byte[] bs) {
    obj = bs;
  }

  @Override
  public void setObject(int index, Object obj, int typeId) {
    this.obj = obj;
  }

  @Override
  public void setArray(int index, Object[] array, String type) {
    obj = array;
  }
}
