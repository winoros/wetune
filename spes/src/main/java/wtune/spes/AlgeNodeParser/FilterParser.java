package wtune.spes.AlgeNodeParser;

import com.microsoft.z3.Context;
import org.apache.calcite.rel.RelNode;
import org.apache.calcite.rel.logical.LogicalFilter;
import org.apache.calcite.rex.RexCall;
import org.apache.calcite.rex.RexNode;
import org.apache.calcite.sql.SqlKind;
import wtune.spes.AlgeNode.AlgeNode;
import wtune.spes.AlgeNode.SPJNode;
import wtune.spes.AlgeNode.UnionNode;
import wtune.spes.RexNodeHelper.RexNodeHelper;

import java.util.ArrayList;
import java.util.List;

public class FilterParser extends AlgeNodeParser {
  public AlgeNode constructRelNode(RelNode input, Context z3Context) {
    LogicalFilter filter = (LogicalFilter) input;
    AlgeNode inputNode = AlgeNodeParserPair.constructAlgeNode(filter.getInput(), z3Context);
    if (inputNode instanceof UnionNode) {
      return distributeCondition((UnionNode) inputNode, filter.getCondition());
    }
    if (inputNode instanceof SPJNode) {
      return SPJNode(inputNode, filter.getCondition());
    } else {
      System.out.println("error in filter parser" + inputNode.toString());
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
