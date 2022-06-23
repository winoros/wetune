package wtune.superopt.constraint;

import wtune.common.utils.Lazy;
import wtune.superopt.fragment.Fragment;
import wtune.superopt.fragment.FragmentSupport;
import wtune.superopt.fragment.SymbolNaming;
import wtune.superopt.substitution.Substitution;
import wtune.superopt.util.Complexity;
import wtune.superopt.fragment.Symbol;

import java.util.List;

import static java.util.Collections.emptyList;

public interface ConstraintSupport {
  int ENUM_FLAG_DRY_RUN = 1;
  int ENUM_FLAG_DISABLE_BREAKER_0 = 2 | ENUM_FLAG_DRY_RUN;
  int ENUM_FLAG_DISABLE_BREAKER_1 = 4 | ENUM_FLAG_DRY_RUN;
  int ENUM_FLAG_DISABLE_BREAKER_2 = 8 | ENUM_FLAG_DRY_RUN;
  int ENUM_FLAG_VERBOSE = 16;
  int ENUM_FLAG_USE_SPES = 32;
  int ENUM_FLAG_SINGLE_DIRECTION = 64;
  int ENUM_FLAG_DUMP = ENUM_FLAG_SINGLE_DIRECTION | ENUM_FLAG_VERBOSE;

  static boolean isVerbose(int tweak) {
    return (tweak & ENUM_FLAG_VERBOSE) == ENUM_FLAG_VERBOSE;
  }

  static EnumerationMetrics getEnumerationMetric() {
    return EnumerationMetricsContext.instance().global();
  }

  static StringBuilder stringify(
      Constraint c, SymbolNaming naming, boolean canonical, StringBuilder builder) {
    return new ConstraintStringifier(naming, canonical, builder).stringify(c);
  }

  static StringBuilder stringify(
      Constraints C, SymbolNaming naming, boolean canonical, StringBuilder builder) {
    return new ConstraintStringifier(naming, canonical, builder).stringify(C);
  }

  static List<Substitution> enumConstraints(Fragment f0, Fragment f1, long timeout) {
    return enumConstraints(f0, f1, timeout, 0, null);
  }

  static List<Substitution> enumConstraints(
      Fragment f0, Fragment f1, long timeout, int tweaks, SymbolNaming naming) {
    int bias = pickSource(f0, f1);
    if ((tweaks & ENUM_FLAG_SINGLE_DIRECTION) != 0) bias = bias & 1;
    if (bias == 0) return null;

    List<Substitution> rules = null;

    if ((bias & 1) != 0) {
      final ConstraintsIndex I = new ConstraintsIndex(f0, f1);
      final ConstraintEnumerator enumerator = new ConstraintEnumerator(I, timeout, tweaks);
      enumerator.setNaming(naming);
      rules = enumerator.enumerate();
    }

    if ((bias & 2) != 0) {
      final ConstraintsIndex I = new ConstraintsIndex(f1, f0);
      final ConstraintEnumerator enumerator = new ConstraintEnumerator(I, timeout, tweaks);
      enumerator.setNaming(naming);

      final List<Substitution> rules2 = enumerator.enumerate();
      if (rules == null) rules = rules2;
      else rules.addAll(rules2);
    }

    return rules;
  }

  static List<Substitution> enumConstraintsSPES(Fragment f0, Fragment f1, long timeout) {
    return enumConstraints2(f0, f1, timeout, ENUM_FLAG_USE_SPES, null);
  }

  static List<Substitution> enumConstraints2(
      Fragment f0, Fragment f1, long timeout, int tweaks, SymbolNaming naming) {
    if ((tweaks & ENUM_FLAG_USE_SPES) == ENUM_FLAG_USE_SPES
        && f0.symbolCount(Symbol.Kind.TABLE) != f1.symbolCount(Symbol.Kind.TABLE)) return emptyList(); // heuristic for SPES
    final int bias = pickSource(f0, f1);
    if (bias == 0) return emptyList();

    List<Substitution> rules = null;

    if ((bias & 1) != 0) {
      final ConstraintsIndex I = new ConstraintsIndex(f0, f1);
      final ConstraintEnumerator enumerator = new ConstraintEnumerator(I, timeout, tweaks);
      enumerator.setNaming(naming);
      rules = enumerator.enumerate();
    }

    if ((bias & 2) != 0) {
      final ConstraintsIndex I = new ConstraintsIndex(f1, f0);
      final ConstraintEnumerator enumerator = new ConstraintEnumerator(I, timeout, tweaks);
      enumerator.setNaming(naming);

      final List<Substitution> rules2 = enumerator.enumerate();
      if (rules == null) rules = rules2;
      else rules.addAll(rules2);
    }

    return rules;
  }

  static int pickSource(Fragment f0, Fragment f1) {
    if (f0.equals(f1)) return 1;

    final int numTables0 = f0.symbolCount(Symbol.Kind.TABLE), numTables1 = f1.symbolCount(Symbol.Kind.TABLE);
    final int numAttrs0 = f0.symbolCount(Symbol.Kind.ATTRS), numAttrs1 = f1.symbolCount(Symbol.Kind.ATTRS);
    final int numPreds0 = f0.symbolCount(Symbol.Kind.PRED), numPreds1 = f1.symbolCount(Symbol.Kind.PRED);
    final Lazy<Complexity> complexity0 = Lazy.mk(() -> Complexity.mk(f0));
    final Lazy<Complexity> complexity1 = Lazy.mk(() -> Complexity.mk(f1));

    final int ops0 = FragmentSupport.countOps(f0.root());
    final int ops1 = FragmentSupport.countOps(f1.root());

    int qualified = 0;

    if (numTables0 >= numTables1
        && (numAttrs0 != 0 || numAttrs1 == 0)
        && (numPreds0 != 0 || numPreds1 == 0)
        && ops0 >= ops1
        && complexity0.get().compareTo(complexity1.get()) >= 0) qualified |= 1;

    if (numTables1 >= numTables0
        && (numAttrs1 != 0 || numAttrs0 == 0)
        && (numPreds1 != 0 || numPreds0 == 0)
        && ops1 >= ops0
        && complexity1.get().compareTo(complexity0.get()) >= 0) qualified |= 2;

    return qualified;
  }
}
