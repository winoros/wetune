package wtune.superopt.nodetrans;

import org.apache.calcite.rel.type.RelDataType;
import wtune.spes.AlgeNode.AlgeNode;
import wtune.spes.AlgeNode.UnionNode;
import wtune.sql.plan.*;

import java.util.ArrayList;
import java.util.List;

import static wtune.superopt.nodetrans.Transformer.defaultIntType;

public class UnionTransformer extends BaseTransformer{
  public UnionTransformer(TransformCtx transCtx, PlanNode planNode) {
    super(transCtx, planNode);
  }

  @Override
  public AlgeNode transformNode() {
    final SetOpNode union = ((SetOpNode) planNode);
    final List<AlgeNode> inputs = new ArrayList<>();
    for (PlanNode child : union.children(transCtx.planCtx())) {
      final AlgeNode childNode = Transformer.dispatch(transCtx, child);
      inputs.addAll(normalizeNodes(childNode));
    }
    final List<RelDataType> inputTypes = new ArrayList<>();
    for(int i = 0, bound = colNumOfInput(union, transCtx.planCtx()); i < bound; i++) {
      inputTypes.add(defaultIntType());
    }
    final UnionNode unionNode = new UnionNode(inputs, transCtx.z3Context(), inputTypes);

    if (union.deduplicated()) return AggTranformer.distinctToAgg(unionNode);
    else return unionNode;
  }

  private List<AlgeNode> normalizeNodes(AlgeNode input) {
    List<AlgeNode> result = new ArrayList<>();
    if (input instanceof UnionNode) result.addAll(input.getInputs());
    else result.add(input);

    return result;
  }

  private int colNumOfInput(PlanNode planNode, PlanContext planCtx) {
    return switch (planNode.kind()) {
      case Input -> ((InputNode) planNode).table().columns().size();
      case Proj -> ((ProjNode) planNode).attrExprs().size();
      case Filter, InSub, Exists -> colNumOfInput(planNode.child(planCtx, 0), planCtx);
      case Join -> colNumOfInput(planNode.child(planCtx, 0), planCtx)
          + colNumOfInput(planNode.child(planCtx, 1), planCtx);
      case Agg -> ((AggNode) planNode).attrExprs().size();
      case SetOp -> colNumOfInput(planNode.child(planCtx, 0), planCtx);
      default -> throw new IllegalStateException("Unsupported planNode type: " + planNode.kind());
    };
  }
}
