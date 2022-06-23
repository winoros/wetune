package wtune.testbed.util;

public interface RandGen {
  int random(int index);

  int reverse(int value);

  int range();

  boolean isPrePopulated();
}
