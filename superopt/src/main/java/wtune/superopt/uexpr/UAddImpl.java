package wtune.superopt.uexpr;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import static wtune.common.utils.Commons.joining;
import static wtune.common.utils.IterableSupport.any;
import static wtune.superopt.uexpr.UExprSupport.transformTerms;

final class UAddImpl implements UAdd {
  private final List<UTerm> factors;

  UAddImpl(List<UTerm> factors) {
    this.factors = factors;
  }

  static UAdd mk(UTerm e0, UTerm e1) {
    final List<UTerm> factors = new ArrayList<>(e0.subTerms().size() + e1.subTerms().size());
    addFactor(factors, e0);
    addFactor(factors, e1);
    return new UAddImpl(factors);
  }

  private static void addFactor(List<UTerm> factors, UTerm factor) {
    if (factor.kind() == UKind.ADD) factors.addAll(factor.subTerms());
    else factors.add(factor);
  }

  @Override
  public List<UTerm> subTerms() {
    return factors;
  }

  @Override
  public boolean isUsing(UVar var) {
    return any(factors, it -> it.isUsing(var));
  }

  @Override
  public UTerm replaceBaseVar(UVar baseVar, UVar repVar) {
    final List<UTerm> replaced = transformTerms(factors, t -> t.replaceBaseVar(baseVar, repVar));
    if (replaced != factors) return new UAddImpl(replaced);
    else return this;
  }

  @Override
  public String toString() {
    if (factors.size() == 0) return "";
    else if (factors.size() == 1) return factors.get(0).toString();
    return joining(" + ", factors);
  }

  @Override
  public boolean equals(Object obj) {
    if (obj == this) return true;
    if (!(obj instanceof UAdd)) return false;
    final UAdd that = (UAdd) obj;
    return Objects.equals(this.subTerms(), that.subTerms());
  }

  @Override
  public int hashCode() {
    return factors.hashCode();
  }
}
