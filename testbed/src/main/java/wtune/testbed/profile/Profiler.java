package wtune.testbed.profile;

import gnu.trove.list.TIntList;
import wtune.stmt.Statement;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.System.Logger;

public interface Profiler {
  Logger LOG = System.getLogger("Profiler");

  Statement statement();

  TIntList seeds();

  Metric metric();

  ParamsGen paramsGen();

  void setSeeds(TIntList seeds);

  boolean prepare();

  boolean run();

  boolean runOnce();

  void close();

  static Profiler make(Statement stmt, ProfileConfig config) {
    return new ProfilerImpl(stmt, config);
  }

  void saveParams(ObjectOutputStream stream) throws IOException;

  boolean readParams(ObjectInputStream stream) throws IOException, ClassNotFoundException;
}
