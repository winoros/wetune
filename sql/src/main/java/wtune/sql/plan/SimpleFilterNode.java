package wtune.sql.plan;

public interface SimpleFilterNode extends PlanNode {
  Expression predicate();

  @Override
  default PlanKind kind() {
    return PlanKind.Filter;
  }

  static SimpleFilterNode mk(Expression predicate) {
    return new SimpleFilterNodeImpl(predicate);
  }
}
