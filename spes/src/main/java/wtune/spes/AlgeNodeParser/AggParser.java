package wtune.spes.AlgeNodeParser;

import com.microsoft.z3.Context;
import org.apache.calcite.plan.RelOptUtil;
import org.apache.calcite.rel.RelNode;
import org.apache.calcite.rel.core.AggregateCall;
import org.apache.calcite.rel.logical.LogicalAggregate;
import org.apache.calcite.rel.type.RelDataType;
import wtune.spes.AlgeNode.AggregateNode;
import wtune.spes.AlgeNode.AlgeNode;
import wtune.spes.AlgeNode.TableNode;
import wtune.spes.AlgeRule.JoinToProject;

import java.util.ArrayList;
import java.util.List;

public class AggParser extends AlgeNodeParser {
  public AlgeNode constructRelNode(RelNode input, Context z3Context) {
    LogicalAggregate aggregate = (LogicalAggregate) input;
    AlgeNode inputNode = AlgeNodeParserPair.constructAlgeNode(aggregate.getInput(), z3Context);
    if (trivialAgg(aggregate, inputNode)) {
      return inputNode;
    }
    List<Integer> groupByList = aggregate.getGroupSet().asList();
    ArrayList<RelDataType> columnTypes = new ArrayList<>();
    for (int i = 0; i < groupByList.size(); i++) {
      int index = groupByList.get(i);
      RelDataType type = inputNode.getOutputExpr().get(index).getType();
      columnTypes.add(type);
    }
    List<AggregateCall> aggregateCallList = aggregate.getAggCallList();
    for (int i = 0; i < aggregateCallList.size(); i++) {
      AggregateCall aggregateCall = aggregateCallList.get(i);
      columnTypes.add(aggregateCall.getType());
    }
    AggregateNode newAggNode =
        new AggregateNode(groupByList, aggregateCallList, columnTypes, inputNode, z3Context);
    return JoinParser.wrapBySPJ(newAggNode, z3Context);
  }

  private static boolean trivialAgg(LogicalAggregate aggregate, AlgeNode input) {
    List<Integer> groupByList = aggregate.getGroupSet().asList();
    if (aggregate.getAggCallList().isEmpty()) {
      if (groupByList.size() == 1) {
        int index = groupByList.get(0);
        List<AlgeNode> subInputs = input.getInputs();
        int count = 0;
        for (AlgeNode subInput : subInputs) {
          if (count <= index && index < count + subInput.getOutputExpr().size()) {
            int fixIndex = index - count;
            if (subInput instanceof TableNode) {
              String tableName = ((TableNode) subInput).getName();
              if (JoinToProject.checkKeyIndex(tableName) == fixIndex) {
                if (subInputs.size() == 1) {
                  return true;
                } else {
                  System.out.println(RelOptUtil.toString(aggregate));
                }
              }
            }
          } else {
            count = count + subInput.getOutputExpr().size();
          }
        }
      }
    }
    return false;
  }

  public static AlgeNode distinctToAgg(AlgeNode input) {
    List<Integer> groupByList = new ArrayList<>();
    for (int i = 0; i < input.getOutputExpr().size(); i++) {
      groupByList.add(i);
    }
    ArrayList<RelDataType> columnTypes = new ArrayList<>();
    for (int i = 0; i < input.getOutputExpr().size(); i++) {
      columnTypes.add(input.getOutputExpr().get(i).getType());
    }
    List<AggregateCall> aggregateCallList = new ArrayList<>();
    AggregateNode newAggNode =
        new AggregateNode(groupByList, aggregateCallList, columnTypes, input, input.getZ3Context());
    return JoinParser.wrapBySPJ(newAggNode, input.getZ3Context());
  }
}
