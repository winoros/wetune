package wtune.testbed.population;

import wtune.testbed.common.BatchActuator;
import wtune.testbed.common.Collection;
import wtune.testbed.common.Element;

public class SQLPopulator implements Populator {
  private PopulationConfig config;
  private Generators generators;
  private Runnable progressCallback;

  @Override
  public void setConfig(PopulationConfig config) {
    if (this.config == config) return;
    this.config = config;
    this.generators = Generators.make(config);
    this.progressCallback = config.progressCallback();
  }

  @Override
  public boolean populate(Collection collection) {
    final Populatable populatable = Populatable.ofCollection(collection);
    if (!populatable.bindGen(generators)) return false;

    final BatchActuator actuator = config.actuatorFactory().make(collection.collectionName());
    final int unitCount = config.unitCountOf(collection.collectionName());

    actuator.begin(collection);

    for (int i = 0; i < unitCount; i++) {
      if (progressCallback != null) progressCallback.run();
      if (!populatable.populateOne(actuator)) return false;
    }
    actuator.end();

    return true;
  }

  @Override
  public Generator getGenerator(Element element) {
    return generators.bind(element);
  }
}
