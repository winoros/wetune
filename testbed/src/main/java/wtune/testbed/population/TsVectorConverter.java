package wtune.testbed.population;

import org.apache.commons.lang3.NotImplementedException;
import org.postgresql.util.PGobject;
import wtune.sql.ast.SqlDataType;
import wtune.sql.ast.constants.DataTypeName;
import wtune.testbed.common.BatchActuator;

import java.sql.SQLException;
import java.sql.Types;
import java.util.stream.IntStream;

class TsVectorConverter implements Converter {
  TsVectorConverter(SqlDataType dataType) {
    assert dataType.name().equals(DataTypeName.TSVECTOR);
  }

  @Override
  public void convert(int seed, BatchActuator actuator) {
    try {
      final PGobject obj = new PGobject();
      obj.setType("tsvector");
      obj.setValue(String.valueOf(seed));
      actuator.appendObject(obj, Types.OTHER);

    } catch (SQLException ex) {
      throw new RuntimeException(ex);
    }
  }

  @Override
  public IntStream locate(Object value) {
    throw new NotImplementedException();
  }
}
