package wtune.superopt.nodetrans;

import com.microsoft.z3.Context;
import org.apache.calcite.rel.type.RelDataType;
import org.apache.calcite.rex.RexCall;
import org.apache.calcite.rex.RexInputRef;
import org.apache.calcite.rex.RexLiteral;
import org.apache.calcite.rex.RexNode;
import org.apache.calcite.sql.SqlKind;
import org.apache.calcite.sql.fun.SqlStdOperatorTable;
import wtune.spes.AlgeNode.AggregateNode;
import wtune.spes.AlgeNode.AlgeNode;
import wtune.spes.AlgeNode.SPJNode;
import wtune.spes.AlgeNode.UnionNode;
import wtune.spes.AlgeRule.AlgeRule;
import wtune.spes.RexNodeHelper.NotIn;
import wtune.spes.RexNodeHelper.RexNodeHelper;
import wtune.sql.plan.*;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static wtune.superopt.nodetrans.Transformer.defaultIntType;

public class JoinTransformer extends BaseTransformer{
  public JoinTransformer(TransformCtx transCtx, PlanNode planNode) {
    super(transCtx, planNode);
  }

  private RexNode Expression2JoinCondition(Expression joinCond) {
    // t0(c0, c1, c2), t1(c3, c4) t0 join t1 on t0.c0 = t1.c3
    // valuesOfNode: ($0 $1 $2 $3 $4)
    // joinCondValues: ($0 $3)
    // Value in `joinCondValues` is in `valuesOfNode`
    final PlanContext planCtx = transCtx.planCtx();
    final Values valuesOfNode = planCtx.valuesOf(planNode);
    final Values joinCondValues = planCtx.valuesReg().valueRefsOf(joinCond);
    if (joinCondValues.size() != 2) {
      throw new UnsupportedOperationException(
          "Unsupported join type for AlgeNode: operator num is " + joinCondValues.size());
    }
    final List<RexInputRef> rexRefs = new ArrayList<>(joinCondValues.size());
    for (Value val : joinCondValues) {
      int idx = valuesOfNode.indexOf(val); // $(idx)
      rexRefs.add(new RexInputRef(idx, defaultIntType()));
    }

    return rexBuilder.makeCall(SqlStdOperatorTable.EQUALS, rexRefs);
  }

  @Override
  public AlgeNode transformNode() {
    final JoinNode join = ((JoinNode) planNode);
    final AlgeNode leftNode = Transformer.dispatch(transCtx, join.child(transCtx.planCtx(), 0));
    final AlgeNode rightNode = Transformer.dispatch(transCtx, join.child(transCtx.planCtx(), 1));

    final RexNode joinCondition = Expression2JoinCondition(join.joinCond());
    final List<AlgeNode> result = innerJoinAll(leftNode,rightNode,transCtx.z3Context(),joinCondition);
    switch (join.joinKind()) {
      case INNER_JOIN -> { return constructNode(result,transCtx.z3Context()); }
      case LEFT_JOIN -> {
        result.addAll(leftJoinAll(leftNode,rightNode,joinCondition,transCtx.z3Context()));
        return constructNode(result,transCtx.z3Context());
      }
      case RIGHT_JOIN -> {
        result.addAll(rightJoinAll(leftNode,rightNode,joinCondition,transCtx.z3Context()));
        return constructNode(result,transCtx.z3Context());
      }
      case FULL_JOIN -> {
        result.addAll(leftJoinAll(leftNode,rightNode,joinCondition,transCtx.z3Context()));
        result.addAll(rightJoinAll(leftNode,rightNode,joinCondition,transCtx.z3Context()));
        return constructNode(result,transCtx.z3Context());
      }
      default -> throw new UnsupportedOperationException(
          "Unsupported join type for AlgeNode: " + join.joinKind().text());
    }
  }

  private AlgeNode constructNode (List<AlgeNode> result, Context z3Context){
    if (result.size() == 1) {
      return result.get(0);
    }else{
      List<RelDataType> inputTypes = new ArrayList<>();
      for(RexNode column:result.get(0).getOutputExpr()){
        inputTypes.add(column.getType());
      }
      return new UnionNode(result,z3Context,inputTypes);
    }
  }

