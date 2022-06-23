package wtune.superopt.constraint;

import wtune.common.utils.PartialOrder;
import wtune.superopt.fragment.*;
import wtune.superopt.logic.LogicSupport;
import wtune.superopt.substitution.Substitution;
import wtune.superopt.uexpr.UExprTranslationResult;
import wtune.superopt.uexpr.UExprSupport;

import java.util.*;

import static java.lang.System.currentTimeMillis;
import static wtune.common.utils.IterableSupport.any;
import static wtune.common.utils.IterableSupport.zip;
import static wtune.common.utils.ListSupport.map;
import static wtune.superopt.constraint.Constraint.Kind.*;
import static wtune.superopt.constraint.ConstraintSupport.*;
import static wtune.superopt.uexpr.UExprSupport.translateToUExpr;
import static wtune.common.utils.PartialOrder.*;

class ConstraintEnumerator {
  /*
   * Please also refer the WeTune paper's section 4.2.
   *
   * + Preconditions & Instantiations
   * Constraint are separated into two parts: preconditions and instantiations.
   * - Preconditions
   *   Constraints only regarding the source side's symbols.
   *   Together with the structure of template, they are used to match a pattern in a
   *   concrete plan during optimization.
   * - Instantiations
   *   Eq-constraints that assign the target side's symbols from the source side.
   *   After preconditions are satisfied, assign concrete values to target side's symbols
   *   to construct a replacement of the matched pattern in a concrete plan.
   *
   * + Validness
   *   This section describes whether a constraint set is valid.
   *   "must ..." in the section means that "a valid constraint set are required to ..."
   * - AttrsSub
   *   For each source-side Attrs `a`, there must be one and only one `AttrsSub(a,s)`,
   *   where `s` is a viable source according to the structure of plan template.
   * - Table Instantiation
   *   Each Table symbol must be exclusively instantiated.
   *   e.g., if there is a target-side Table `t1` being instantiated from a source-side Table `t0`,
   *   then another target-side Table `t2` are not allowed to be instantiated from `t0` too.
   * - Attrs Instantiation
   *   Each Attrs must be instantiated by a symbol whose source is viable in the target-side structure.
   *   e.g. Proj<a0>(InnerJoin<k0,k1>(t0,t1)) vs. Proj<a1>(t0), AttrsSub(k1,t1). Then `a1` must not be
   *   instantiated from `k1` since there are no `t1` at the target side.
   * - Predicate Instantiation: Always valid.
   * - TableEq: Always valid.
   * - AttrsEq
   *   An AttrsEq(a1,a2) is valid only if \exists t1,t2. AttrsSub(a1,t1) /\ AttrsSub(a2,t2) /\ TableEq(t1,t2).
   * - PredicateEq: Always valid.
   * - Unique/NotNull
   *   A Unique/NotNull(t,a) is valid only if `AttrsSub(a,t)`
   * - Reference
   *   A Reference(t1,a1,t2,a2) is valid only if `AttrsSub(a1,t1) /\ AttrsSub(a2,t2)`
   *
   * + Closure
   *   Given a (valid) constraints set `C`, we denote its closure under implication by `C+`.
   *   i.e. if a constraint `c` satisfies `C` => `c`, then `c` \in `C+`.
   *   The rule of `=>` is listed as follows.
   * - AttrsSub: N/A
   * - Instantiation: N/A
   * - TableEq/AttrsEq/PredicateEq: by the transitivity of "="
   * - Unique/NotNull
   *   TableEq(t1,t2) /\ AttrsEq(a1,a2) /\ Unique/NotNull(t1,a1) /\ AttrsSub(a2,t2) => Unique/NotNull(t2,a2)
   * - Reference: similar to Unique/NotNull.
   *
   * + Stages
   * The enumeration are divided into stages. Each stage enumerates a subset of constraints
   * and recursively invokes the next stage. Validness are enforced during enumeration. The output
   * of an iteration is just the closure.
   * There are also "breaker" stages that breaks the current iteration and skips to next iteration,
   * if the determined parts must lead to non-equivalence. The stages are sequenced as follows:
   *     AttrsSub -> Instantiation -> MismatchedOutputBreaker ->
   *     Eq -> Unique -> MismatchedSummationBreaker ->
   *     NotNull -> Reference
   * - AttrsSub
   *   For each source-side Attrs symbol "a", determine the "x" in AttrsSub(a,x).
   *   We call "x" is the "source" of "a"
   * - Instantiation
   *   For each target-side symbols "s", determine it should be assigned from which source-side symbol.
   * - MismatchedOutputBreaker
   *   The output schema of the two plan templates is decided now. Fast reject if they are mismatched.
   *   e.g. Join(t1,t2) can never be equivalent to Proj(t1).
   * - Eq
   *   For each kind of source-side symbols, enumerate the equivalence class partitions.
   *   e.g., for 3 Table symbols {t1,t2,t3}, the partitions {{t1,t2,t3}}, {{t1,t2},t3}, ...
   *   are enumerated, which corresponds to t1=t2 /\ t1=t3 /\ t2=t3, t1=t2, ... respectively.
   * - Unique
   *   For each Attrs symbol, determine whether it is unique key.
   * - MismatchedSummationBreaker
   *   The summation variable of two plans' U-exprs are decided now. Fast reject if either side is not
   *   the subset of another (i.e. theorem 5.1 and 5.2 are neither applicable)
   *   e.g. Sum{x}(T(x)) vs. Sum{y}(|Sum{x}(T(x) * [y = a(x)])|)
   *     Why this breaker is here? i.e, why the summation vars are decided here? Basically, they can be
   *     decided earlier (right after instantiation stage). However, some essential tricks in U-expr
   *     translation delay the timing until determining Unique. See UExprTranslator for details.
   * - NotNull
   *   For each Attrs symbol, determine whether it is NOT NULL.
   * - Reference
   *   For each join key pair, determine whether there are foreign key between them.
   *
   * + Prune
   * Pruning is essentially summarized as two conditions:
   *   ((C => C') /\ (C => q != q')) => (C' => q != q')
   *   ((C => C') /\ (C' => q = q)) => (C => q = q')
   * Thus, the verification result and its correspondent constraint C are remembered during enumeration.
   * The following enumeration can leverage this information to avoid redundant SMT invocation.
   */
  private static final int FREE = 0, MUST_ENABLE = 1, MUST_DISABLE = 2, CONFLICT = 3;
  private static final int TIMEOUT = Integer.MAX_VALUE;

