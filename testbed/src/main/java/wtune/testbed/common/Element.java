package wtune.testbed.common;

import wtune.sql.schema.Column;

public interface Element {
  String collectionName();

  String elementName();

  <T> T unwrap(Class<T> cls);

  static Element ofColumn(Column column) {
    return new ColumnElement(column);
  }
}
