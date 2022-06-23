package wtune.superopt.util;

import wtune.sql.ast.constants.JoinKind;
import wtune.sql.plan.PlanContext;
import wtune.sql.plan.PlanKind;
import wtune.superopt.fragment.OpKind;

import static wtune.sql.plan.PlanSupport.isDedup;
import static wtune.sql.plan.PlanSupport.joinKindOf;

public class PlanComplexity implements Complexity {
  private final int[] opCounts;

  PlanComplexity(PlanContext plan, int rootId) {
    this.opCounts = new int[OpKind.values().length + 1];
    countOps(plan, rootId);
  }

  private void countOps(PlanContext plan, int nodeId) {
    final PlanKind nodeKind = plan.kindOf(nodeId);
    if (nodeKind == PlanKind.Join) {
      final JoinKind joinKind = joinKindOf(plan, nodeId);
      if (joinKind.isInner()) ++opCounts[OpKind.INNER_JOIN.ordinal()];
      else ++opCounts[OpKind.LEFT_JOIN.ordinal()];

    } else {
      if (nodeKind.ordinal() > PlanKind.Join.ordinal()) ++opCounts[nodeKind.ordinal() + 1];
      else ++opCounts[nodeKind.ordinal()];
      // Treat deduplication as an operator.
      if (nodeKind == PlanKind.Proj && isDedup(plan, nodeId)) ++opCounts[opCounts.length - 1];
    }

    for (int i = 0, bound = nodeKind.numChildren(); i < bound; i++)
      countOps(plan, plan.childOf(nodeId, i));
  }

  @Override
  public int[] opCounts() {
    return opCounts;
  }
}
