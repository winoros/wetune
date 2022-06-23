package wtune.superopt.util;

import wtune.superopt.fragment.*;

import static wtune.superopt.fragment.OpKind.PROJ;

class FragmentComplexity implements Complexity {
  private final int[] opCounts = new int[OpKind.values().length + 2];

  FragmentComplexity(Op tree) {
    tree.acceptVisitor(OpVisitor.traverse(this::incrementOpCount));
    final int projCount = opCounts[PROJ.ordinal()];
    opCounts[opCounts.length - 1] = tree.kind() == PROJ ? projCount - 1 : projCount;
  }

  FragmentComplexity(Fragment fragment) {
    this(fragment.root());
  }

  private void incrementOpCount(Op op) {
    ++opCounts[op.kind().ordinal()];
    // Treat deduplication as an operator.
    if (op.kind() == PROJ && ((Proj) op).isDeduplicated()) ++opCounts[opCounts.length - 2];
  }

  @Override
  public int[] opCounts() {
    return opCounts;
  }
}
