package wtune.demo.equivalence;

import wtune.superopt.logic.LogicSupport;
import wtune.superopt.substitution.Substitution;
import wtune.superopt.uexpr.UExprSupport;

import static wtune.superopt.logic.LogicSupport.*;

public class RuleProveSupport {
  public static final int BUILT_IN_PROVER_TWEAK = 1;
  public static final int SPES_PROVER_TWEAK = 2;

  /**
   * Prove whether a plan template pair is EQ under a set of constraints.
   * That is, prove a candidate rule is correct.
   */
  public static int isEquivalentTemplate(Substitution rule, int tweaks) {
    if (rule == null) return NEQ;

    int answer = UNKNOWN;
    if ((tweaks & BUILT_IN_PROVER_TWEAK) != 0) {
      answer = LogicSupport.proveEq(UExprSupport.translateToUExpr(rule));
    }

    if ((tweaks & SPES_PROVER_TWEAK) != 0) {
      if (answer == EQ) return answer;
      answer = LogicSupport.proveEqBySpes(rule);
    }

    return answer;
  }
}
