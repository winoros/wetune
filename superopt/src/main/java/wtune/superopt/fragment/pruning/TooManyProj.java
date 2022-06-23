package wtune.superopt.fragment.pruning;

import wtune.superopt.fragment.OpKind;
import wtune.superopt.fragment.Proj;

public class TooManyProj extends BaseMatchingRule {
  @Override
  public boolean enterProj(Proj op) {
    matched = checkOverwhelming(op);
    return !matched;
  }

  private static boolean checkOverwhelming(Proj op) {
    if (op.predecessors()[0] == null || op.predecessors()[0].kind() != OpKind.PROJ) return false;

    return op.successor() != null || !isInput(op.predecessors()[0].predecessors()[0]);
  }
}
