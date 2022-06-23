package wtune.superopt.fragment.pruning;

import wtune.superopt.fragment.OpKind;
import wtune.superopt.fragment.SimpleFilter;

public class TooManySimpleFilter extends BaseMatchingRule {
  @Override
  public boolean enterSimpleFilter(SimpleFilter op) {
    matched = checkOverwhelming(op);
    return !matched;
  }

  private static boolean checkOverwhelming(SimpleFilter op) {
    if (op.predecessors()[0] == null || op.predecessors()[0].kind() != OpKind.SIMPLE_FILTER)
      return false;

    return op.successor() != null || !isInput(op.predecessors()[0].predecessors()[0]);
  }
}
