package wtune.testbed.population;

import wtune.sql.schema.Column;
import wtune.testbed.common.BatchActuator;
import wtune.testbed.util.RandGen;

import java.util.stream.IntStream;

class RandomModifier implements Modifier {
  private final int localSeed; // to make the value seq different in different columns
  private final RandGen gen;
  private final Generator nextStep;

  RandomModifier(Column column, RandGen gen, Generator nextStep) {
    this.localSeed = column.hashCode() & ((1 << 30) - 1);
    this.gen = gen;
    this.nextStep = nextStep;
  }

  @Override
  public void modify(int seed, BatchActuator actuator) {
    if (seed < 0) throw new IllegalArgumentException("seed is out of bound " + seed);

    nextStep.generate(gen.random(localSeed ^ seed), actuator);
  }

  @Override
  public IntStream locate(Object value) {
    final int localSeed = this.localSeed;
    final RandGen gen = this.gen;

    return nextStep
        .locate(value)
        .filter(it -> it <= gen.range())
        .map(it -> gen.reverse(it) ^ localSeed);
  }

  @Override
  public boolean isPrePopulated() {
    return gen.isPrePopulated();
  }
}
