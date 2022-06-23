package wtune.sql.plan;

import wtune.sql.ast.constants.JoinKind;

public interface JoinNode extends PlanNode {
  JoinKind joinKind();

  Expression joinCond();

  @Override
  default PlanKind kind() {
    return PlanKind.Join;
  }

  static JoinNode mk(JoinKind kind, Expression joinCond) {
    return new JoinNodeImpl(kind, joinCond);
  }
}