  private final ConstraintsIndex I;
  private final long timeout;
  private final BitSet enabled;
  private final List<Generalization> knownEqs, knownNeqs;
  private final EnumerationStage[] stages;
  private final int tweak;

  private SymbolNaming naming;
  private EnumerationMetrics metric;

  ConstraintEnumerator(ConstraintsIndex I, long timeout, int tweak) {
    this.I = I;
    this.timeout = timeout < 0 ? Long.MAX_VALUE : timeout;
    this.enabled = new BitSet(I.size());
    this.knownEqs = new LinkedList<>();
    this.knownNeqs = new LinkedList<>();
    this.tweak = tweak;
    this.stages = mkStages();
    currentSet(0, I.size() - 1, false);
  }

  List<Substitution> enumerate() {
    try (EnumerationMetrics metric = EnumerationMetrics.open()) {
      try (var ignored = metric.elapsedEnum.timeIt()) {
        this.metric = metric;
        if (isVerbose()) {
          System.out.println("source: " + I.sourceTemplate().stringify(naming));
          System.out.println("target: " + I.targetTemplate().stringify(naming));
          System.out.println("C*: size=" + I.size());
          System.out.println("  " + I.toString(naming));
          System.out.println();
        }

        stages[0].enumerate();

        metric.numTotalConstraintSets.set(I.size());

        return map(knownEqs, it -> I.mkRule(it.bits.get(0)));
      }
    }
  }

  //// initialization ////

  private EnumerationStage[] mkStages() {
    final boolean disable0 = (tweak & ENUM_FLAG_DISABLE_BREAKER_0) == ENUM_FLAG_DISABLE_BREAKER_0;
    final boolean disable1 = (tweak & ENUM_FLAG_DISABLE_BREAKER_1) == ENUM_FLAG_DISABLE_BREAKER_1;
    final boolean disable2 = (tweak & ENUM_FLAG_DISABLE_BREAKER_2) == ENUM_FLAG_DISABLE_BREAKER_2;
    final boolean dryRun =
        disable0 || disable1 || disable2 || (tweak & ENUM_FLAG_DRY_RUN) == ENUM_FLAG_DRY_RUN;
    final boolean useSpes = (tweak & ENUM_FLAG_USE_SPES) == ENUM_FLAG_USE_SPES;

    final EnumerationStage sourceEnum = new AttrsSourceEnumerator();
    final EnumerationStage tableInstantiation = new InstantiationEnumerator(Symbol.Kind.TABLE);
    final EnumerationStage attrsInstantiation = new InstantiationEnumerator(Symbol.Kind.ATTRS);
    final EnumerationStage schemaInstantiation = new InstantiationEnumerator(Symbol.Kind.SCHEMA);
    final EnumerationStage predInstantiation = new InstantiationEnumerator(Symbol.Kind.PRED);
    final EnumerationStage funcInstantiation = new InstantiationEnumerator(Symbol.Kind.FUNC);
    final EnumerationStage mismatchedOutputBreaker = new MismatchedOutputBreaker(disable0);
    final EnumerationStage tableEqEnum = new PartitionEnumerator(Symbol.Kind.TABLE, dryRun);
    final EnumerationStage attrsEqEnum = new PartitionEnumerator(Symbol.Kind.ATTRS, dryRun);
    final EnumerationStage mismatchedProjSchemaBreaker = new InfeasibleSchemaBreaker(disable1);
    final EnumerationStage predEqEnum = new PartitionEnumerator(Symbol.Kind.PRED, dryRun);
    final EnumerationStage funcEqEnum = new ForceSymbolEqEnumerator(Symbol.Kind.FUNC);
    final EnumerationStage unionBreaker = new UnionMismatchedOutputBreaker(disable0);
    final EnumerationStage uniqueEnum = new BinaryEnumerator(Unique);
    final EnumerationStage notNullEnum = new BinaryEnumerator(NotNull);
    final EnumerationStage refEnum = new BinaryEnumerator(Reference);
    final EnumerationStage mismatchedSummationBreaker = new MismatchedSummationBreaker(disable2);
    final EnumerationStage timeout = new TimeoutBreaker(currentTimeMillis(), this.timeout);
    final VerificationCache cache = new VerificationCache(dryRun);
    final EnumerationStage verifier = new Verifier(useSpes);

    final EnumerationStage[] stages;
    if (!useSpes) {
      stages =
          new EnumerationStage[] {
            sourceEnum,
            tableInstantiation,
            schemaInstantiation,
            attrsInstantiation,
            predInstantiation,
            mismatchedOutputBreaker,
            tableEqEnum,
            attrsEqEnum,
            mismatchedProjSchemaBreaker,
            predEqEnum,
            uniqueEnum,
            mismatchedSummationBreaker,
            notNullEnum,
            refEnum,
            timeout,
            cache,
            verifier
          };
    } else {
      stages =
          new EnumerationStage[] {
            sourceEnum,
            tableInstantiation,
            schemaInstantiation,
            attrsInstantiation,
            predInstantiation,
            funcInstantiation,
            mismatchedOutputBreaker,
            tableEqEnum,
            attrsEqEnum,
            // mismatchedProjSchemaBreaker,
            predEqEnum,
            funcEqEnum,
            unionBreaker,
            // uniqueEnum,
            // mismatchedSummationBreaker,
            // notNullEnum,
            // refEnum,
            timeout,
            cache,
            verifier
          };
    }

    for (int i = 0, bound = stages.length - 1; i < bound; ++i)
      stages[i].setNextStage(stages[i + 1]);
    return stages;
  }

  public void setNaming(SymbolNaming naming) {
    this.naming = naming;
  }

  private boolean isVerbose() {
    return ConstraintSupport.isVerbose(tweak) && naming != null;
  }
  //// inspection of current state ////

  private void currentSet(int index, boolean enable) {
    enabled.set(index, enable);
  }

  private void currentSet(int from, int to, boolean enable) {
    enabled.set(from, to, enable);
  }

  private boolean currentIsEnabled(int index) {
    return enabled.get(index);
  }

  private boolean currentIsEq(Symbol sym0, Symbol sym1) {
    return sym0 == sym1
        || (sym0.kind() == sym1.kind() && currentIsEnabled(I.indexOfEq(sym0, sym1)));
  }

