package wtune.testbed.profile;

import wtune.sql.support.resolution.ParamDesc;
import wtune.testbed.common.Actuator;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.Map;

public interface Executor extends Actuator {
  boolean installParams(Map<ParamDesc, Object> params);

  long execute();

  ResultSet getResultSet();

  void endOne();

  void close();

}
