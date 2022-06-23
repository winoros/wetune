package wtune.sql.plan;

import wtune.common.tree.UniformTreeContext;
import wtune.sql.schema.Schema;

public interface PlanContext extends UniformTreeContext<PlanKind> {
  Schema schema();

  PlanNode nodeAt(int id);

  int nodeIdOf(PlanNode node);

  int bindNode(PlanNode node);

  ValuesRegistry valuesReg();

  InfoCache infoCache();

  PlanContext copy();

  @Override
  int root();

  PlanContext setRoot(int rootId);

  default Values valuesOf(PlanNode node) {
    return valuesReg().valuesOf(nodeIdOf(node));
  }

  default PlanNode planRoot() {
    return nodeAt(root());
  }

  static PlanContext mk(Schema schema, int root) {
    return new PlanContextImpl(root, 16, schema);
  }
}
