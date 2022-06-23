package wtune.superopt.fragment.pruning;

import wtune.superopt.fragment.Agg;
import wtune.superopt.fragment.OpKind;

public class TooManyAgg extends BaseMatchingRule {
  @Override
  public boolean enterAgg(Agg op) {
    matched = checkOverwhelming(op);
    return !matched;
  }

  private static boolean checkOverwhelming(Agg op) {
    if (op.successor() != null && op.successor().kind() == OpKind.AGG)
      return true;

    return false;
  }
}
