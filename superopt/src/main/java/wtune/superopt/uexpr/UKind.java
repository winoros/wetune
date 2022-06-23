package wtune.superopt.uexpr;

public enum UKind {
  ATOM,
  MULTIPLY,
  ADD,
  SUMMATION,
  NEGATION,
  SQUASH;

  public boolean isBinary() {
    return this == MULTIPLY || this == ADD;
  }

  public boolean isUnary() {
    return this == NEGATION || this == SQUASH;
  }
}
