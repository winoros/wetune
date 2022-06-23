package wtune.superopt.fragment.pruning;

import wtune.superopt.fragment.Fragment;
import wtune.superopt.fragment.Op;
import wtune.superopt.fragment.OpKind;
import wtune.superopt.fragment.OpVisitor;

public abstract class BaseMatchingRule implements OpVisitor, Rule {
  protected boolean matched;

  public boolean match(Fragment g) {
    matched = false;

    g.acceptVisitor(this);
    return matched;
  }

  protected static boolean isInput(Op op) {
    return op == null || op.kind() == OpKind.INPUT;
  }
}
