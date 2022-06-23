package wtune.superopt.optimizer;

import wtune.sql.plan.PlanContext;
import wtune.sql.plan.PlanKind;

import static wtune.sql.plan.PlanSupport.isDedup;

class ReduceDedup {
  private final PlanContext plan;
  private boolean isReduced;

  ReduceDedup(PlanContext plan) {
    this.plan = plan;
    this.isReduced = false;
  }

  int reduce(int nodeId) {
    final PlanKind kind = plan.kindOf(nodeId);
    for (int i = 0, bound = kind.numChildren(); i < bound; ++i) reduce(plan.childOf(nodeId, i));

    if (kind.isSubqueryFilter()) {
      final int rhsChild = plan.childOf(nodeId, 1);
      if (plan.kindOf(rhsChild) == PlanKind.Proj && isDedup(plan, rhsChild)) {
        isReduced = true;
        plan.infoCache().putDeduplicatedOf(rhsChild, false);
      }
    }

    return nodeId;
  }

  boolean isReduced() {
    return isReduced;
  }
}
