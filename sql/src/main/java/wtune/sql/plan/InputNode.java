package wtune.sql.plan;

import wtune.sql.schema.Table;

public interface InputNode extends PlanNode, Qualified {
  Table table();

  @Override
  default PlanKind kind() {
    return PlanKind.Input;
  }

  static InputNode mk(Table table, String qualification) {
    return new InputNodeImpl(table, qualification);
  }
}
