package wtune.testbed.population;

import org.apache.commons.lang3.NotImplementedException;
import org.postgresql.util.PGobject;
import wtune.sql.ast.SqlDataType;
import wtune.sql.ast.constants.Category;
import wtune.sql.ast.constants.DataTypeName;
import wtune.testbed.common.BatchActuator;

import java.sql.SQLException;
import java.sql.Types;
import java.util.stream.IntStream;

public class NetConverter implements Converter {
  private final boolean isArray;

  public NetConverter(SqlDataType dataType) {
    assert dataType.category() == Category.NET;
    if (!dataType.name().equals(DataTypeName.INET)) throw new UnsupportedOperationException();
    isArray = dataType.dimensions().length > 0;
  }

  @Override
  public void convert(int seed, BatchActuator actuator) {
    final int _0 = seed & 255;
    final int _1 = (seed >>> 8) & 255;
    final int _2 = (seed >>> 16) & 255;
    final int _3 = (seed >>> 24) & 255;

    try {
      final PGobject obj = new PGobject();
      obj.setType("inet");
      obj.setValue("%d.%d.%d.%d".formatted(_3, _2, _1, _0));

      if (isArray) actuator.appendArray(new Object[] {obj}, "INET");
      else actuator.appendObject(obj, Types.OTHER);

    } catch (SQLException ex) {
      throw new RuntimeException(ex);
    }
  }

  @Override
  public IntStream locate(Object value) {
    throw new NotImplementedException();
  }
}
