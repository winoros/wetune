package wtune.testbed.population;

import org.apache.commons.lang3.NotImplementedException;
import wtune.sql.ast.SqlDataType;
import wtune.sql.ast.constants.Category;
import wtune.testbed.common.BatchActuator;
import wtune.testbed.util.MathHelper;

import java.math.BigDecimal;
import java.util.stream.IntStream;

import static wtune.sql.ast.constants.DataTypeName.*;


class FractionConverter implements Converter {
  private final int max;
  private final boolean isDecimal;

  FractionConverter(SqlDataType dataType) {
    assert dataType.category() == Category.FRACTION;

    final int width = Math.max(2, dataType.width());
    final int precision = Math.max(0, dataType.precision());

    max = MathHelper.pow10(Math.min(9, width - precision));

    switch (dataType.name()) {
      case FIXED, NUMERIC, DECIMAL -> isDecimal = true;
      default -> isDecimal = false;
    }
  }

  @Override
  public void convert(int seed, BatchActuator actuator) {
    if (isDecimal) actuator.appendDecimal(BigDecimal.valueOf(seed % max));
    else actuator.appendFraction(seed % max);
  }

  @Override
  public IntStream locate(Object value) {
    throw new NotImplementedException();
  }
}
