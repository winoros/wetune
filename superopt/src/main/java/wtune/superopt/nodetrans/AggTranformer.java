package wtune.superopt.nodetrans;

import org.apache.calcite.rel.RelCollations;
import org.apache.calcite.rel.core.AggregateCall;
import org.apache.calcite.rel.type.RelDataType;
import org.apache.calcite.rex.RexInputRef;
import org.apache.calcite.rex.RexNode;
import org.apache.calcite.sql.SqlAggFunction;
import org.apache.calcite.sql.SqlFunction;
import org.apache.calcite.sql.fun.SqlStdOperatorTable;
import wtune.spes.AlgeNode.AggregateNode;
import wtune.spes.AlgeNode.AlgeNode;
import wtune.spes.AlgeNode.TableNode;
import wtune.spes.AlgeRule.JoinToProject;
import wtune.sql.plan.*;

import java.util.*;

import static wtune.superopt.nodetrans.Transformer.defaultIntType;

import static wtune.sql.ast.ExprFields.Aggregate_Name;
import static wtune.sql.ast.ExprKind.Aggregate;
import static wtune.sql.ast.SqlNodeFields.SelectItem_Expr;

public class AggTranformer extends BaseTransformer {
  public AggTranformer(TransformCtx transCtx, PlanNode planNode) {
    super(transCtx, planNode);
  }

  private List<Integer> calAggAttrsList(List<Expression> attrExprs) {
    final List<Integer> aggExprs = new ArrayList<>();
    for (int i = 0, bound = attrExprs.size(); i < bound; i++) {
      if (Aggregate.isInstance(attrExprs.get(i).template()) ||
          Aggregate.isInstance(attrExprs.get(i).template().$(SelectItem_Expr))) {
        aggExprs.add(i);
      }
    }
    return aggExprs;
  }

  private List<Integer> calGroupByAttrsIdxList
          (List<Expression> groupByExprs, List<Expression> attrExprs) {
    final List<Integer> groupByList = new ArrayList<>(groupByExprs.size());
    for (Expression grpExpr: groupByExprs) {
      for (int i = 0, bound = attrExprs.size(); i < bound; i++) {
        if (identicalExprs(grpExpr, attrExprs.get(i))) {
          groupByList.add(i);
          break;
        }
      }
    }
    return groupByList;
  }

  private boolean identicalExprs(Expression expr1, Expression expr2) {
    final PlanContext planCtx = transCtx.planCtx();
    final Values values1 = planCtx.valuesReg().valueRefsOf(expr1);
    final Values values2 = planCtx.valuesReg().valueRefsOf(expr2);
    if (values1.size() == values2.size()) {
      for (int j = 0, bound0 = values1.size(); j < bound0; j++) {
        if (values1.get(j) != values2.get(j)) return false;
      }
      return true;
    }
    return false;
  }

  private static SqlAggFunction castAggType2AggFunction(String aggType) {
    return switch (aggType) {
      case "max", "MAX" -> SqlStdOperatorTable.MAX;
      case "min", "MIN" -> SqlStdOperatorTable.MIN;
      case "sum", "SUM" -> SqlStdOperatorTable.SUM;
      case "count", "COUNT" -> SqlStdOperatorTable.COUNT;
      default -> throw new UnsupportedOperationException(
              "Unsupported aggregate function for SPES: " + aggType);
    };
  }

  private int lookupGroupExprIdx(Expression aggExpr, List<Expression> attrExprs, List<Integer> groupByList) {
    // SqlToRelConverter::lookupOrCreateGroupExpr
    int index = 0;
    int aggAttrId = attrExprs.indexOf(aggExpr);
//    for (Expression attrExpr : attrExprs) {
//      if (identicalExprs(aggExpr))
//    }
    for (int groupAttrId : groupByList) {
      if (aggAttrId == groupAttrId) {
        return index;
      }
      ++index;
    }
    return index;
  }

  @Override
  public AlgeNode transformNode() {
    final AggNode agg = (AggNode) planNode;
    final AlgeNode inputNode = Transformer.dispatch(transCtx, agg.child(transCtx.planCtx(), 0));

    final List<Expression> attrExprs = agg.attrExprs();
    final List<Integer> aggExprs = calAggAttrsList(attrExprs);

    final List<Expression> groupByExprs = agg.groupByExprs();
    final List<Integer> groupByList = calGroupByAttrsIdxList(groupByExprs, attrExprs);

    // trivial Agg
    if (aggExprs.isEmpty() && groupByExprs.isEmpty()) {
      if (trivialAgg(inputNode, groupByList))
        return inputNode;
    }

    // column types
    final ArrayList<RelDataType> columnTypes = new ArrayList<>();
    for (int i = 0; i < groupByList.size(); i++) {
      int index = groupByList.get(i);
      RelDataType type = inputNode.getOutputExpr().get(index).getType();
      columnTypes.add(type);
    }

    // aggregate call
    final List<AggregateCall> aggregateCallList = new ArrayList<>();
    for (int i : aggExprs) {
      Expression aggExpr = attrExprs.get(i);
      String aggType = aggExpr.template().$(Aggregate_Name);
      if (aggType == null) aggType = aggExpr.template().$(SelectItem_Expr).$(Aggregate_Name);
      SqlAggFunction aggFunction = castAggType2AggFunction(aggType);
      AggregateCall aggregateCall = AggregateCall.create(
              aggFunction,
              false,
              false,
              // List.of(lookupGroupExprIdx(aggExpr, attrExprs, groupByList)),
              List.of(i),
              -1,
              RelCollations.EMPTY,
              defaultIntType(),
              agg.attrNames().get(i)
      );
      aggregateCallList.add(aggregateCall);
      columnTypes.add(defaultIntType());
    }
    final AggregateNode newAggNode =
        new AggregateNode(groupByList, aggregateCallList, columnTypes, inputNode, transCtx.z3Context());

    // having condition
    final Expression havingPredExpr = agg.havingExpr();
    if (havingPredExpr == null)
      return JoinTransformer.wrapBySPJ(newAggNode, transCtx.z3Context());

    int havingAttrIdx = -1;
    for(int i = 0, bound = attrExprs.size(); i < bound; i++) {
      if (identicalExprs(attrExprs.get(i), havingPredExpr)) {
        havingAttrIdx = i;
        break;
      }
    }
    if (havingAttrIdx < 0)
      return JoinTransformer.wrapBySPJ(newAggNode, transCtx.z3Context());

    final RexInputRef havingAttrs = new RexInputRef(havingAttrIdx, defaultIntType());
    final SqlFunction havingPred = transCtx.getOrCreatePredicate(havingPredExpr.toString().substring(0, 2));
    final RexNode havingCond = rexBuilder.makeCall(havingPred, new ArrayList<>(List.of(havingAttrs)));
    return JoinTransformer.wrapBySPJWithCondition(newAggNode, new HashSet<>(Set.of(havingCond)), transCtx.z3Context());
  }

  private static boolean trivialAgg(AlgeNode input, List<Integer> groupByList) {
    //List<Integer> groupByList = agg.getGroupSet().asList();
    //if (agg.getAggCallList().isEmpty()) {
    //if (groupByList.size() == 1) {
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
            }
          }
        }
      } else {
        count = count + subInput.getOutputExpr().size();
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
    return JoinTransformer.wrapBySPJ(newAggNode, input.getZ3Context());
  }
}
