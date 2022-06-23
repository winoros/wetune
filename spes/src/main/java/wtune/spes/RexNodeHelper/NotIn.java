package wtune.spes.RexNodeHelper;

import org.apache.calcite.rex.RexCall;
import org.apache.calcite.rex.RexNode;
import org.apache.calcite.sql.SqlBinaryOperator;
import org.apache.calcite.sql.SqlKind;
import org.apache.calcite.sql.SqlOperator;
import org.apache.calcite.sql.type.InferTypes;
import org.apache.calcite.sql.type.ReturnTypes;
import wtune.spes.AlgeNode.AlgeNode;

import java.util.Arrays;
import java.util.List;

public class NotIn extends RexCall {
  private AlgeNode subQuery;
  private List<RexNode> columns;
  static SqlOperator NotIn =
      new SqlBinaryOperator(
          SqlKind.NOT_IN.sql,
          SqlKind.NOT_IN,
          32,
          true,
          ReturnTypes.BOOLEAN_NULLABLE,
          InferTypes.FIRST_KNOWN,
          null);

  public NotIn(AlgeNode subQuery, List<RexNode> columns) {
    super(
        RexNodeHelper.typeFactory.createJavaType(Boolean.class),
        NotIn,
        Arrays.asList(subQuery.getOutputExpr().get(0), columns.get(0)));
    this.subQuery = subQuery;
    this.columns = columns;
  }

  public AlgeNode getSubQuery() {
    return this.subQuery;
  }

  public List<RexNode> getColumns() {
    return this.columns;
  }

  public String print() {
    StringBuilder result = new StringBuilder("SpeicalNotIn: (");
    for (RexNode rexNode : this.columns) {
      result.append(rexNode.toString());
    }
    result.append(")\n Subquery: (");
    result.append(this.subQuery.toString() + ")");
    return result.toString();
  }
}
