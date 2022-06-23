package wtune.testbed.population;

import wtune.sql.ast.SqlDataType;
import wtune.sql.ast.constants.Category;
import wtune.testbed.common.BatchActuator;

import java.util.stream.IntStream;

public class IntegralConverter implements Converter {
  private final String typeName;
  private final int max;
  private final boolean isArray;

  public IntegralConverter(SqlDataType dataType) {
    assert dataType.category() == Category.INTEGRAL;

    typeName = dataType.name();
    isArray = dataType.dimensions().length > 0;

    final int bytes = Math.min(4, dataType.storageSize());
    max = ~(Integer.MIN_VALUE >> (32 - (bytes << 3)));
  }

  @Override
  public void convert(int seed, BatchActuator actuator) {
    final int value = seed % max;
    if (isArray) actuator.appendArray(new Integer[] {value}, typeName);
    else actuator.appendInt(value);
  }

  @Override
  public IntStream locate(Object value) {
    if (!(value instanceof Integer))
      throw new IllegalArgumentException("cannot decode non-integer value");

    final int max = this.max;
    final int i = (Integer) value;
    if (i < 0 || i >= max) return IntStream.empty();
    else return IntStream.iterate(i, x -> x > 0, x -> x + max);
  }
}
