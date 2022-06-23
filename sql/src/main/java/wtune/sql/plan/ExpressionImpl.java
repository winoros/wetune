package wtune.sql.plan;

import wtune.sql.ast.SqlContext;
import wtune.sql.ast.SqlNode;
import wtune.sql.ast.SqlNodes;
import wtune.sql.ast.*;

import java.util.List;

import static wtune.sql.SqlSupport.copyAst;
import static wtune.sql.support.locator.LocatorSupport.gatherColRefs;

public class ExpressionImpl implements Expression {
  private final SqlNode template;
  private final List<SqlNode> internalRefs;
  private final List<SqlNode> colRefs;

  ExpressionImpl(SqlNode ast) {
    final SqlContext tempCtx = SqlContext.mk(8);
    this.template = copyAst(ast, tempCtx);
    this.internalRefs = SqlNodes.mk(tempCtx, gatherColRefs(template));
    this.colRefs = SqlNodes.mk(ast.context(), gatherColRefs(ast));
    // To make a template, we extract all the col-refs, and replace the
    // interpolate "#.#" to the original position.
    // e.g., "t.x > 10" becomes "#.# > 10"
    for (SqlNode colRef : internalRefs) putPlaceholder(colRef);
  }

  ExpressionImpl(SqlNode ast, List<SqlNode> colRefs) {
    this.template = ast;
    this.colRefs = colRefs;
    this.internalRefs = colRefs;
  }

  private ExpressionImpl(SqlNode ast, List<SqlNode> internalRefs, List<SqlNode> colRefs) {
    this.template = ast;
    this.internalRefs = internalRefs;
    this.colRefs = colRefs;
  }

  @Override
  public SqlNode template() {
    return template;
  }

  @Override
  public List<SqlNode> colRefs() {
    return colRefs;
  }

  @Override
  public List<SqlNode> internalRefs() {
    return internalRefs;
  }

  @Override
  public SqlNode interpolate(SqlContext ctx, Values values) {
    if (internalRefs.isEmpty() && (values == null || values.isEmpty()))
      return copyAst(template, ctx);

    if (values == null || internalRefs.size() != values.size())
      throw new PlanException("mismatched # of values during interpolation");

    for (int i = 0, bound = internalRefs.size(); i < bound; i++) {
      final SqlNode colName = internalRefs.get(i).$(ExprFields.ColRef_ColName);
      final Value value = values.get(i);
      colName.$(SqlNodeFields.ColName_Table, value.qualification());
      colName.$(SqlNodeFields.ColName_Col, value.name());
    }

    final SqlNode newAst = copyAst(template, ctx);
    for (SqlNode colRef : internalRefs) putPlaceholder(colRef);
    return newAst;
  }

  @Override
  public Expression copy() {
    return new ExpressionImpl(template, internalRefs, colRefs);
  }

  @Override
  public String toString() {
    return template.toString();
  }

  private void putPlaceholder(SqlNode colRef) {
    final SqlNode colName = colRef.$(ExprFields.ColRef_ColName);
    colName.$(SqlNodeFields.ColName_Table, PlanSupport.PLACEHOLDER_NAME);
    colName.$(SqlNodeFields.ColName_Col, PlanSupport.PLACEHOLDER_NAME);
  }
}