  private Symbol currentSourceOf(/* Attrs only */ Symbol sym) {
    // if (sym.kind() == SCHEMA) {
    //   final Op owner = I.sourceSymbols().ownerOf(sym);
    //   assert owner.kind() == PROJ;
    //   sym = ((Proj) owner).attrs();
    // }
    assert sym.kind() == Symbol.Kind.ATTRS;

    final int begin = I.beginIndexOfKind(AttrsSub);
    final int end = I.endIndexOfKind(AttrsSub);
    for (int i = begin; i < end; ++i) {
      final Constraint c = I.get(i);
      if (currentIsEnabled(i) && c.symbols()[0] == sym) return c.symbols()[1];
    }
    return null;
  }

  private Symbol deepSourceOf(Symbol sym) {
    final List<Symbol> sourceChain = new ArrayList<>(3);
    collectSourceChain(sym, sourceChain);
    return sourceChain.get(sourceChain.size() - 1);
  }

  private void collectSourceChain(Symbol sym, List<Symbol> sourceChain) {
    assert sym.kind() == Symbol.Kind.ATTRS || sym.kind() == Symbol.Kind.SCHEMA || sym.kind() == Symbol.Kind.TABLE;
    Symbol.Kind kind = sym.kind();

    if (kind == Symbol.Kind.ATTRS) {
      final Symbol source = currentSourceOf(sym);
      assert source != null;
      sourceChain.add(source);
      collectSourceChain(source, sourceChain);
      return;
    }

    if (kind == Symbol.Kind.SCHEMA) {
      final Op owner = I.sourceSymbols().ownerOf(sym);
      assert owner.kind() == OpKind.PROJ || owner.kind() == OpKind.AGG;
      if (owner.kind() == OpKind.PROJ) {
        final Proj proj = ((Proj) owner);
        collectSourceChain(proj.attrs(), sourceChain);
      } else {
        final Agg agg = ((Agg) owner);
        collectSourceChain(agg.groupByAttrs(), sourceChain);
        collectSourceChain(agg.aggregateAttrs(), sourceChain);
      }
    }
  }

  private Symbol currentInstantiationOf(Symbol sym) {
    assert sym.ctx() == I.targetSymbols();

    final Symbol.Kind kind = sym.kind();
    final int begin = I.beginIndexOfInstantiation(kind);
    final int end = I.endIndexOfInstantiation(kind);
    for (int i = begin; i < end; ++i) {
      final Constraint instantiation = I.get(i);
      if (currentIsEnabled(i) && instantiation.symbols()[0] == sym)
        return instantiation.symbols()[1];
    }

    return null;
  }

  //// rules about force-enabled/disable ////

  private int checkForced(int index) {
    final Constraint.Kind kind = I.get(index).kind();
    switch (kind) {
      case AttrsSub:
        return checkAttrsSubForced(index);
      case TableEq:
        return checkTableEqForced(index);
      case AttrsEq:
        return checkAttrsEqForced(index);
      case PredicateEq:
        return checkPredEqForced(index);
      case FuncEq:
        return checkFuncEqForced(index);
      case NotNull:
        return checkNotNullForced(index);
      case Unique:
        return checkUniqueForced(index);
      case Reference:
        return checkReferenceForced(index);
      default:
        throw new IllegalArgumentException("unknown constraint kind" + kind);
    }
  }

  private int checkTableEqForced(int index) {
    return FREE;
  }

  private int checkAttrsSubForced(int index) {
    final Constraint attrsSub = I.get(index);
    final Symbol attrsSym = attrsSub.symbols()[0];
    if (I.viableSourcesOf(attrsSym).size() == 1) return MUST_ENABLE;

    final Symbol sourceSym = attrsSub.symbols()[1];
    final Symbol currentSource = currentSourceOf(attrsSym);
    if (currentSource != null && currentSource != sourceSym) return MUST_DISABLE;

    return FREE;
  }

  private int checkAttrsEqForced(int index) {
    final Constraint attrsEq = I.get(index);
    final Symbol attrs0 = attrsEq.symbols()[0], attrs1 = attrsEq.symbols()[1];
    final Symbol source0 = currentSourceOf(attrs0), source1 = currentSourceOf(attrs1);
    assert source0 != null && source1 != null;

    if (source0.kind() == source1.kind()) {
      return !currentIsEq(source0, source1) ? MUST_DISABLE : FREE;
    } else {
      final Symbol deepSource0 = deepSourceOf(attrs0);
      final Symbol deepSource1 = deepSourceOf(attrs1);
      return !currentIsEq(deepSource0, deepSource1) ? MUST_DISABLE : FREE;
    }
  }

  private int checkPredEqForced(int index) {
    return FREE;
  }

  private int checkFuncEqForced(int index) {
    return MUST_ENABLE;
  }

  private int checkNotNullForced(int index) {
    return checkSourceConformity(index) | checkImplication0(index);
  }

  private int checkUniqueForced(int index) {
    return checkSourceConformity(index) | checkImplication0(index);
  }

  private int checkReferenceForced(int index) {
    final Constraint reference = I.get(index);
    final Symbol attrs0 = reference.symbols()[1], attrs1 = reference.symbols()[3];
    final int conformity = checkSourceConformity(index);
    final int implication = checkImplication1(index);
    final int reflexivity = currentIsEq(attrs0, attrs1) ? MUST_ENABLE : FREE;

    int asymmetric = FREE;
    if (reflexivity == FREE)
      for (int i = I.beginIndexOfKind(Reference); i < index; ++i) {
        if (currentIsEnabled(i)) {
          final Constraint c = I.get(i);
          if (attrs0 == c.symbols()[3] && attrs1 == c.symbols()[1]) {
            asymmetric = MUST_DISABLE;
            break;
          }
        }
      }

    return conformity | implication | reflexivity | asymmetric;
  }

  private int checkImplication0(int index) {
    final Constraint c = I.get(index);
    final Symbol[] syms = c.symbols();
    final Symbol attrs = syms[1];
    final Constraint.Kind kind = c.kind();

    for (int i = I.beginIndexOfKind(kind); i < index; ++i) {
      final Constraint other = I.get(i);
      final Symbol otherSource = other.symbols()[0];
      final Symbol otherAttrs = other.symbols()[1];
      if (currentIsEq(attrs, otherAttrs) && currentSourceOf(otherAttrs) == otherSource) {
        return currentIsEnabled(i) ? MUST_ENABLE : MUST_DISABLE;
      }
    }

    return FREE;
  }

