package wtune.testbed.population;

import wtune.testbed.common.BatchActuator;
import wtune.testbed.common.Collection;

public interface Populatable {
  boolean bindGen(Generators generators);

  boolean populateOne(BatchActuator actuator);

  static Populatable ofCollection(Collection collection) {
    return new BasePopulatable(collection);
  }
}
