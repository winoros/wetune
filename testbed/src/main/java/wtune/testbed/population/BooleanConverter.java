package wtune.testbed.population;

import org.apache.commons.lang3.NotImplementedException;
import wtune.sql.ast.SqlDataType;
import wtune.sql.ast.constants.Category;
import wtune.testbed.common.BatchActuator;

import java.util.stream.IntStream;

class BooleanConverter implements Converter {
  BooleanConverter(SqlDataType dataType) {
    assert dataType.category() == Category.BOOLEAN
        || (dataType.category() == Category.BIT_STRING && dataType.width() == 1);
  }

  @Override
  public void convert(int seed, BatchActuator actuator) {
    actuator.appendBool((seed & 1) == 0);
  }

  @Override
  public IntStream locate(Object value) {
    throw new NotImplementedException();
  }
}