  private int checkImplication1(int index) {
    final Constraint c = I.get(index);
    final Symbol[] syms = c.symbols();
    final Symbol attrs0 = syms[1], attrs1 = syms[3];
    final Constraint.Kind kind = c.kind();

    for (int i = I.beginIndexOfKind(kind); i < index; ++i) {
      final Constraint other = I.get(i);
      final Symbol otherSource0 = other.symbols()[0], otherSource1 = other.symbols()[2];
      final Symbol otherAttrs0 = other.symbols()[1], otherAttrs1 = other.symbols()[3];
      if (currentIsEq(attrs0, otherAttrs0)
          && currentIsEq(attrs1, otherAttrs1)
          && currentSourceOf(otherAttrs0) == otherSource0
          && currentSourceOf(otherAttrs1) == otherSource1) {
        return currentIsEnabled(i) ? MUST_ENABLE : MUST_DISABLE;
      }
    }

    return FREE;
  }

  private int checkSourceConformity(int index) {
    final Constraint constraint = I.get(index);
    final Constraint.Kind kind = constraint.kind();
    assert kind.isIntegrityConstraint();
    final Symbol[] syms = constraint.symbols();
    final Symbol source0 = syms[0], attrs0 = syms[1];
    if (currentSourceOf(attrs0) != source0) return MUST_DISABLE;
    if (syms.length > 2) {
      final Symbol source1 = syms[2], attrs1 = syms[3];
      if (currentSourceOf(attrs1) != source1) return MUST_DISABLE;
    }
    return FREE;
  }

  //// rules about instantiation ////

  private boolean validateInstantiation(Symbol from, Symbol to) {
    assert from.kind() == to.kind();
    final Symbol.Kind kind = from.kind();
    switch (kind) {
      case TABLE:
        return validateTableInstantiation(from, to);
      case SCHEMA:
        return validateSchemaInstantiation(from, to);
      case ATTRS:
        return validateAttrsInstantiation(from, to);
      case PRED:
        return validatePredInstantiation(from, to);
      case FUNC:
        return validateFuncInstantiation(from, to);
      default:
        throw new IllegalArgumentException("unknown symbol kind " + kind);
    }
  }

  private boolean validateTableInstantiation(Symbol from, Symbol to) {
    // instantiation of TABLE symbol is required exclusive.
    // i.e., if a different symbol has been instantiated from `from`,
    // then instantiation from `from` to `to` is illegal.
    final int begin = I.beginIndexOfInstantiation(Symbol.Kind.TABLE);
    final int end = I.endIndexOfInstantiation(Symbol.Kind.TABLE);
    for (int i = begin; i < end; ++i) {
      final Constraint other = I.get(i);
      if (currentIsEnabled(i) && other.symbols()[1] == from && other.symbols()[0] != to)
        return false;
    }
    return true;
  }

  private boolean validateSchemaInstantiation(Symbol from, Symbol to) {
    // instantiation of SCHEMA symbol is required exclusive.
    // i.e., if a different symbol has been instantiated from `from`,
    // then instantiation from `from` to `to` is illegal.
    final int begin = I.beginIndexOfInstantiation(Symbol.Kind.SCHEMA);
    final int end = I.endIndexOfInstantiation(Symbol.Kind.SCHEMA);
    for (int i = begin; i < end; ++i) {
      final Constraint other = I.get(i);
      if (currentIsEnabled(i) && other.symbols()[1] == from && other.symbols()[0] != to)
        return false;
    }
    // Agg schema cannot be instantiated to Proj schema
    if (isAggSchema(from) != isAggSchema(to)) return false;

    return true;
  }

  private boolean validateAttrsInstantiation(Symbol from, Symbol to) {
    // First judge whether `from` and `to` are both aggregated
    if (isAggregatedAttrs(from) != isAggregatedAttrs(to)) return false;

    Symbol source = currentSourceOf(from);
    assert source != null;

    final List<Symbol> sourceChain = new ArrayList<>(4);
    collectSourceChain(from, sourceChain);
    // while (source != null) {
    //   sourceChain.add(source);
    //   source = currentSourceOf(source);
    // }

    for (Symbol sourceOfTo : I.viableSourcesOf(to)) {
      final Symbol sourceInstantiation = currentInstantiationOf(sourceOfTo);
      assert sourceInstantiation != null;
      if (sourceChain.contains(sourceInstantiation)) return true;
    }

    return false;
  }

  private boolean validatePredInstantiation(Symbol from, Symbol to) {
    // A HAVING PRED symbol is required not instantiated to a PRED in filter, and vice versa.
    return isAggHavingPred(from) == isAggHavingPred(to);
  }

  private boolean validateFuncInstantiation(Symbol from, Symbol to) {
    return true;
  }

  private boolean isAggSchema(Symbol schema) {
    assert schema.kind() == Symbol.Kind.SCHEMA;
    return schema.ctx().ownerOf(schema).kind() == OpKind.AGG;
  }

  private boolean isAggregatedAttrs(Symbol attrs) {
    assert attrs.kind() == Symbol.Kind.ATTRS;
    final Op owner = attrs.ctx().ownerOf(attrs);
    return owner.kind() == OpKind.AGG && attrs == ((Agg) owner).aggregateAttrs();
  }

  private boolean isAggHavingPred(Symbol pred) {
    assert pred.kind() == Symbol.Kind.PRED;
    return pred.ctx().ownerOf(pred).kind() == OpKind.AGG;
  }

  //// helper methods ////

  private static PartialOrder compareBitset(BitSet bs0, BitSet bs1) {
    assert bs0.size() == bs1.size();

    PartialOrder cmp = SAME;
    for (int i = 0, bound = bs0.size(); i < bound; ++i) {
      final boolean b0 = bs0.get(i), b1 = bs1.get(i);
      if (b0 && !b1)
        if (cmp == LESS_THAN) return INCOMPARABLE;
        else cmp = GREATER_THAN;
      else if (!b0 && b1)
        if (cmp == GREATER_THAN) return INCOMPARABLE;
        else cmp = LESS_THAN;
    }
    return cmp;
  }

  private static PartialOrder compareVerificationResult(Generalization r0, Generalization r1) {
    for (BitSet bit0 : r0.bits) {
      for (BitSet bit1 : r1.bits) {
        final PartialOrder cmp = compareBitset(bit0, bit1);
        if (cmp != INCOMPARABLE) return cmp;
      }
    }
    return INCOMPARABLE;
  }

  private boolean rememberEq(List<Generalization> knownEqs, Generalization eq) {
    boolean relaxed = knownEqs.removeIf(it -> compareVerificationResult(it, eq).greaterOrSame());
    knownEqs.add(eq);
    return relaxed;
  }

