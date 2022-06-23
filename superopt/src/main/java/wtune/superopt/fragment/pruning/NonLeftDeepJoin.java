package wtune.superopt.fragment.pruning;

import wtune.superopt.fragment.InnerJoin;
import wtune.superopt.fragment.LeftJoin;
import wtune.superopt.fragment.Op;

/** Rule that matches non-left-deep Join tree. */
public class NonLeftDeepJoin extends BaseMatchingRule {
  @Override
  public boolean enterInnerJoin(InnerJoin op) {
    final Op right = op.predecessors()[1];
    if (right != null && right.kind().isJoin()) {
      matched = true;
      return false;
    }
    return true;
  }

  @Override
  public boolean enterLeftJoin(LeftJoin op) {
    final Op right = op.predecessors()[1];
    if (right != null && right.kind().isJoin()) {
      matched = true;
      return false;
    }
    return true;
  }
}
