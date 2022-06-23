package wtune.demo.optimize;

import wtune.superopt.optimizer.OptimizationStep;

import java.util.List;

public record OptimizeStat(String rawSql,
                           List<String> optSqls,
                           List<List<OptimizationStep>> ruleSteps,
                           String msg) {
  private OptimizeStat(String rawSql, List<String> optSql, List<List<OptimizationStep>> ruleSteps) {
    this(rawSql, optSql, ruleSteps, null);
  }

  private OptimizeStat(String rawSql, String msg) {
    this(rawSql, null, null, msg);
  }

  public boolean isOptimized() {
    return optSqls != null;
  }

  public static OptimizeStat success(String rawSql, List<String> optSqls, List<List<OptimizationStep>> ruleSteps) {
    return new OptimizeStat(rawSql, optSqls, ruleSteps);
  }

  public static OptimizeStat fail(String rawSql, String msg) {
    return new OptimizeStat(rawSql, msg);
  }
}