  private boolean rememberNeq(List<Generalization> knownNeqs, Generalization neq) {
    boolean enhanced = knownNeqs.removeIf(it -> compareVerificationResult(it, neq).lessOrSame());
    knownNeqs.add(neq);
    return enhanced;
  }

  private static boolean isKnownEq(List<Generalization> knownEqs, Generalization toCheck) {
    for (Generalization knownEq : knownEqs)
      if (compareVerificationResult(toCheck, knownEq).greaterOrSame()) {
        return true;
      }
    return false;
  }

  private static boolean isKnownNeq(List<Generalization> knownNeqs, Generalization toCheck) {
    for (Generalization knownNeq : knownNeqs)
      if (compareVerificationResult(toCheck, knownNeq).lessOrSame()) {
        return true;
      }
    return false;
  }

  private Generalization generalize(BitSet bits) {
    final List<BitSet> buffer = new ArrayList<>();
    buffer.add((BitSet) bits.clone());
    generalize0(Symbol.Kind.ATTRS, buffer);
    generalize0(Symbol.Kind.PRED, buffer);
    return new Generalization(buffer);
  }

  private void generalize0(Symbol.Kind kind, List<BitSet> buffer) {
    for (Symbol tgtSym : I.targetSymbols().symbolsOf(kind))
      for (int i = 0, bound = buffer.size(); i < bound; ++i) {
        generalize1(buffer.get(i), tgtSym, buffer);
      }
  }

  private void generalize1(BitSet bits, Symbol tgtSym, List<BitSet> buffer) {
    final Symbol currentInstantiation = currentInstantiationOf(tgtSym);
    if (currentInstantiation == null) return;

    final int oldIndex = I.indexOfInstantiation(currentInstantiation, tgtSym);
    for (Symbol anotherSym : I.sourceSymbols().symbolsOf(tgtSym.kind())) {
      if (canGeneralize(currentInstantiation, anotherSym)) {
        final int newIndex = I.indexOfInstantiation(anotherSym, tgtSym);
        final BitSet clone = (BitSet) bits.clone();
        clone.clear(oldIndex);
        clone.set(newIndex);
        buffer.add(clone);
      }
    }
  }

  private boolean canGeneralize(Symbol oldSym, Symbol newSym) {
    assert oldSym.kind() == newSym.kind();
    final Symbol.Kind kind = oldSym.kind();
    return oldSym != newSym
        && kind != Symbol.Kind.TABLE
        && currentIsEq(oldSym, newSym)
        && (kind == Symbol.Kind.PRED || currentSourceOf(oldSym) == currentSourceOf(newSym));
  }

  private boolean isOutputAligned() {
    return isOutputAligned(I.sourceTemplate().root(), I.targetTemplate().root());
  }

  private boolean isOutputAligned(Op srcOp, Op tgtOp) {
    assert srcOp.fragment().symbols() == I.sourceSymbols();
    assert tgtOp.fragment().symbols() == I.targetSymbols();

    srcOp = skipFilters(srcOp);
    tgtOp = skipFilters(tgtOp);

    final OpKind srcKind = srcOp.kind(), tgtKind = tgtOp.kind();
    if (srcKind == OpKind.INPUT && tgtKind == OpKind.INPUT) {
      return currentInstantiationOf(((Input) tgtOp).table()) == ((Input) srcOp).table();

    } else if (srcKind == OpKind.PROJ && tgtKind == OpKind.PROJ) {
      return currentInstantiationOf(((Proj) tgtOp).schema()) == ((Proj) srcOp).schema();

    } else if (srcKind.isJoin() && tgtKind.isJoin()) {
      if (isOutputAligned(srcOp.predecessors()[0], tgtOp.predecessors()[0])
          && isOutputAligned(srcOp.predecessors()[1], tgtOp.predecessors()[1])) {
        return true;
      } else if (isDifferentShapeJoin(srcOp, tgtOp)) {
        final List<Op> srcChildren = flattenJoinTree(srcOp, new ArrayList<>(3));
        final List<Op> tgtChildren = flattenJoinTree(tgtOp, new ArrayList<>(3));
        for (var pair : zip(srcChildren, tgtChildren)) {
          if (!isOutputAligned(pair.getLeft(), pair.getRight())) {
            return false;
          }
        }
        return true;
      } else {
        return false;
      }

    } else if (srcKind == OpKind.SET_OP && tgtKind == OpKind.SET_OP) {
      return (isOutputAligned(srcOp.predecessors()[0], tgtOp.predecessors()[0])
              && isOutputAligned(srcOp.predecessors()[1], tgtOp.predecessors()[1]))
          || (isOutputAligned(srcOp.predecessors()[0], tgtOp.predecessors()[1])
              && isOutputAligned(srcOp.predecessors()[1], tgtOp.predecessors()[0]));
    } else if (srcKind == OpKind.AGG && tgtKind == OpKind.AGG) {
      return currentInstantiationOf(((Agg) tgtOp).groupByAttrs()) == ((Agg) srcOp).groupByAttrs()
          && currentInstantiationOf(((Agg) tgtOp).aggregateAttrs())
              == ((Agg) srcOp).aggregateAttrs();
    } else {
      return false;
    }
  }

  private boolean isDifferentShapeJoin(Op join0, Op join1) {
    return join0.predecessors()[1].kind().isJoin() != join1.predecessors()[1].kind().isJoin();
  }

  private List<Op> flattenJoinTree(Op op, List<Op> children) {
    if (op.kind().isJoin()) {
      flattenJoinTree(op.predecessors()[0], children);
      flattenJoinTree(op.predecessors()[1], children);
    } else {
      children.add(op);
    }
    return children;
  }

  private static Op skipFilters(Op op) {
    while (op.kind().isFilter()) op = op.predecessors()[0];
    return op;
  }

  private boolean isUnionInputsAligned() {
    // Src and tgt output has been aligned, so only check src's union inputs
    return isUnionInputsAligned(I.sourceTemplate().root());
  }

  private boolean isUnionInputsAligned(Op op) {
    int numPredecessors = op.predecessors().length;
    boolean lhsAligned = numPredecessors < 1 || isUnionInputsAligned(op.predecessors()[0]);
    boolean rhsAligned = numPredecessors < 2 || isUnionInputsAligned(op.predecessors()[1]);
    if (!lhsAligned || !rhsAligned) return false;

    if (op.kind() != OpKind.SET_OP) return true;

    // If op is Union op:
    return checkAlignedSubFragment(op.predecessors()[0], op.predecessors()[1]);
  }

