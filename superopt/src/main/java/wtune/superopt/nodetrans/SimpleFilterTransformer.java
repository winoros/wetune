package wtune.superopt.nodetrans;

import org.apache.calcite.rex.RexCall;
import org.apache.calcite.rex.RexInputRef;
import org.apache.calcite.rex.RexNode;
import org.apache.calcite.sql.SqlFunction;
import org.apache.calcite.sql.SqlKind;
import wtune.spes.AlgeNode.AlgeNode;
import wtune.spes.AlgeNode.SPJNode;
import wtune.spes.AlgeNode.UnionNode;
import wtune.spes.RexNodeHelper.RexNodeHelper;
import wtune.sql.plan.*;

import java.util.ArrayList;
import java.util.List;

import static wtune.superopt.nodetrans.Transformer.defaultIntType;

public class SimpleFilterTransformer extends BaseTransformer {
  public SimpleFilterTransformer(TransformCtx transCtx, PlanNode planNode) {
    super(transCtx, planNode);
  }

  private RexNode Expression2FilterCondition(Expression filterCond) {
    // Likewise, value in `joinCondValues` is in `valuesOfNode`
    final PlanContext planCtx = transCtx.planCtx();
    final Values valuesOfNode = planCtx.valuesOf(planNode);
    final Values predValues = planCtx.valuesReg().valueRefsOf(filterCond);

    // A little dirty code
    // final Comparable<Integer> predId = Integer.parseInt(filterCond.toString().substring(1, 2));
    // RexLiteral literal = (RexLiteral) rexBuilder.makeLiteral(predId, defaultIntType(), false);

    final List<RexInputRef> inputRefList = new ArrayList<>();
    for (Value predVal : predValues) {
      int idx = valuesOfNode.indexOf(predVal);
      // $i
      RexInputRef inputRef = new RexInputRef(idx, defaultIntType());
      // =($i, n)
      // RexCall rexCall =
      //    (RexCall) rexBuilder.makeCall(SqlStdOperatorTable.EQUALS, List.of(inputRef, literal));
      inputRefList.add(inputRef);
    }
    if (inputRefList.isEmpty()) return null;

    // create a new UDF to present Pi
    final SqlFunction udfPred =
        transCtx.getOrCreatePredicate(filterCond.toString().substring(0, 2));
    return (RexCall) rexBuilder.makeCall(udfPred, inputRefList);
  }

  @Override
  public AlgeNode transformNode() {
    final SimpleFilterNode filter = ((SimpleFilterNode) planNode);
    final RexNode filterCondition = Expression2FilterCondition(filter.predicate());
    if (filterCondition == null) return null;

    final AlgeNode inputNode = Transformer.dispatch(transCtx, filter.child(transCtx.planCtx(), 0));
    if (inputNode instanceof UnionNode) {
      return distributeCondition((UnionNode) inputNode, filterCondition);
    }
    if (inputNode instanceof SPJNode) {
      return SPJNode(inputNode, filterCondition);
    } else {
      // System.out.println("error in filter parser" + inputNode.toString());
      return inputNode;
    }
  }

  private AlgeNode SPJNode(AlgeNode spjNode, RexNode condition) {
    RexNode newCondition = RexNodeHelper.substitute(condition, spjNode.getOutputExpr());
    spjNode.addConditions(conjunctiveForm(newCondition));
    return spjNode;
  }

  private UnionNode distributeCondition(UnionNode unionNode, RexNode condition) {
    for (AlgeNode input : unionNode.getInputs()) {
      RexNode newCondition = RexNodeHelper.substitute(condition, input.getOutputExpr());
      input.addConditions(conjunctiveForm(newCondition));
    }
    return unionNode;
  }

  public static List<RexNode> conjunctiveForm(RexNode condition) {
    if (condition instanceof RexCall) {
      RexCall rexCall = (RexCall) condition;
      if (rexCall.isA(SqlKind.AND)) {
        return rexCall.getOperands();
      }
    }
    List<RexNode> result = new ArrayList<>();
    result.add(condition);
    return result;
  }
}