  private List<AlgeNode> innerJoinAll (AlgeNode leftNode, AlgeNode rightNode, Context z3Context, RexNode joinCondition) {
    List<AlgeNode> leftInputs = new ArrayList<>();
    if (leftNode instanceof UnionNode) {
      leftInputs.addAll(leftNode.getInputs());
    }else{
      leftInputs.add(leftNode);
    }
    List<AlgeNode> rightInputs = new ArrayList<>();
    if (rightNode instanceof UnionNode) {
      rightInputs.addAll(rightNode.getInputs());
    }else{
      rightInputs.add(rightNode);
    }
    List<AlgeNode> result = new ArrayList<>();
    for (AlgeNode left : leftInputs) {
      for (AlgeNode right: rightInputs){
        result.add(innerJoin(left,right,z3Context,joinCondition));
      }
    }
    return result;
  }

  private SPJNode innerJoin (AlgeNode leftNode, AlgeNode rightNode , Context z3Context, RexNode joinCondition) {

    // getInput tables
    List<AlgeNode> inputs = new ArrayList<>();
    addInputs(leftNode,inputs);
    int offSize = 0;
    for (AlgeNode leftInput : inputs) {
      offSize = offSize+leftInput.getOutputExpr().size();
    }
    addInputs(rightNode,inputs);

    // build new output expr;
    List<RexNode> newOutputExpr = new ArrayList<>(leftNode.getOutputExpr());

    List<RexNode> rightOutputExpr = rightNode.getOutputExpr();
    for (RexNode rexNode : rightOutputExpr) {
      newOutputExpr.add(RexNodeHelper.addOffSize(rexNode, offSize));
    }

    // build new condition;
    Set<RexNode> newCondition = new HashSet<>(leftNode.getConditions());

    Set<RexNode> rightConditions = rightNode.getConditions();
    for(RexNode rightCondition:rightConditions){
      newCondition.add(RexNodeHelper.addOffSize(rightCondition,offSize));
    }
    RexNode newJoinCondition = RexNodeHelper.substitute(joinCondition,newOutputExpr);
    newCondition.add(newJoinCondition);


    return new SPJNode(newOutputExpr,newCondition,inputs,z3Context);
  }

  private List<AlgeNode> leftJoinAll (AlgeNode leftNode, AlgeNode rightNode,RexNode joinCondition,Context z3Context){
    List<AlgeNode> leftInputs = new ArrayList<>();
    if (leftNode instanceof UnionNode) {
      leftInputs.addAll(leftNode.getInputs());
    }else{
      leftInputs.add(leftNode);
    }
    List<AlgeNode> result = new ArrayList<>();
    for (AlgeNode left : leftInputs) {
      result.add(leftJoin(left,rightNode,joinCondition,z3Context));
    }
    return result;
  }

  private AlgeNode leftJoin(AlgeNode leftNode, AlgeNode rightNode, RexNode joinCondition,Context z3Context) {

    // build new output expr;

    List<RexNode> newOutputExpr = new ArrayList<>(leftNode.getOutputExpr());

    List<RexNode> rightOutputExpr = rightNode.getOutputExpr();
    for (RexNode rexNode : rightOutputExpr) {
      RexLiteral nullValue = rexBuilder.makeNullLiteral(rexNode.getType());
      newOutputExpr.add(nullValue);
    }

    // build new condition;
    Set<RexNode> newConditions = new HashSet<>(leftNode.getConditions());

    RexNode inCondition = inCondition(leftNode,rightNode,joinCondition,true);
    newConditions.add(inCondition);
    return new SPJNode(newOutputExpr,newConditions,leftNode.getInputs(),z3Context);
  }

  private List<AlgeNode> rightJoinAll (AlgeNode leftNode, AlgeNode rightNode,RexNode joinCondition,Context z3Context){
    List<AlgeNode> rightInputs = new ArrayList<>();
    if (rightNode instanceof UnionNode) {
      rightInputs.addAll(rightNode.getInputs());
    }else{
      rightInputs.add(rightNode);
    }
    List<AlgeNode> result = new ArrayList<>();
    for (AlgeNode right: rightInputs){
      result.add(rightJoin(leftNode,right,joinCondition,z3Context));
    }
    return result;
  }

  private AlgeNode rightJoin(AlgeNode leftNode, AlgeNode rightNode, RexNode joinCondition,Context z3Context){
    // build new output expr;
    List<RexNode> newOutputExpr = new ArrayList<>();
    for (RexNode rexNode : leftNode.getOutputExpr()){
      RexLiteral nullValue = rexBuilder.makeNullLiteral(rexNode.getType());
      newOutputExpr.add(nullValue);
    }

    newOutputExpr.addAll(rightNode.getOutputExpr());

    // build new condition;
    Set<RexNode> newConditions = new HashSet<>();
    newConditions.addAll(rightNode.getConditions());
    RexNode inCondition = inCondition(leftNode,rightNode,joinCondition,false);
    newConditions.add(inCondition);
    return new SPJNode(newOutputExpr,newConditions,rightNode.getInputs(),z3Context);

  }

