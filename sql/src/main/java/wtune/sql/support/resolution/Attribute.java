package wtune.sql.support.resolution;

import wtune.sql.ast.SqlNode;
import wtune.sql.schema.Column;

public interface Attribute {
  String name();

  Relation owner();

  SqlNode expr();

  Column column();
}