  private boolean checkAlignedSubFragment(Op lhsRoot, Op rhsRoot) {
    lhsRoot = skipFilters(lhsRoot);
    rhsRoot = skipFilters(rhsRoot);

    final OpKind lhsKind = lhsRoot.kind(), rhsKind = rhsRoot.kind();
    if (lhsKind == OpKind.INPUT && rhsKind == OpKind.INPUT) {
      return currentIsEq(((Input) rhsRoot).table(), ((Input) lhsRoot).table());

    } else if (lhsKind == OpKind.PROJ && rhsKind == OpKind.PROJ) {
      return currentIsEq(((Proj) rhsRoot).schema(), ((Proj) lhsRoot).schema());

    } else if (lhsKind.isJoin() && rhsKind.isJoin()) {
      return checkAlignedSubFragment(lhsRoot.predecessors()[0], rhsRoot.predecessors()[0])
          && checkAlignedSubFragment(lhsRoot.predecessors()[1], rhsRoot.predecessors()[1]);

    } else if (lhsKind == OpKind.SET_OP && rhsKind == OpKind.SET_OP) {
      return (checkAlignedSubFragment(lhsRoot.predecessors()[0], rhsRoot.predecessors()[0])
              && checkAlignedSubFragment(lhsRoot.predecessors()[1], rhsRoot.predecessors()[1]))
          || (checkAlignedSubFragment(lhsRoot.predecessors()[0], rhsRoot.predecessors()[1])
              && checkAlignedSubFragment(lhsRoot.predecessors()[1], rhsRoot.predecessors()[0]));
    } else if (lhsKind == OpKind.AGG && rhsKind == OpKind.AGG) {
      return currentIsEq(((Agg) rhsRoot).groupByAttrs(), ((Agg) lhsRoot).groupByAttrs())
          && currentIsEq(((Agg) rhsRoot).aggregateAttrs(), ((Agg) lhsRoot).aggregateAttrs());
    } else {
      return false;
    }
  }

  //// Enumeration Stages ////

  private interface EnumerationStage {
    int enumerate();

    void setNextStage(EnumerationStage nextStage);

    int numResponsibleConstraints();
  }

  private abstract static class AbstractEnumerationStage implements EnumerationStage {
    private EnumerationStage nextStage;

    @Override
    public void setNextStage(EnumerationStage nextStage) {
      this.nextStage = nextStage;
    }

    protected EnumerationStage nextStage() {
      return nextStage;
    }
  }

  // AttrsSub
  private class AttrsSourceEnumerator extends AbstractEnumerationStage {
    private final int begin, end;
    private final List<Symbol> attrs;
    private final List<int[]> sourceChoices;
    private final int numOptionals;

    private AttrsSourceEnumerator() {
      this.begin = I.beginIndexOfKind(AttrsSub);
      this.end = I.endIndexOfKind(AttrsSub);

      final List<Symbol> allAttrs = I.sourceSymbols().symbolsOf(Symbol.Kind.ATTRS);
      this.attrs = new ArrayList<>(allAttrs.size());
      this.sourceChoices = new ArrayList<>(allAttrs.size());

      int numChoices = 0;
      for (Symbol attr : allAttrs) {
        final Collection<Symbol> sources = I.viableSourcesOf(attr);
        numChoices += sources.size();
        if (sources.size() == 1) continue;

        assert sources.size() > 1;
        final int[] constraintIndices = new int[sources.size()];
        int i = 0;
        for (Symbol source : sources) constraintIndices[i++] = indexOfAttrsSub(attr, source);

        attrs.add(attr);
        sourceChoices.add(constraintIndices);
      }

      this.numOptionals = (end - begin) - numChoices;
    }

    @Override
    public int enumerate() {
      currentSet(begin, end, true);
      return enumerate0(0);
    }

    private int enumerate0(int symIndex) {
      if (symIndex >= attrs.size()) return enumerateOptional(0);

      final int[] sources = sourceChoices.get(symIndex);
      for (int source : sources) currentSet(source, false);
      for (int source : sources) {
        currentSet(source, true);
        final int answer = enumerate0(symIndex + 1);
        currentSet(source, false);

        if (answer == TIMEOUT) return TIMEOUT;
      }

      return LogicSupport.EQ; // doesn't matter
    }

    private int enumerateOptional(int optionIndex) {
      if (optionIndex >= numOptionals) return nextStage().enumerate();

      final int constraintIndex = end - numOptionals + optionIndex;
      currentSet(constraintIndex, true);
      enumerateOptional(optionIndex + 1);

      currentSet(constraintIndex, false);
      enumerateOptional(optionIndex + 1);

      return LogicSupport.EQ; // doesn't matter
    }

    private int indexOfAttrsSub(Symbol attrs, Symbol source) {
      for (int i = begin; i < end; ++i) {
        final Constraint attrsSub = I.get(i);
        if (attrsSub.symbols()[0] == attrs && attrsSub.symbols()[1] == source) return i;
      }
      assert false;
      return -1;
    }

    @Override
    public int numResponsibleConstraints() {
      return end - begin;
    }
  }

  // instantiations
  private class InstantiationEnumerator extends AbstractEnumerationStage {
    private final Symbol.Kind kind;
    private final List<Symbol> sourceSyms;
    private final List<Symbol> targetSyms;

    private InstantiationEnumerator(Symbol.Kind kind) {
      this.kind = kind;
      this.sourceSyms = I.sourceSymbols().symbolsOf(kind);
      this.targetSyms = I.targetSymbols().symbolsOf(kind);
    }

    @Override
    public int enumerate() {
      return enumerate0(0);
    }

    private int enumerate0(int symIndex) {
      if (symIndex >= targetSyms.size()) return nextStage().enumerate();

      boolean allNeq = true;
      final Symbol targetSym = targetSyms.get(symIndex);
      for (Symbol sourceSym : sourceSyms) {
        if (validateInstantiation(sourceSym, targetSym)) {
          final int index = I.indexOfInstantiation(sourceSym, targetSym);

          currentSet(index, true);
          final int answer = enumerate0(symIndex + 1);
          currentSet(index, false);

          if (answer == TIMEOUT) return TIMEOUT;
          if (answer != LogicSupport.NEQ) allNeq = false;
        }
      }

      return allNeq ? LogicSupport.NEQ : LogicSupport.EQ; // The return value of the 2nd branch does not matter.
    }

    @Override
    public int numResponsibleConstraints() {
      return sourceSyms.size() * targetSyms.size();
    }
  }

