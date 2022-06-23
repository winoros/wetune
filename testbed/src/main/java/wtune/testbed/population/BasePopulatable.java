package wtune.testbed.population;

import wtune.common.utils.ListSupport;
import wtune.testbed.common.BatchActuator;
import wtune.testbed.common.Collection;
import wtune.testbed.common.Element;

import java.util.List;
import java.util.Objects;
import java.util.function.Function;

class BasePopulatable implements Populatable {
  private final Collection collection;
  private List<Generator> generators;

  private int nextRowId;

  BasePopulatable(Collection collection) {
    this.collection = collection;
  }

  @Override
  public boolean bindGen(Generators generators) {
    this.generators = ListSupport.map((Iterable<Element>) collection.elements(), (Function<? super Element, ? extends Generator>) generators::bind);
    return this.generators.stream().allMatch(Objects::nonNull);
  }

  @Override
  public boolean populateOne(BatchActuator actuator) {
    actuator.beginOne(collection);
    for (Generator generator : generators) generator.generate(nextRowId, actuator);
    actuator.endOne();

    ++nextRowId;
    return true;
  }
}
