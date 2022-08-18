package wtune.sql.support.resolution;

import wtune.sql.ast.SqlNode;
import wtune.sql.ast.SqlKind;
import wtune.sql.ast.TableSourceKind;

import java.util.List;

public interface Relation {
  SqlNode rootNode(); // invariant: isRelationBoundary(rootNode())

  String qualification();

  List<Relation> inputs();

  List<Attribute> attributes();

  Attribute resolveAttribute(String qualification, String name);

  static boolean isRelationRoot(SqlNode node) {
    return SqlKind.Query.isInstance(node) || TableSourceKind.SimpleSource.isInstance(node);
  }
}
