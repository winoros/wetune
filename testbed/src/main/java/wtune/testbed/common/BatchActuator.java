package wtune.testbed.common;

public interface BatchActuator extends Actuator {
  default void begin(Collection collection) {}

  default void end() {}

  default void beginOne(Collection collection) {}

  default void endOne() {}
}
