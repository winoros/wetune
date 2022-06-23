package wtune.superopt.fragment.pruning;

import wtune.superopt.fragment.InnerJoin;
import wtune.superopt.fragment.LeftJoin;
import wtune.superopt.fragment.Op;

/** Rule that matches a Join with Filter as its second child. */
public class MalformedJoin extends BaseMatchingRule {
  @Override
  public boolean enterInnerJoin(InnerJoin op) {
    final Op[] in = op.predecessors();
    if (in[0].kind().isFilter() || in[1].kind().isFilter()) {
      matched = true;
      return false;
    }
    return true;
  }

  @Override
  public boolean enterLeftJoin(LeftJoin op) {
    final Op[] in = op.predecessors();
    if (in[0].kind().isFilter() || in[1].kind().isFilter()) {
      matched = true;
      return false;
    }
    return true;
  }
}
