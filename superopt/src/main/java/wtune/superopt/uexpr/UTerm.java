package wtune.superopt.uexpr;

import java.util.List;

/** A U-expr. */
public interface UTerm {
  String FUNC_IS_NULL_NAME = "IsNull";

  UKind kind();

  List<UTerm> subTerms();

  boolean isUsing(UVar var);

  UTerm replaceBaseVar(UVar baseVar, UVar repVar);
}
