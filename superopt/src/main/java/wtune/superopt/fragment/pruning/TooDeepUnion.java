package wtune.superopt.fragment.pruning;

import wtune.superopt.fragment.Union;

public class TooDeepUnion extends BaseMatchingRule {
  @Override
  public boolean enterUnion(Union op) {
    if (op.successor() != null && op.successor().successor() != null) {
      matched = true;
      return false;
    }
    return true;
  }
}
