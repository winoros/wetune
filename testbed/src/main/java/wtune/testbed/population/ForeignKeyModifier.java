package wtune.testbed.population;

import wtune.testbed.common.BatchActuator;

import java.util.stream.IntStream;

import static java.util.stream.IntStream.iterate;

class ForeignKeyModifier implements Modifier {
  private final Generator delegation;
  private final int delegationRowCount;

  ForeignKeyModifier(Generator delegation, int delegationRowCount) {
    this.delegation = delegation;
    this.delegationRowCount = delegationRowCount;
  }

  @Override
  public void modify(int seed, BatchActuator actuator) {
    delegation.generate(seed % delegationRowCount, actuator);
  }

  @Override
  public IntStream locate(Object value) {
    final int delegationRowCount = this.delegationRowCount;
    return delegation
        .locate(value)
        .filter(it -> it >= 0 && it < delegationRowCount)
        .flatMap(it -> iterate(it, x -> x > 0, x -> x + delegationRowCount));
  }

  @Override
  public boolean isPrePopulated() {
    return delegation.isPrePopulated();
  }
}
