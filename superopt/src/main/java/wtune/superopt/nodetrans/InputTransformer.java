package wtune.superopt.nodetrans;

import com.microsoft.z3.Context;
import org.apache.calcite.rel.type.RelDataType;
import org.apache.calcite.rex.RexNode;
import wtune.spes.AlgeNode.AlgeNode;
import wtune.spes.AlgeNode.SPJNode;
import wtune.spes.AlgeNode.TableNode;
import wtune.sql.plan.InputNode;
import wtune.sql.plan.PlanNode;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static wtune.superopt.nodetrans.Transformer.defaultIntType;

public class InputTransformer extends BaseTransformer {

  public InputTransformer(TransformCtx transCtx, PlanNode planNode) {
    super(transCtx, planNode);
  }

  @Override
  public AlgeNode transformNode() {
    final InputNode input = ((InputNode) planNode);

    final List<RelDataType> columnTypes = new ArrayList<>();
    input.table().columns().forEach(col -> columnTypes.add(defaultIntType()));

    final TableNode tableNode =
        new TableNode(input.table().name(), columnTypes, transCtx.z3Context());
    return wrapBySPJ(tableNode, transCtx.z3Context());
  }

  private static SPJNode wrapBySPJ(TableNode tableNode, Context z3Context) {
    Set<RexNode> emptyCondition = new HashSet<>();
    List<AlgeNode> inputs = new ArrayList<AlgeNode>();
    inputs.add(tableNode);
    return (new SPJNode(tableNode.getOutputExpr(), emptyCondition, inputs, z3Context));
  }
}
