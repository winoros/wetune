package wtune.superopt.fragment.pruning;

import wtune.superopt.fragment.InnerJoin;
import wtune.superopt.fragment.Join;
import wtune.superopt.fragment.LeftJoin;

public class TooManyJoin extends BaseMatchingRule {
  @Override
  public boolean enterInnerJoin(InnerJoin op) {
    matched = checkOverwhelming(op);
    return !matched;
  }

  @Override
  public boolean enterLeftJoin(LeftJoin op) {
    matched = checkOverwhelming(op);
    return !matched;
  }

  private static boolean checkOverwhelming(Join op) {
    return op.successor() != null && op.successor().kind().isJoin();
  }
}
