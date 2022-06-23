package wtune.testbed.population;

import org.apache.commons.lang3.NotImplementedException;
import wtune.sql.ast.SqlDataType;
import wtune.sql.ast.constants.Category;
import wtune.testbed.common.BatchActuator;

import java.io.ByteArrayInputStream;
import java.util.stream.IntStream;

import static wtune.testbed.util.RandomHelper.uniformRandomInt;

class BlobConverter implements Converter {
  private static final int NUM_BYTES = 128;

  BlobConverter(SqlDataType dataType) {
    assert dataType.category() == Category.BLOB;
  }

  @Override
  public void convert(int seed, BatchActuator actuator) {
    final byte[] bytes = new byte[NUM_BYTES];
    for (int i = 0; i < bytes.length; i++) bytes[i] = (byte) uniformRandomInt(seed + i);

    actuator.appendBlob(new ByteArrayInputStream(bytes), NUM_BYTES);
  }

  @Override
  public IntStream locate(Object value) {
    throw new NotImplementedException();
  }
}
