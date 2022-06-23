package wtune.superopt.fragment.pruning;

import wtune.superopt.fragment.Fragment;
import wtune.superopt.fragment.Input;
import wtune.superopt.fragment.Join;
import wtune.superopt.fragment.Op;

/**
 * Rule that matches a fragment with only Join operators.
 *
 * <p>The fragment with only single Join will not be matched, because we wanna the substitution
 * "InnerJoin(x,y) <=> LeftJoin(x,y)"
 */
public class AllJoin extends BaseMatchingRule {
  @Override
  public boolean enter(Op op) {
    if (!(op instanceof Join) && !(op instanceof Input)) {
      matched = false;
      return false;
    }
    return true;
  }

  @Override
  public boolean match(Fragment g) {
    final Op head = g.root();

    if (head.kind().isJoin()
        && head.predecessors()[0] instanceof Input
        && head.predecessors()[1] instanceof Input) return false;

    matched = true;
    g.acceptVisitor(this);
    return matched;
  }
}
