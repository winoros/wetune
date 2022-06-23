package wtune.superopt.optimizer;

import wtune.sql.plan.PlanContext;
import wtune.superopt.substitution.Substitution;

public record OptimizationStep(PlanContext source,
                               PlanContext target,
                               Substitution rule,
                               int extra) {
  public int ruleId() {
    return rule == null ? -extra : rule.id();
  }
}
