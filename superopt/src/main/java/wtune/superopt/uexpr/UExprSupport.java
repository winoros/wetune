package wtune.superopt.uexpr;

import wtune.superopt.substitution.Substitution;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;

import static wtune.common.utils.Commons.coalesce;

public abstract class UExprSupport {
  public static final int UEXPR_FLAG_SUPPORT_DEPENDENT_SUBQUERY = 1;
  public static final int UEXPR_FLAG_CHECK_SCHEMA_FEASIBLE = 2;

  private UExprSupport() {}

  static UTerm normalizeExpr(UTerm expr) {
    return UNormalization.normalizeTerm(expr);
  }

  /**
   * Apply transformation to each term in `terms`.
   *
   * <p>Returns the original `terms` if each term are not changed (or changed in-place). Otherwise,
   * a new list.
   */
  static List<UTerm> transformTerms(List<UTerm> terms, Function<UTerm, UTerm> transformation) {
    List<UTerm> copies = null;
    for (int i = 0, bound = terms.size(); i < bound; i++) {
      final UTerm subTerm = terms.get(i);
      final UTerm modifiedSubTerm = transformation.apply(subTerm);
      if (modifiedSubTerm != subTerm) {
        if (copies == null) copies = new ArrayList<>(terms);
        copies.set(i, modifiedSubTerm);
      }
    }

    return coalesce(copies, terms);
  }

  static UTerm remakeTerm(UTerm template, List<UTerm> subTerms) {
    if (subTerms == template.subTerms()) return template;

    // should not reach here by design
    return switch (template.kind()) {
      case ATOM -> template;
      case ADD -> UAdd.mk(subTerms);
      case MULTIPLY -> UMul.mk(subTerms);
      case NEGATION -> UNeg.mk(subTerms.get(0));
      case SQUASH -> USquash.mk(subTerms.get(0));
      case SUMMATION -> USum.mk(((USum) template).boundedVars(), subTerms.get(0));
    };
  }

  /**
   * Apply transformation to each sub term of `term`.
   *
   * <p>Returns the original `terms` if each term are not changed (or changed in-place). Otherwise,
   * a new list.
   */
  static UTerm transformSubTerms(UTerm expr, Function<UTerm, UTerm> transformation) {
    return remakeTerm(expr, transformTerms(expr.subTerms(), transformation));
  }

  public static UExprTranslationResult translateToUExpr(Substitution rule) {
    return new UExprTranslator(rule, 0).translate();
  }

  public static UExprTranslationResult translateToUExpr(Substitution rule, int tweaks) {
    return new UExprTranslator(rule, tweaks).translate();
  }
}