  // TableEq, AttrsEq, PredEq
  private class PartitionEnumerator extends AbstractEnumerationStage {
    private final Symbol.Kind kind;
    private final List<Symbol> syms;
    private final Partitioner partitioner;
    private final int beginIndex, endIndex;
    private final List<Generalization> localKnownNeqs, localKnownEqs;
    private final boolean dryRun;

    private PartitionEnumerator(Symbol.Kind kind, boolean dryRun) {
      this.kind = kind;
      this.syms = I.sourceSymbols().symbolsOf(kind);
      this.partitioner = new Partitioner((byte) syms.size());
      this.beginIndex = I.beginIndexOfEq(kind);
      this.endIndex = I.endIndexOfEq(kind);
      this.localKnownNeqs = new LinkedList<>();
      this.localKnownEqs = new LinkedList<>();
      this.dryRun = dryRun;
    }

    @Override
    public int enumerate() {
      if (syms.isEmpty()) return nextStage().enumerate();

      partitioner.reset();
      resetConstraints();

      boolean alwaysNeq = true;
      boolean mayEq = false;

      do {
        final byte[][] partitions = partitioner.partition();
        setupConstraints(partitions);

        // Only AttrsEq may conflict.
        // Guarantee: if a set of AttrsEq (denoted by Eq_a) are not conflict under a set of TableEq
        // (denoted as Eq_t), then under any stronger Eq_t' than Eq_t, Eq_a won't conflict.
        if (isAttrsEqInfeasible()) {
          resetConstraints();
          continue;
        }

        final Generalization generalization = generalize(enabled);
        if (!dryRun && isKnownNeq(localKnownNeqs, generalization)) continue;
        if (!dryRun && isKnownEq(localKnownEqs, generalization)) continue;

        final int answer = nextStage().enumerate();
        resetConstraints();

        if (answer == TIMEOUT) return TIMEOUT;
        if (answer != LogicSupport.NEQ) alwaysNeq = false;
        if (answer == LogicSupport.EQ) mayEq = true;

        if (answer == LogicSupport.NEQ) rememberNeq(localKnownNeqs, generalization);
        if (answer == LogicSupport.EQ) rememberEq(localKnownEqs, generalization);

      } while (partitioner.forward());

      resetConstraints();
      return mayEq ? LogicSupport.EQ : alwaysNeq ? LogicSupport.NEQ : LogicSupport.UNKNOWN;
    }

    private void setupConstraints(byte[][] partitions) {
      for (byte[] partition : partitions) {
        for (int i = 0, bound = partition.length; i < bound - 1; ++i) {
          for (int j = i + 1; j < bound; ++j) {
            final int index = I.indexOfEq(syms.get(partition[i]), syms.get(partition[j]));
            currentSet(index, true);
          }
        }
      }
    }

    private void resetConstraints() {
      currentSet(beginIndex, endIndex, false);
    }

    private boolean isAttrsEqInfeasible() {
      if (kind != Symbol.Kind.ATTRS) return false;
      for (int i = beginIndex, bound = endIndex; i < bound; ++i) {
        if (!currentIsEnabled(i)) continue;

        final int forced = checkForced(i);
        if ((forced & MUST_DISABLE) != 0) return true;
      }
      return false;
    }

    @Override
    public int numResponsibleConstraints() {
      return endIndex - beginIndex;
    }
  }

  // FuncEq, temporarily used to enable all constraints
  private class ForceSymbolEqEnumerator extends AbstractEnumerationStage {
    private final Symbol.Kind kind;
    private final int beginIndex, endIndex;

    private ForceSymbolEqEnumerator(Symbol.Kind kind) {
      this.kind = kind;
      this.beginIndex = I.beginIndexOfEq(kind);
      this.endIndex = I.endIndexOfEq(kind);
    }

    @Override
    public int enumerate() {
      currentSet(beginIndex, endIndex, true);
      final int answer = nextStage().enumerate();
      currentSet(beginIndex, endIndex, false);
      return answer;
    }

    @Override
    public int numResponsibleConstraints() {
      return endIndex - beginIndex;
    }
  }

  // NotNull, Unique, Reference
  private class BinaryEnumerator extends AbstractEnumerationStage {
    private final Constraint.Kind kind;
    private final int beginIndex, endIndex;

    private BinaryEnumerator(Constraint.Kind kind) {
      assert kind.isIntegrityConstraint();
      this.kind = kind;
      this.beginIndex = I.beginIndexOfKind(kind);
      this.endIndex = I.endIndexOfKind(kind);
    }

    @Override
    public int enumerate() {
      currentSet(beginIndex, endIndex, true);
      final int answer = enumerate0(beginIndex);
      currentSet(beginIndex, endIndex, false);
      return answer;
    }

    private int enumerate0(int index) {
      if (index >= endIndex) return nextStage().enumerate();

      assert currentIsEnabled(index);

      final int forced = checkForced(index);
      final boolean mustDisable = (forced & MUST_DISABLE) != 0;
      final boolean mustEnable = !mustDisable && (forced & MUST_ENABLE) != 0;

      int answer0 = LogicSupport.UNKNOWN, answer1 = LogicSupport.UNKNOWN;

      if (!mustDisable) {
        answer0 = enumerate0(index + 1);
        if (answer0 == LogicSupport.NEQ && !isConflictingReference(index)) {
          if (isVerbose()) {
            final BitSet tmp = (BitSet) enabled.clone();
            tmp.clear(index, I.beginIndexOfInstantiation(Symbol.Kind.TABLE));
            tmp.set(index);
            System.out.println(
                "Due to known NEQ, skip relaxing "
                    + I.get(index).stringify(naming)
                    + " in "
                    + I.toString(naming, tmp));
          }
          return LogicSupport.NEQ;
        }
        if (answer0 == TIMEOUT) return TIMEOUT;
        assert answer0 != LogicSupport.FAST_REJECTED && answer0 != CONFLICT;
      }

      if (!mustEnable) {
        currentSet(index, false);
        answer1 = enumerate0(index + 1);
        currentSet(index, true);
        if (answer1 == TIMEOUT) return TIMEOUT;
        assert answer1 != LogicSupport.FAST_REJECTED && answer1 != CONFLICT;
      }

      if (answer0 == LogicSupport.EQ || answer1 == LogicSupport.EQ) return LogicSupport.EQ;
      assert answer0 == LogicSupport.UNKNOWN || answer0 == LogicSupport.NEQ;
      assert answer1 == LogicSupport.UNKNOWN || answer1 == LogicSupport.NEQ;
      return answer1;
    }

