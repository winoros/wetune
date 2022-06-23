package wtune.superopt.fragment;

public enum OpKind {
  // Replace this by sealed interface after google-java-format plugin support the future.
  INPUT(0, "Input"),
  INNER_JOIN(2, "InnerJoin"),
  LEFT_JOIN(2, "LeftJoin"),
  SIMPLE_FILTER(1, "Filter"),
  IN_SUB_FILTER(2, "InSubFilter"),
  EXISTS_FILTER(2, "Exists"),
  PROJ(1, "Proj"),
  AGG(1, "Agg"),
  SORT(1, "Sort"),
  LIMIT(1, "Limit"),
  SET_OP(2, "Union");

  private final int numPredecessors;
  private final String text;

  OpKind(int numPredecessors, String text) {
    this.numPredecessors = numPredecessors;
    this.text = text;
  }

  public int numPredecessors() {
    return numPredecessors;
  }

  public String text() {
    return text;
  }

  public boolean isValidOutput() {
    return this != INNER_JOIN
        && this != LEFT_JOIN
        && this != SIMPLE_FILTER
        && this != IN_SUB_FILTER
        && this != EXISTS_FILTER;
  }

  public boolean isJoin() {
    return this == LEFT_JOIN || this == INNER_JOIN;
  }

  public boolean isFilter() {
    return this == SIMPLE_FILTER || this == IN_SUB_FILTER || this == EXISTS_FILTER;
  }

  public boolean isSubquery() {
    return this == IN_SUB_FILTER || this == EXISTS_FILTER;
  }

  public static OpKind parse(String value) {
    return switch (value) {
      case "LeftJoin" -> LEFT_JOIN;
      case "InnerJoin" -> INNER_JOIN;
      case "PlainFilter", "SimpleFilter", "Filter" -> SIMPLE_FILTER;
      case "SubqueryFilter", "InSubFilter", "InSub" -> IN_SUB_FILTER;
      case "Input" -> INPUT;
      case "Proj", "Proj*" -> PROJ;
      case "Union", "Union*" -> SET_OP;
      case "Agg" -> AGG;
      default -> throw new IllegalArgumentException("unknown operator: " + value);
    };
  }
}
