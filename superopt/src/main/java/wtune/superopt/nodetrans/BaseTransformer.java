package wtune.superopt.nodetrans;

import wtune.sql.plan.PlanNode;

abstract class BaseTransformer implements Transformer {

  TransformCtx transCtx;
  PlanNode planNode;

  public BaseTransformer(TransformCtx transCtx, PlanNode planNode) {
    this.transCtx = transCtx;
    this.planNode = planNode;
  }
}
