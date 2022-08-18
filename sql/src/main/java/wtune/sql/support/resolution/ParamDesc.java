package wtune.sql.support.resolution;

import wtune.sql.ast.SqlNode;

import java.util.List;

public interface ParamDesc {
  SqlNode node();

  List<ParamModifier> modifiers();

  int index();

  void setIndex(int idx);
}
