package wtune.superopt.uexpr;

import java.util.Collections;
import java.util.List;

public interface UAtom extends UTerm {
  @Override
  default List<UTerm> subTerms() {
    return Collections.emptyList();
  }

  @Override
  default UKind kind() {
    return UKind.ATOM;
  }
}
