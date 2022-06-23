package wtune.sql.plan;

import wtune.sql.ast.SqlContext;
import wtune.sql.ast.SqlNode;

import java.util.List;

public interface Expression {
  /** The template of the expression. All the col-refs are replaced by placeholders. */
  SqlNode template();

  /**
   * The used col-refs in the original expression. Should only be used during value-ref solution.
   */
  List<SqlNode> colRefs();

  /** The used col-refs in the `template()`. */
  List<SqlNode> internalRefs();

  /** Interpolate names to placeholders. */
  SqlNode interpolate(SqlContext ctx, Values values);

  Expression copy();

  static Expression mk(SqlNode ast) {
    return new ExpressionImpl(ast);
  }

  /** USE THIS WITH CAUTION!!! Make sure `colRefs` belongs to `ast` */
  static Expression mk(SqlNode ast, List<SqlNode> colRefs) {
    return new ExpressionImpl(ast, colRefs);
  }
}
