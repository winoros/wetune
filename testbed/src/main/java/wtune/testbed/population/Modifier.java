package wtune.testbed.population;

import wtune.testbed.common.BatchActuator;

public interface Modifier extends Generator {
  void modify(int seed, BatchActuator actuator);

  @Override
  default void generate(int seed, BatchActuator actuator) {
    modify(seed, actuator);
  }
}
