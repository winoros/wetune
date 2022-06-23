package wtune.testbed.population;

import wtune.testbed.common.Element;

public interface Generators {
  Generator bind(Element element);

  PopulationConfig config();

  static Generators make(PopulationConfig config) {
    return new SQLGenerators(config);
  }
}
