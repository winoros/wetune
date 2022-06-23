package wtune.testbed.population;

import wtune.testbed.common.BatchActuator;
import wtune.testbed.common.Collection;

import java.io.InputStream;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class EchoActuator implements BatchActuator {
  private final PrintWriter writer;
  private List<String> values;
  private int index;

  public EchoActuator(PrintWriter writer) {
    this.writer = writer;
  }

  @Override
  public void begin(Collection collection) {}

  @Override
  public void end() {
    writer.flush();
    writer.close();
  }

  @Override
  public void beginOne(Collection collection) {
    this.values = Arrays.asList(new String[collection.elements().size()]);
    this.index = 0;
  }

  @Override
  public void endOne() {
    writer.println(String.join(";", values));
    writer.flush();
  }

  @Override
  public int getAndForwardIndex() {
    return index++;
  }

  @Override
  public void setInt(int index, int i) {
    values.set(index, String.valueOf(i));
  }

  @Override
  public void setFraction(int index, double d) {
    values.set(index, String.valueOf(d));
  }

  @Override
  public void setDecimal(int index, BigDecimal d) {
    values.set(index, String.valueOf(d));
  }

  @Override
  public void setBool(int index, boolean b) {
    values.set(index, String.valueOf(b ? 1 : 0));
  }

  @Override
  public void setString(int index, String s) {
    values.set(index, s);
  }

  @Override
  public void setDateTime(int index, LocalDateTime t) {
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'hh:mm:ss");
    values.set(index, t.format(formatter) + "");
  }

  @Override
  public void setTime(int index, LocalTime t) {
    values.set(index, t + "");
  }

  @Override
  public void setDate(int index, LocalDate t) {
    values.set(index, t + "");
  }

  @Override
  public void setBlob(int index, InputStream in, int length) {
    try {
      values.set(index, byteArray2String(in.readAllBytes()));
//      values.set(index, Arrays.toString(in.readAllBytes()));

    } catch (Exception ex) {
      values.set(index, "<EXCEPTION>");
    }
  }

  @Override
  public void setBytes(int index, byte[] bs) {
    values.set(index, byteArray2String(bs));
//    values.set(index, Arrays.toString(bs));
  }

  private String byteArray2String(byte[] bs){
    StringBuilder bStrBuilder = new StringBuilder();
    for (byte b: bs) {
      bStrBuilder.append(Integer.toHexString(b));
    }
    String bStr = bStrBuilder.toString();
    if(bStr.length() % 2 != 0)
      bStr = bStr.substring(0, bStr.length() - 1);
    return bStr;
  }

  @Override
  public void setObject(int index, Object obj, int typeId) {
    values.set(index, obj.toString());
  }

  @Override
  public void setArray(int index, Object[] array, String type) {
    final String str =
        Arrays.stream(array).map(Object::toString).collect(Collectors.joining(",", "{", "}"));
    values.set(index, str);
  }
}
