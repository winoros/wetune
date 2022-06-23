package wtune.sql.ast;

import wtune.common.tree.LabeledTreeContext;
import wtune.sql.schema.Schema;

public interface SqlContext extends LabeledTreeContext<SqlKind> {
  Schema schema();

  String dbType();

  void setSchema(Schema schema);

  void setDbType(String dbType);

  void displaceNode(int oldNode, int newNode);

  <T extends AdditionalInfo<T>> T getAdditionalInfo(AdditionalInfo.Key<T> key);

  void removeAdditionalInfo(AdditionalInfo.Key<?> key);

  void clearAdditionalInfo();

  static SqlContext mk(int expectedNumNodes) {
    return new SqlContextImpl(expectedNumNodes, null);
  }
}
