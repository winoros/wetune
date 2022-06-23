package wtune.sql.schema;

import wtune.common.utils.IterableSupport;
import wtune.common.utils.ListSupport;
import wtune.sql.ast.SqlNode;
import wtune.sql.ast.constants.ConstraintKind;

import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

import static wtune.common.utils.IterableSupport.lazyFilter;

public class SchemaSupport {
  public static List<Constraint> findIC(Schema schema, List<Column> columns, ConstraintKind type) {
    if (columns.isEmpty()) return Collections.emptyList();

    final String ownerTable = columns.get(0).tableName();
    if (!IterableSupport.all(columns, it -> ownerTable.equals(it.tableName())))
      return Collections.emptyList();

    final Table table = schema.table(ownerTable);
    if (table == null) throw new NoSuchElementException("no such table: " + ownerTable);

    final Iterable<Constraint> constraints = table.constraints(type);
    return ListSupport.filter(constraints, it -> it.columns().equals(columns));
  }

  public static Iterable<Constraint> findRelatedIC(
      Schema schema, Column column, ConstraintKind type) {
    final String ownerTable = column.tableName();
    final Table table = schema.table(ownerTable);
    if (table == null) throw new NoSuchElementException("no such table: " + ownerTable);
    return lazyFilter(table.constraints(type), it -> it.columns().contains(column));
  }

  public static Schema parseSchema(String dbType, String schemaDef) {
    return Schema.parse(dbType, schemaDef);
  }

  public static Schema parseSimpleSchema(String dbType, SqlNode ast) {
    final SchemaDetector detector = new SchemaDetector(ast, dbType);
    if (detector.detect()) return detector.getSchema();
    return null;
  }

}
