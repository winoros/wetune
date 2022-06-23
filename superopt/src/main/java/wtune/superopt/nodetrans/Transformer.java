package wtune.superopt.nodetrans;

import org.apache.calcite.jdbc.JavaTypeFactoryImpl;
import org.apache.calcite.rel.type.RelDataType;
import org.apache.calcite.rel.type.RelDataTypeFactory;
import org.apache.calcite.rel.type.RelDataTypeSystem;
import org.apache.calcite.rex.RexBuilder;
import org.apache.calcite.sql.type.SqlTypeName;
import wtune.spes.AlgeNode.AlgeNode;
import wtune.sql.plan.PlanNode;

import static wtune.sql.plan.PlanKind.*;

public interface Transformer {
  RelDataTypeFactory typeFactory = new JavaTypeFactoryImpl(RelDataTypeSystem.DEFAULT);
  RexBuilder rexBuilder = new RexBuilder(typeFactory);

  AlgeNode transformNode();

  static AlgeNode dispatch(TransformCtx transCtx, PlanNode planNode) {
    return switch (planNode.kind()) {
      case Input -> new InputTransformer(transCtx, planNode).transformNode();
      case Proj -> new ProjTransformer(transCtx, planNode).transformNode();
      case Filter -> new SimpleFilterTransformer(transCtx, planNode).transformNode();
      case Join -> new JoinTransformer(transCtx, planNode).transformNode();
      case SetOp -> new UnionTransformer(transCtx, planNode).transformNode();
      case InSub -> new InSubFilterTransformer(transCtx, planNode).transformNode();
      case Agg -> new AggTranformer(transCtx, planNode).transformNode();
      default -> throw new UnsupportedOperationException(
          "Unsupported operator type for AlgeNode: " + planNode.kind());
    };
  }

  static RelDataType defaultIntType() {
    return typeFactory.createSqlType(SqlTypeName.INTEGER);
  }
}
