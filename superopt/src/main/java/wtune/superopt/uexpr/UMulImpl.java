package wtune.superopt.uexpr;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

import static wtune.common.utils.IterableSupport.any;
import static wtune.superopt.uexpr.UExprSupport.transformTerms;

final class UMulImpl implements UMul {
  private final List<UTerm> factors;

  UMulImpl(List<UTerm> factors) {
    this.factors = factors;
  }

  static UMul mk(UTerm e) {
    final List<UTerm> factors = new ArrayList<>(e.subTerms().size() + 1);
    addFactor(factors, e);
    return new UMulImpl(factors);
  }

  static UMul mk(UTerm e0, UTerm e1) {
    final List<UTerm> factors = new ArrayList<>(e0.subTerms().size() + e1.subTerms().size() + 1);
    addFactor(factors, e0);
    addFactor(factors, e1);
    return new UMulImpl(factors);
  }

  static UMul mk(UTerm e0, UTerm e1, UTerm... others) {
    final int sum = Arrays.stream(others).map(UTerm::subTerms).mapToInt(List::size).sum();
    final List<UTerm> factors =
        new ArrayList<>(e0.subTerms().size() + e1.subTerms().size() + sum + 1);
    addFactor(factors, e0);
    addFactor(factors, e1);
    for (UTerm factor : others) addFactor(factors, factor);
    return new UMulImpl(factors);
  }

  private static void addFactor(List<UTerm> factors, UTerm factor) {
    if (factor.kind() == UKind.MULTIPLY) factors.addAll(factor.subTerms());
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
    if (replaced != factors) return new UMulImpl(replaced);
    else return this;
  }

  @Override
  public String toString() {
    if (factors.size() == 0) return "";
    else if (factors.size() == 1) return factors.get(0).toString();
    final StringBuilder builder = new StringBuilder(factors.size() * 4);

    final UTerm first = factors.get(0);
    if (first.kind() == UKind.ADD) builder.append('(');
    builder.append(factors.get(0));
    if (first.kind() == UKind.ADD) builder.append('(');

    for (int i = 1, bound = factors.size(); i < bound; i++) {
      final UTerm term = factors.get(i);
      builder.append(" * ");
      if (term.kind() == UKind.ADD) builder.append('(');
      builder.append(term);
      if (term.kind() == UKind.ADD) builder.append(')');
    }

    return builder.toString();
  }

  @Override
  public boolean equals(Object obj) {
    if (obj == this) return true;
    if (!(obj instanceof UMul)) return false;
    final UMul that = (UMul) obj;
    return Objects.equals(this.subTerms(), that.subTerms());
  }

  @Override
  public int hashCode() {
    return factors.hashCode();
  }
}
