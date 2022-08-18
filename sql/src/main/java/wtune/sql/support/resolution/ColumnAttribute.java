package wtune.sql.support.resolution;

import wtune.sql.ast.SqlNode;
import wtune.sql.schema.Column;

class ColumnAttribute extends AttributeBase {
  private final Column column;

  ColumnAttribute(Relation owner, Column column) {
    super(owner, column.name());
    this.column = column;
  }

  @Override
  public SqlNode expr() {
    return null;
  }

  @Override
  public Column column() {
    return column;
  }
}
