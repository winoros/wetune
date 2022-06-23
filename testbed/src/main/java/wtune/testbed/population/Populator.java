package wtune.testbed.population;

import wtune.testbed.common.Collection;
import wtune.testbed.common.Element;

public interface Populator {
  void setConfig(PopulationConfig config);

  boolean populate(Collection collection);

  Generator getGenerator(Element element);
}
