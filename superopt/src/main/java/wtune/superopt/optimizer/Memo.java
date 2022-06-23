package wtune.superopt.optimizer;

import wtune.common.utils.BaseCongruence;
import wtune.common.utils.BaseCongruentClass;
import wtune.sql.plan.PlanContext;
import wtune.sql.plan.PlanKind;

import static wtune.sql.plan.PlanSupport.stringifyNode;

class Memo extends BaseCongruence<String, SubPlan> {
  boolean isRegistered(SubPlan node) {
    return classes.containsKey(extractKey(node));
  }

  boolean isRegistered(PlanContext plan, int nodeId) {
    return classes.containsKey(extractKey(new SubPlan(plan, nodeId)));
  }

  @Override
  protected String extractKey(SubPlan subPlan) {
    if (subPlan.rootKind() != PlanKind.Input) return subPlan.toString();
    else return stringifyNode(subPlan.plan(), subPlan.nodeId());
  }

  @Override
  protected BaseCongruentClass<SubPlan> mkCongruentClass() {
    return new OptGroup(this);
  }
}
