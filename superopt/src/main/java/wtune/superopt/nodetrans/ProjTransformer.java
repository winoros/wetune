package wtune.superopt.nodetrans;

import org.apache.calcite.rex.RexInputRef;
import org.apache.calcite.rex.RexNode;
import wtune.spes.AlgeNode.AlgeNode;
import wtune.spes.AlgeNode.SPJNode;
import wtune.spes.AlgeNode.UnionNode;
import wtune.spes.RexNodeHelper.RexNodeHelper;
import wtune.sql.plan.*;

import java.util.ArrayList;
import java.util.List;

import static wtune.superopt.nodetrans.Transformer.defaultIntType;

public class ProjTransformer extends BaseTransformer {
  public ProjTransformer(TransformCtx transCtx, PlanNode planNode) {
    super(transCtx, planNode);
  }

  private RexNode Expression2RexNode(Expression expr) {
    final PlanContext planCtx = transCtx.planCtx();
    final Values valuesOfInput = planCtx.valuesOf(planNode.child(planCtx, 0));

    // Get a value's index just in projected values
    // Since expr's valueRefs may not equal to values on this plan node
    final Values values = planCtx.valuesReg().valueRefsOf(expr);
    assert !values.isEmpty();

    final List<RexInputRef> rexRefs = new ArrayList<>(values.size());
    for (Value val : values) {
      int idx = valuesOfInput.indexOf(val);
      if (idx < 0) return null;

      rexRefs.add(new RexInputRef(idx, defaultIntType()));
    }

    return rexRefs.get(0);
  }

  @Override
  public AlgeNode transformNode() {
    final ProjNode proj = ((ProjNode) planNode);
    final AlgeNode childNode = Transformer.dispatch(transCtx, proj.child(transCtx.planCtx(), 0));

    final List<RexNode> columns = new ArrayList<>();
    for (Expression projExpr : proj.attrExprs()) {
      RexNode rexRef = Expression2RexNode(projExpr);
      if (rexRef == null) return null;
      columns.add(rexRef);
    }

    if (childNode instanceof UnionNode) {
      updateUnion((UnionNode) childNode, columns);
    }
    if (childNode instanceof SPJNode) {
      updateSPJ(childNode, columns);
    } else {
      // System.out.println("error in project parser:" + childNode.toString());
    }

    if (proj.deduplicated()) return AggTranformer.distinctToAgg(childNode);
    return childNode;
  }

  private void updateSPJ(AlgeNode spjNode, List<RexNode> columns) {
    updateOutputExprs(spjNode, columns);
  }

  private void updateUnion(UnionNode unionNode, List<RexNode> columns) {
    for (AlgeNode input : unionNode.getInputs()) {
      updateOutputExprs(input, columns);
    }
  }

  private void updateOutputExprs(AlgeNode inputNode, List<RexNode> columns) {
    List<RexNode> inputExprs = inputNode.getOutputExpr();
    List<RexNode> newOutputExpr = new ArrayList<>();
    for (RexNode expr : columns) {
      newOutputExpr.add(RexNodeHelper.substitute(expr, inputExprs));
    }
    inputNode.setOutputExpr(newOutputExpr);
  }
}
