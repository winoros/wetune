package wtune.superopt.fragment.pruning;

import wtune.superopt.fragment.InSubFilter;
import wtune.superopt.fragment.OpKind;

public class ReorderedFilter extends BaseMatchingRule {
  @Override
  public boolean enterInSubFilter(InSubFilter op) {
    if (op.predecessors()[0] != null && op.predecessors()[0].kind() == OpKind.SIMPLE_FILTER) {
      matched = true;
      return false;
    }
    return true;
  }
}
