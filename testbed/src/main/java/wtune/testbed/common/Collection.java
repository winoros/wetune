package wtune.testbed.common;

import wtune.sql.schema.Table;

import java.util.List;

public interface Collection {
  String collectionName();

  List<Element> elements();

  <T> T unwrap(Class<T> cls);

  static Collection ofTable(Table table) {
    return new TableCollection(table);
  }
}
