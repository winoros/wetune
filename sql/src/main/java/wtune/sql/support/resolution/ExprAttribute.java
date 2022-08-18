package wtune.sql.support.resolution;

import wtune.sql.ast.SqlNode;
import wtune.sql.schema.Column;

class ExprAttribute extends AttributeBase {
  private final SqlNode expr;

  ExprAttribute(Relation owner, String name, SqlNode expr) {
    super(owner, name);
    this.expr = expr;
  }

  @Override
  public SqlNode expr() {
    return expr;
  }

  @Override
  public Column column() {
    return null;
  }
}
