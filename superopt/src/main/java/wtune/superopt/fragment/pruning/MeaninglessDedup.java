package wtune.superopt.fragment.pruning;

import wtune.superopt.fragment.Op;
import wtune.superopt.fragment.OpKind;
import wtune.superopt.fragment.Proj;

public class MeaninglessDedup extends BaseMatchingRule {
  @Override
  public boolean enterProj(Proj op) {
    if (!op.isDeduplicated()) return true;

    final Op successor = op.successor();
    if (successor == null || !successor.kind().isSubquery() || successor.predecessors()[1] != op)
      return true;

    if (successor.successor() != null
        || (op.predecessors()[0] != null && op.predecessors()[0].kind() != OpKind.INPUT)) {
      matched = true;
      return false;
    }
    return true;
  }
}