    private boolean isConflictingReference(int index) {
      // Returns `true` for Reference(t0,a0,t1,a1), where a0 is LHS join key
      // and t1 is RHS join key
      final Constraint c = I.get(index);
      return kind == Reference && I.ordinalOf(c.symbols()[1]) < I.ordinalOf(c.symbols()[3]);
    }

    @Override
    public int numResponsibleConstraints() {
      return endIndex - beginIndex;
    }
  }

  private class MismatchedOutputBreaker extends AbstractEnumerationStage {
    private final boolean disabled;

    public MismatchedOutputBreaker(boolean disabled) {
      this.disabled = disabled;
    }

    @Override
    public int enumerate() {
      if (!disabled && !isOutputAligned()) return LogicSupport.NEQ;
      return nextStage().enumerate();
    }

    @Override
    public int numResponsibleConstraints() {
      return 0;
    }
  }

  private class UnionMismatchedOutputBreaker extends AbstractEnumerationStage {
    private final boolean disabled;

    public UnionMismatchedOutputBreaker(boolean disabled) {
      this.disabled = disabled;
    }

    @Override
    public int enumerate() {
      if (!disabled && !isUnionInputsAligned()) {
        return LogicSupport.NEQ;
      }
      return nextStage().enumerate();
    }

    @Override
    public int numResponsibleConstraints() {
      return 0;
    }
  }

  private class MismatchedSummationBreaker extends AbstractEnumerationStage {
    private final boolean disabled;

    public MismatchedSummationBreaker(boolean disabled) {
      this.disabled = disabled;
    }

    @Override
    public int enumerate() {
      if (!disabled) {
        final Substitution rule = I.mkRule(enabled);
        final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
        if (LogicSupport.isMismatchedSummation(uExprs) || LogicSupport.isLatentSummation(uExprs)) return LogicSupport.UNKNOWN;
      }
      return nextStage().enumerate();
    }

    @Override
    public int numResponsibleConstraints() {
      return 0;
    }
  }

  private class InfeasibleSchemaBreaker extends AbstractEnumerationStage {
    private final boolean disabled;

    public InfeasibleSchemaBreaker(boolean disabled) {
      this.disabled = disabled;
    }

    @Override
    public int enumerate() {
      if (!disabled) {
        final Substitution rule = I.mkRule(enabled);
        if (UExprSupport.translateToUExpr(rule, UExprSupport.UEXPR_FLAG_CHECK_SCHEMA_FEASIBLE) == null) return LogicSupport.UNKNOWN;
      }
      return nextStage().enumerate();
    }

    @Override
    public int numResponsibleConstraints() {
      return 0;
    }
  }

  private static class TimeoutBreaker extends AbstractEnumerationStage {
    private final long start;
    private final long timeout;

    private TimeoutBreaker(long start, long timeout) {
      this.start = start;
      this.timeout = timeout;
    }

    @Override
    public int enumerate() {
      final long now = currentTimeMillis();
      if (now - start > timeout) return TIMEOUT;
      else return nextStage().enumerate();
    }

    @Override
    public int numResponsibleConstraints() {
      return 0;
    }
  }

  private class VerificationCache extends AbstractEnumerationStage {
    private final boolean dryRun;

    private VerificationCache(boolean dryRun) {
      this.dryRun = dryRun;
    }

    @Override
    public int enumerate() {
      metric.numEnumeratedConstraintSets.increment();

      if (isVerbose()) System.out.println("Going to verify: " + I.toString(naming, enabled));
      if (dryRun) return LogicSupport.EQ;

      final Generalization generalization = generalize(enabled);
      if (metric.numCacheHitEq.incrementIf(isKnownEq(knownEqs, generalization))) {
        if (isVerbose()) System.out.println("  => Answer from cache: EQ");
        return LogicSupport.EQ;
      }
      if (metric.numCacheHitNeq.incrementIf(isKnownNeq(knownNeqs, generalization))) {
        if (isVerbose()) System.out.println("  => Answer from cache: NEQ");
        return LogicSupport.NEQ;
      }

      final long begin = currentTimeMillis();
      final int answer = nextStage().enumerate();
      final long elapsed = currentTimeMillis() - begin;

      if (isVerbose())
        System.out.println(
            "  => Answer from verifier: " + LogicSupport.stringifyResult(answer) + ", " + elapsed + "ms");

      metric.numProverInvocations.increment();

      if (metric.numEq.incrementIf(answer == LogicSupport.EQ)) {
        if (metric.numRelaxed.incrementIf(rememberEq(knownEqs, generalization))) {
          if (isVerbose())
            System.out.println("  => Relax. Current EQ cache size: " + knownEqs.size());
        } else {
          if (isVerbose()) System.out.println("  => Current EQ cache size: " + knownEqs.size());
        }

        metric.elapsedEq.add(elapsed);

      } else if (metric.numNeq.incrementIf(answer == LogicSupport.NEQ)) {
        if (metric.numReinforced.incrementIf(rememberNeq(knownNeqs, generalization))) {
          if (isVerbose())
            System.out.println(" => Strengthen. Current NEQ cache size: " + knownNeqs.size());
        } else {
          if (isVerbose()) System.out.println("  => Current NEQ cache size: " + knownNeqs.size());
        }

        metric.elapsedNeq.add(elapsed);
      } else {
        metric.numUnknown.increment();
        metric.elapsedUnknown.add(elapsed);

        if (any(knownEqs, it -> compareVerificationResult(it, generalization).greaterOrSame())) {
          metric.numUnknown0.increment();
        } else {
          metric.numUnknown1.increment();
        }
      }

      return answer;
    }

    @Override
    public int numResponsibleConstraints() {
      return 0;
    }
  }

  private class Verifier extends AbstractEnumerationStage {
    private final boolean useSpes;

    private Verifier(boolean useSpes) {
      this.useSpes = useSpes;
    }

    @Override
    public int enumerate() {
      final Substitution rule = I.mkRule(enabled);
      if (!useSpes) {
        final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
        final int answer = LogicSupport.proveEq(uExprs);
        assert answer != LogicSupport.FAST_REJECTED; // fast rejection should be checked early.
        return answer;
      } else {
        return LogicSupport.proveEqBySpes(rule);
      }
    }

    @Override
    public int numResponsibleConstraints() {
      return 0;
    }
  }

  private static class Generalization {
    private final List<BitSet> bits;

    private Generalization(List<BitSet> bits) {
      this.bits = bits;
    }
  }
}
