package wtune.superopt.uexpr;

record UNameImpl(String str) implements UName {
  @Override
  public String toString() {
    return str;
  }
}
