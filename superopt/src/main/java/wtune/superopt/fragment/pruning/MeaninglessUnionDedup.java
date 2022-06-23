package wtune.superopt.fragment.pruning;

import wtune.superopt.fragment.Op;
import wtune.superopt.fragment.Union;

public class MeaninglessUnionDedup extends BaseMatchingRule {
  @Override
  public boolean enterUnion(Union op) {
    if (!op.isDeduplicated()) return true;

    final Op successor = op.successor();
    if (successor == null || !successor.kind().isSubquery() || successor.predecessors()[1] != op)
      return true;

    matched = true;
    return false;
  }
}