  private RexNode inCondition (AlgeNode leftNode, AlgeNode rightNode, RexNode joinCondition, boolean isLeft){
    List<RexNode> leftJoinColumns = new ArrayList<>();
    List<RexNode> rightJoinColumns = new ArrayList<>();
    separateJoinCondition(joinCondition,leftJoinColumns,rightJoinColumns,leftNode.getOutputExpr().size());
    if (isLeft) {
      AlgeNode newRightNode = rightNode.clone();
      updateNode(newRightNode, rightJoinColumns);
      List<RexNode> properLeftJoinColumns = new ArrayList<>();
      for (RexNode leftJoinColumn : leftJoinColumns){
        properLeftJoinColumns.add(RexNodeHelper.substitute(leftJoinColumn,leftNode.getOutputExpr()));
      }
      newRightNode = AlgeRule.normalize(newRightNode);
      return (new NotIn(newRightNode,properLeftJoinColumns));
    }else{
      AlgeNode newLeftNode = leftNode.clone();
      updateNode(newLeftNode,leftJoinColumns);
      List<RexNode> properRightJoinColumns = new ArrayList<>();
      for (RexNode rightJoinColumn : rightJoinColumns){
        properRightJoinColumns.add(RexNodeHelper.substitute(rightJoinColumn,rightNode.getOutputExpr()));
      }
      newLeftNode = AlgeRule.normalize(newLeftNode);
      return (new NotIn(newLeftNode,properRightJoinColumns));
    }
  }

  private void separateJoinCondition (RexNode joinCondition, List<RexNode> leftJoinColumns, List<RexNode> rightJoinColumns,int offSize){
    if (joinCondition.getKind() == SqlKind.EQUALS) {
      RexCall callNode = (RexCall) joinCondition;
      leftJoinColumns.add(callNode.getOperands().get(0));
      RexNode rightColumn = callNode.getOperands().get(1);
      rightJoinColumns.add(RexNodeHelper.minusOffSize(rightColumn,offSize));
      return;
    }
    if (joinCondition.getKind() == SqlKind.AND ) {
      RexCall callNode = (RexCall) joinCondition;
      for (RexNode newJoinCondition : callNode.getOperands()){
        separateJoinCondition(newJoinCondition,leftJoinColumns,rightJoinColumns,offSize);
      }
      return;
    }
    System.out.println("the SQL kind IS NOT support in separateJoinCondition:"+joinCondition.getKind());
    return;
  }

  private void updateNode (AlgeNode node, List<RexNode> joinColumns){
    if (node instanceof SPJNode){
      updateSPJ((SPJNode)node,joinColumns);
    }else{
      for (AlgeNode input : node.getInputs()){
        updateSPJ((SPJNode)input,joinColumns);
      }
    }

  }

  private void updateSPJ (SPJNode spjNode,List<RexNode> joinColumns){
    List<RexNode> newOutputExprs  = new ArrayList<>();
    for (RexNode joinColumn : joinColumns){
      newOutputExprs.add(RexNodeHelper.substitute(joinColumn,spjNode.getOutputExpr()));
    }
    spjNode.setOutputExpr(newOutputExprs);
  }

  private void addInputs(AlgeNode child,List<AlgeNode> inputs){
    if(child instanceof SPJNode){
      inputs.addAll(child.getInputs());
    }else{
      inputs.add(child);
    }
  }

  static public SPJNode wrapBySPJ (AggregateNode aggNode, Context z3Context){
    Set<RexNode> emptyCondition = new HashSet<>();
    List<AlgeNode> inputs = new ArrayList<AlgeNode>();
    inputs.add(aggNode);
    return (new SPJNode(aggNode.getOutputExpr(),emptyCondition,inputs,z3Context));
  }

  static public SPJNode wrapBySPJWithCondition (AggregateNode aggNode, Set<RexNode> conditions, Context z3Context){
    List<AlgeNode> inputs = new ArrayList<AlgeNode>();
    inputs.add(aggNode);
    return (new SPJNode(aggNode.getOutputExpr(),conditions,inputs,z3Context));
  }
}
