package wtune.superopt.profiler;

import wtune.sql.plan.PlanContext;

import java.util.Properties;

public interface Profiler {
  void setBaseline(PlanContext baseline);

  void profile(PlanContext plan);

  PlanContext getPlan(int index);

  double getCost(int index);

  int minCostIndex();

  static Profiler mk(Properties dbProps) {
    return new ProfilerImpl(dbProps);
  }
}
