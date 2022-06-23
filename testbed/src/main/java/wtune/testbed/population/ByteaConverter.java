package wtune.testbed.population;

import org.apache.commons.lang3.NotImplementedException;
import wtune.sql.ast.SqlDataType;
import wtune.testbed.common.BatchActuator;

import java.util.stream.IntStream;

class ByteaConverter implements Converter {
  ByteaConverter(SqlDataType dataType) {
    assert dataType.name().equals("bytea");
  }

  @Override
  public void convert(int seed, BatchActuator actuator) {
    final byte[] bytes = new byte[4];
    bytes[0] = (byte) ((seed & 0xFF000000) >> 24);
    bytes[1] = (byte) ((seed & 0x00FF0000) >> 16);
    bytes[2] = (byte) ((seed & 0x0000FF00) >> 8);
    bytes[3] = (byte) ((seed & 0x000000FF));

    actuator.appendBytes(bytes);
  }

  @Override
  public IntStream locate(Object value) {
    throw new NotImplementedException();
  }
}
