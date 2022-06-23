package wtune.superopt.logic;

import com.microsoft.z3.Context;
import com.microsoft.z3.Global;
import wtune.superopt.nodetrans.SPESSupport;
import wtune.superopt.substitution.Substitution;
import wtune.superopt.substitution.SubstitutionSupport;
import wtune.superopt.uexpr.*;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class LogicSupport {
  static {
    final String timeout = System.getProperty("wetune.smt_timeout", "20");
    Global.setParameter("smt.random_seed", "9876543210");
    Global.setParameter("smt.qi.quick_checker", "2");
    Global.setParameter("smt.qi.max_multi_patterns", "1024");
    Global.setParameter("smt.mbqi.max_iterations", "3");
    Global.setParameter("timeout", timeout);
    Global.setParameter("combined_solver.solver2_unknown", "0");
    Global.setParameter("pp.max_depth", "100");
  }

  public static final int EQ = 0, NEQ = -1, UNKNOWN = 1, FAST_REJECTED = -2;
  private static final AtomicInteger NUM_INVOCATIONS = new AtomicInteger(0);

  static boolean dumpFormulas;

  private LogicSupport() {}

  static void incrementNumInvocations() {
    NUM_INVOCATIONS.incrementAndGet();
  }

  public static void setDumpFormulas(boolean dumpFormulas) {
    LogicSupport.dumpFormulas = dumpFormulas;
  }

  public static String stringifyResult(int result) {
    return switch (result) {
      case EQ -> "EQ";
      case NEQ -> "NEQ";
      case UNKNOWN -> "UNKNOWN";
      case FAST_REJECTED -> "FAST_REJECTED";
      default -> "??";
    };
  }

  public static int numInvocations() {
    return NUM_INVOCATIONS.get();
  }

  public static int proveEq(UExprTranslationResult uExprs) {
    try (final Context z3 = new Context()) {
      return new LogicProver(uExprs, z3).proveEq();
    }
  }

  public static int proveEqBySpes(Substitution rule) {
    try{
      var planPair = SubstitutionSupport.translateAsPlan2(rule);
      boolean eq = SPESSupport.prove(planPair.getLeft(), planPair.getRight());
      return eq ? EQ : NEQ;
    } catch (Exception e) {
      return NEQ;
    }
  }

  public static boolean isMismatchedOutput(UExprTranslationResult uExprs) {
    // case 1: different output schema
    final UVar sourceOutVar = uExprs.sourceOutVar();
    final UVar targetOutVar = uExprs.targetOutVar();
    final SchemaDesc srcOutSchema = uExprs.schemaOf(sourceOutVar);
    final SchemaDesc tgtOutSchema = uExprs.schemaOf(targetOutVar);
    assert srcOutSchema != null && tgtOutSchema != null;
    return !srcOutSchema.equals(tgtOutSchema);
  }

  public static boolean isMismatchedSummation(UExprTranslationResult uExprs) {
    // cast 2: unaligned variables
    // master: the side with more bounded variables, or the source side if the numbers are equal
    // master: the side with less bounded variables, or the target side if the numbers are equal
    final UTerm srcTerm = uExprs.sourceExpr(), tgtTerm = uExprs.targetExpr();
    final UTerm masterTerm = getMaster(srcTerm, tgtTerm);
    final UTerm slaveTerm = getSlave(srcTerm, tgtTerm);
    return !getBoundedVars(masterTerm).containsAll(getBoundedVars(slaveTerm));
  }

  public static boolean isLatentSummation(UExprTranslationResult uExprs) {
    return containsLatentSummation(getBody(uExprs.sourceExpr()))
        || containsLatentSummation(getBody(uExprs.targetExpr()));
  }

  static boolean containsLatentSummation(UTerm term) {
    // Sum + Sum or Sum * Sum
    final UKind kind = term.kind();
    if (kind == UKind.SUMMATION) return true;
    if (kind == UKind.SQUASH || kind == UKind.NEGATION || kind == UKind.ATOM) return false;
    if (kind == UKind.ADD || kind == UKind.MULTIPLY)
      for (UTerm subTerm : term.subTerms()) {
        if (containsLatentSummation(subTerm)) return true;
      }
    return false;
  }

  static boolean isFastRejected(UExprTranslationResult uExprs) {
    return isMismatchedOutput(uExprs) || isMismatchedSummation(uExprs) || isLatentSummation(uExprs);
  }

  static Set<UVar> getBoundedVars(UTerm expr) {
    // Returns the summation variables for a summation, otherwise an empty list.
    if (expr.kind() == UKind.SUMMATION) return ((USum) expr).boundedVars();
    else return Collections.emptySet();
  }

  static UTerm getMaster(UTerm e0, UTerm e1) {
    final Set<UVar> vars0 = getBoundedVars(e0);
    final Set<UVar> vars1 = getBoundedVars(e1);
    if (vars0.size() >= vars1.size()) return e0;
    else return e1;
  }

  static UTerm getSlave(UTerm e0, UTerm e1) {
    final Set<UVar> vars0 = getBoundedVars(e0);
    final Set<UVar> vars1 = getBoundedVars(e1);
    if (vars0.size() < vars1.size()) return e0;
    else return e1;
  }

  static UTerm getBody(UTerm expr) {
    if (expr.kind() == UKind.SUMMATION) return ((USum) expr).body();
    else return expr;
  }
}
