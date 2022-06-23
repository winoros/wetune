package wtune.superopt.uexpr;

import org.apache.commons.lang3.tuple.Pair;
import wtune.common.utils.Lazy;
import wtune.common.utils.NameSequence;
import wtune.superopt.constraint.Constraints;
import wtune.superopt.fragment.*;
import wtune.superopt.substitution.Substitution;

import java.util.*;

import static wtune.common.utils.ListSupport.push;
import static wtune.common.utils.ListSupport.tail;
import static wtune.common.utils.IterableSupport.any;
import static wtune.common.utils.ListSupport.pop;
import static wtune.superopt.constraint.Constraint.Kind.Unique;
import static wtune.superopt.fragment.OpKind.*;
import static wtune.superopt.uexpr.UExprSupport.*;

/**
 * Translate a <b>valid</b> candidate rule to U-expr.
 *
 * <p>A rule (S,T,C) is valid only if:
 *
 * <ul>
 *   <li>Any Attrs in S has a single, viable source.
 *   <li>Any Table in T has a single, exclusive instantiation.
 *   <li>Any Attrs/Pred in T has a single instantiation
 *   <li>Any Attrs in T has a viable implied source.
 * </ul>
 */
class UExprTranslator {
  private static final UName NAME_IS_NULL = UName.mk(UTerm.FUNC_IS_NULL_NAME);

  private final Substitution rule;
  private final NameSequence varSeq;
  private final Map<Symbol, UName> initiatedNames;
  private final Lazy<Set<Pair<SchemaDesc, SchemaDesc>>> knownEqSchemas;
  private final Map<SchemaDesc, UVar> pivotVars;
  private final UExprTranslationResult result;
  private final boolean enableDependentSubquery, enableSchemaFeasibilityCheck;
  private int nextSchema;

  UExprTranslator(Substitution rule, int tweak) {
    this.rule = rule;
    this.varSeq = NameSequence.mkIndexed("x", 0);
    this.initiatedNames = new HashMap<>(16);
    this.knownEqSchemas = Lazy.mk(HashSet::new);
    this.pivotVars = new HashMap<>();
    this.result = new UExprTranslationResult(rule);
    this.enableDependentSubquery = (tweak & UEXPR_FLAG_SUPPORT_DEPENDENT_SUBQUERY) != 0;
    this.enableSchemaFeasibilityCheck = (tweak & UEXPR_FLAG_CHECK_SCHEMA_FEASIBLE) != 0;
    this.nextSchema = 1;
  }

  UExprTranslationResult translate() {
    if (new TemplateTranslator(rule._0(), false).translate()
        && new TemplateTranslator(rule._1(), true).translate()) {
      return result;
    } else {
      return null;
    }
  }

  private static UTerm mkNotNull(UVar var) {
    return UNeg.mk(UPred.mk(UVar.mkFunc(NAME_IS_NULL, var)));
  }

  private static UTerm mkIsNull(UVar var) {
    return UPred.mk(UVar.mkFunc(NAME_IS_NULL, var));
  }

  class TemplateTranslator {
    private final Fragment template;
    private final boolean isTargetSide;
    private final List<UVar> freeVars; // Free vars in current scope.
    private final List<UVar> visibleVars; // visible vars in current scope.
    // free and viable variables will diverge at InSub operator
    private UVar auxVar; // Auxiliary variable from outer query.

    private TemplateTranslator(Fragment template, boolean isTargetSide) {
      this.template = template;
      this.isTargetSide = isTargetSide;
      this.freeVars = new ArrayList<>(3);
      this.visibleVars = new ArrayList<>(3);
      this.auxVar = null;
    }

    private boolean translate() {
      final UTerm raw = tr(template.root());
      if (raw == null) return false;

      final UTerm expr = normalizeExpr(raw);
      final UVar outVar = tail(visibleVars);
      assert freeVars.size() == 1;
      assert visibleVars.size() == 1;
      assert auxVar == null;

      if (!isTargetSide) {
        result.srcExpr = expr;
        result.srcOutVar = outVar;
      } else {
        result.tgtExpr = expr;
        result.tgtOutVar = outVar;
      }
      return true;
    }

    private UName mkName(Symbol sym) {
      /* Create a new or retrieve an existing name for a symbol. */
      final UName existing = initiatedNames.get(sym);
      if (existing != null) return existing;

      final UName name;
      if (isTargetSide) {
        name = initiatedNames.get(rule.constraints().instantiationOf(sym));
      } else {
        //name = UName.mk(nameSeq.next());
        name = UName.mk(rule.naming().nameOf(sym));
        for (Symbol eqSym : rule.constraints().eqSymbols().eqClassOf(sym))
          initiatedNames.put(eqSym, name);
      }

      assert name != null : rule.naming().nameOf(sym);
      return name;
    }

    private UVar mkFreshVar(SchemaDesc schema) {
      /* Create a variable with distinct name and given schema. */
      final UVar var = UVar.mkBase(UName.mk(varSeq.next()));
      result.setVarSchema(var, schema);
      return var;
    }

    private UVar mkVisibleVar() {
      /*  <!> This feature is for dependent subquery <!>
       * Visible variable is the concat of the free variable in current scope
       * and auxiliary variables from outer scope.*/
      final UVar var = tail(visibleVars);
      assert var != null;
      if (!enableDependentSubquery) return var;
      if (auxVar == null) return var;

      final UVar visibleVar = UVar.mkConcat(auxVar, var);
      result.setVarSchema(visibleVar, result.schemaOf(auxVar), result.schemaOf(var));
      return visibleVar;
    }

    private TableDesc mkTableDesc(Symbol tableSym) {
      // Each Table at the source side corresponds to a distinct desc.
      // Each Table at the target side shares the desc of its instantiation.
      final TableDesc desc;
      if (isTargetSide) {
        desc = result.symToTable.get(rule.constraints().instantiationOf(tableSym));

      } else {
        final UName name = mkName(tableSym);
        final SchemaDesc schema = mkSchema(tableSym);
        final UVar var = mkFreshVar(schema);
        final UTable tableTerm = UTable.mk(name, var);
        desc = new TableDesc(tableTerm, schema);
      }

      assert desc != null;
      result.symToTable.put(tableSym, desc);
      return desc;
    }

    private AttrsDesc mkAttrDesc(Symbol attrSym) {
      // The congruent Attrs (i.e., identically named) share a desc instance.
      final UName name = mkName(attrSym);
      final AttrsDesc existing = result.symToAttrs.get(attrSym);
      if (existing != null) return existing;

      final AttrsDesc desc;
      if (isTargetSide) {
        desc = result.symToAttrs.get(rule.constraints().instantiationOf(attrSym));
      } else {
        desc = new AttrsDesc(name);
        for (Symbol eqSym : rule.constraints().eqClassOf(attrSym))
          result.symToAttrs.put(eqSym, desc);
      }
      return desc;
    }

    private PredDesc mkPredDesc(Symbol predSym) {
      // The congruent Pred (i.e., identically named) share a desc instance.
      final UName name = mkName(predSym);
      final PredDesc existing = result.symToPred.get(predSym);
      if (existing != null) return existing;

      final PredDesc desc = new PredDesc(name);
      for (Symbol eqSym : rule.constraints().eqClassOf(predSym)) result.symToPred.put(eqSym, desc);
      return desc;
    }

    private UVar mkProj(Symbol attrSym, AttrsDesc desc, UVar base) {
      // project `attrSym` (whose desc is `desc`) on the `base` tuple
      Symbol source = null;
      if (isTargetSide) {
        source = rule.constraints().sourceOf(attrSym);
        if (source == null) attrSym = rule.constraints().instantiationOf(attrSym);
      }
      assert attrSym != null;

      if (source == null) source = rule.constraints().sourceOf(attrSym);
      assert source != null : rule.naming().nameOf(attrSym);

      // apply AttrsSub: pick the component from concat (if there is)
      // Suppose we have concat(x,y), where x from T and y from R, and AttrsSub(a,R).
      // then a(concat(x,y)) becomes a(y).
      final SchemaDesc varSchema = result.schemaOf(base);
      final SchemaDesc restrictionSchema = mkSchema(source);
      assert restrictionSchema.components.length == 1;
      int restriction = restrictionSchema.components[0];
      int index;

      // indirection source cases.
      //  e.g. Proj<a0 s0>(Proj<a1 s1>(t0)) vs. Proj<a2 s2>(t0)
      //       AttrsSub(a1,t0) /\ AttrsSub(a0,a1) /\ AttrsEq(a2,a0)
      //  In this case, a2 see a tuple of schema t0, while a1 see a tuple of schema s1.
      //  We have to further trace the source of s1.
      while ((index = varSchema.indexOf(restriction)) < 0) {
        source = rule.constraints().sourceOf(source);
        assert source != null : "wrong constraint! " + rule.naming().nameOf(attrSym);
        restriction = mkSchema(source).components[0];
      }

      final UVar comp = base.is(UVar.VarKind.CONCAT) ? base.args()[index] : base;
      final UVar ret = UVar.mkProj(desc.name(), comp.is(UVar.VarKind.PROJ) ? comp.args()[0] : comp);
      // AttrsSub(a,b) makes a(b(x)) become a(x).

      result.setVarSchema(ret, mkSchema(attrSym));
      return ret;
    }

    private SchemaDesc mkSchema(Symbol /* Table or Schema or Attrs */ sym) {
      /* An integer that distinguishes the schema of a relation/tuple.
       * For tables at the source side, each T_i is assigned with 2^i.
       * Tables at the target side are assigned the same as the instantiation source.
       * Tuple concat(x1,x2) is assigned with schemaOf(x1) | schemaOf(x2) */
      assert sym.kind() != Symbol.Kind.PRED;

      final SchemaDesc existing = result.symToSchema.get(sym);
      if (existing != null) return existing;

      final SchemaDesc ret;
      if (isTargetSide) ret = result.schemaOf(rule.constraints().instantiationOf(sym));
      else ret = new SchemaDesc(nextSchema++);

      result.setSymSchema(sym, ret);
      if (sym.kind() == Symbol.Kind.ATTRS) {
        for (Symbol eqSym : rule.constraints().eqClassOf(sym)) result.setSymSchema(eqSym, ret);
      }

      return ret;
    }

    private UTerm tr(Op op) {
      switch (op.kind()) {
        case INPUT:
          return trInput((Input) op);
        case SIMPLE_FILTER:
          return trSimpleFilter((SimpleFilter) op);
        case IN_SUB_FILTER:
          return trInSubFilter((InSubFilter) op);
        case EXISTS_FILTER:
          return trExistsFilter((ExistsFilter) op);
        case PROJ:
          return trProj((Proj) op);
        case INNER_JOIN:
        case LEFT_JOIN:
          return trJoin((Join) op);
        default:
          throw new IllegalArgumentException("unknown op");
      }
    }

    private UTerm trInput(Input input) {
      /* Input(T) --> T(x) */
      final TableDesc desc = mkTableDesc(input.table());
      final UVar var = desc.term().var();
      push(freeVars, var);
      push(visibleVars, var);
      result.setVarSchema(var, desc.schema());
      pivotVars.put(desc.schema(), var);
      return UMul.mk(desc.term());
    }

    private UTerm trSimpleFilter(SimpleFilter filter) {
      /* Filter(p,a) --> E * [p(a(x))] */
      final UTerm predecessor = tr(filter.predecessors()[0]);
      if (predecessor == null) return null;

      final AttrsDesc attrDesc = mkAttrDesc(filter.attrs());
      final PredDesc predDesc = mkPredDesc(filter.predicate());
      final UVar visibleVar = mkVisibleVar();
      final UVar projVar = mkProj(filter.attrs(), attrDesc, visibleVar);
      final UVar booleanVar = UVar.mkFunc(predDesc.name(), projVar);
      return UMul.mk(predecessor, UPred.mk(booleanVar));
    }

    private UTerm trInSubFilter(InSubFilter filter) {
      final UTerm lhs = tr(filter.predecessors()[0]);
      if (lhs == null) return null;

      final UVar lhsVisibleVar = tail(visibleVars);
      assert lhsVisibleVar != null;

      auxVar = lhsVisibleVar;
      final UTerm rhs = tr(filter.predecessors()[1]);
      auxVar = null;

      if (rhs == null) return null;

      final UVar rhsVisibleVar = pop(visibleVars); // RHS vars are no longer visible.
      final UVar rhsFreeVar = pop(freeVars);
      assert rhsVisibleVar != null && rhsFreeVar != null;

      final AttrsDesc attrsDesc = mkAttrDesc(filter.attrs());
      final UVar lhsProjVar = mkProj(filter.attrs(), attrsDesc, lhsVisibleVar);
      final UTerm eqVar = UPred.mk(UVar.mkEq(lhsProjVar, rhsVisibleVar));
      final UTerm notNull = mkNotNull(rhsVisibleVar);
      putKnownEqSchema(result.schemaOf(lhsProjVar), result.schemaOf(rhsVisibleVar));

      UTerm decoratedRhs = UMul.mk(eqVar, notNull, rhs);
      // Summation must be added if absent.
      final boolean needSum = rhsVisibleVar.kind() != UVar.VarKind.PROJ;
      if (needSum) decoratedRhs = USum.mk(UVar.getBaseVars(rhsFreeVar), decoratedRhs);
      // Normally, the RHS has to be squashed. If RHS is known to be deduplicated,
      // then Squash can be omitted. This trick allows proving more cases.
      final boolean needSquash = !isEffectiveDeduplicated(filter.predecessors()[1]);
      if (needSquash) decoratedRhs = USquash.mk(decoratedRhs);
      // If not adding Squash and Summation, then RHS free vars are "exposed" to the outer scope.
      if (!needSum && !needSquash) {
        final UVar lhsFreeVar = pop(freeVars);
        assert lhsFreeVar != null;
        push(freeVars, UVar.mkConcat(lhsFreeVar, rhsFreeVar));
      }

      return UMul.mk(lhs, decoratedRhs);
    }

    private UTerm trExistsFilter(ExistsFilter filter) {
      final UTerm lhs = tr(filter.predecessors()[0]);
      if (lhs == null) return null;

      final UVar lhsFreeVars = pop(freeVars);
      assert lhsFreeVars != null;

      auxVar = tail(visibleVars);
      final UTerm rhs = tr(filter.predecessors()[1]);
      auxVar = null;

      if (rhs == null) return null;

      final UVar rhsVisibleVars = pop(visibleVars);
      final UVar rhsFreeVars = pop(freeVars);
      assert rhsVisibleVars != null && rhsFreeVars != null;
      push(freeVars, UVar.mkConcat(lhsFreeVars, rhsFreeVars));

      return UMul.mk(lhs, USquash.mk(rhs));
    }

    private UTerm trJoin(Join join) {
      final UTerm lhs = tr(join.predecessors()[0]);
      final UTerm rhs = tr(join.predecessors()[1]);
      if (lhs == null || rhs == null) return null;

      final UVar rhsVisibleVar = pop(visibleVars);
      final UVar lhsVisibleVar = pop(visibleVars);
      final UVar rhsFreeVar = pop(freeVars);
      final UVar lhsFreeVar = pop(freeVars);
      assert rhsVisibleVar != null && rhsFreeVar != null;
      assert lhsVisibleVar != null && lhsFreeVar != null;

      final SchemaDesc lhsSchema = result.schemaOf(lhsVisibleVar);
      final SchemaDesc rhsSchema = result.schemaOf(rhsVisibleVar);
      final UVar joinedVar = UVar.mkConcat(lhsVisibleVar, rhsVisibleVar);
      push(visibleVars, joinedVar);
      push(freeVars, UVar.mkConcat(lhsFreeVar, rhsFreeVar));
      result.setVarSchema(joinedVar, lhsSchema, rhsSchema);

      final Symbol lhsKey = join.lhsAttrs(), rhsKey = join.rhsAttrs();
      final AttrsDesc lhsAttrsDesc = mkAttrDesc(lhsKey);
      final AttrsDesc rhsAttrsDesc = mkAttrDesc(rhsKey);
      final UVar lhsProjVar = mkProj(lhsKey, lhsAttrsDesc, lhsVisibleVar);
      final UVar rhsProjVar = mkProj(rhsKey, rhsAttrsDesc, rhsVisibleVar);
      putKnownEqSchema(result.schemaOf(lhsProjVar), result.schemaOf(rhsProjVar));

      final UTerm eqCond = UPred.mk(UVar.mkEq(lhsProjVar, rhsProjVar));
      final UTerm notNullCond = mkNotNull(rhsProjVar);
      if (join.kind() == INNER_JOIN) return UMul.mk(lhs, eqCond, notNullCond, rhs);

      // left join
      UTerm newExpr = UMul.mk(rhs, eqCond, notNullCond);
      final Set<UVar> freeVars = UVar.getBaseVars(rhsFreeVar);
      final Set<UVar> newVars = new HashSet<>(freeVars.size());
      for (UVar oldVar : freeVars) {
        final UVar newVar = UVar.mkBase(UName.mk(varSeq.next()));
        newExpr = newExpr.replaceBaseVar(oldVar, newVar);
        newVars.add(newVar);
        result.setVarSchema(newVar, result.schemaOf(oldVar));
      }

      final UMul symm = UMul.mk(rhs, eqCond, notNullCond);
      final UMul asymm = UMul.mk(mkIsNull(rhsVisibleVar), UNeg.mk(USum.mk(newVars, newExpr)));
      return UMul.mk(lhs, UAdd.mk(symm, asymm));
    }

    private UTerm trProj(Proj proj) {
      final UTerm predecessor = tr(proj.predecessors()[0]);
      if (predecessor == null) return null;
      if (!checkSchemaFeasible(proj)) return null;

      final UVar viableVar = pop(visibleVars);
      final UVar freeVar = pop(freeVars);
      assert viableVar != null && freeVar != null;

      final AttrsDesc attrDesc = mkAttrDesc(proj.attrs());
      final UVar projVar = mkProj(proj.attrs(), attrDesc, viableVar);
      final SchemaDesc outSchema = mkSchema(proj.schema());
      final boolean isClosed = needNewFreeVar(proj);
      // In some cases, we "inline" the new variable introduced by the Proj.
      // e.g., Proj(IJoin<k0 k1>(t0, Proj<a>(t1))) is translated to
      //   Sum{x,y}(.. * t0(x) * [k0(x) = k1(a(y))] * t1(y)), instead of
      //   Sum{x,z}(.. * t0(x) * [k0(x) = k1(z)] * Sum{y}([z = a(y)] * t1(y))).
      // This will save a lot of bother in the subsequent process.
      final UVar outVar;
      if (!isClosed) outVar = projVar;
      else if (!isTargetSide) outVar = mkFreshVar(outSchema);
      else outVar = pivotVars.get(outSchema);

      push(freeVars, outVar);
      push(visibleVars, outVar);

      result.setVarSchema(outVar, outSchema);
      pivotVars.put(outSchema, outVar);

      if (isClosed) {
        // If new var is required, we need to add a predicate [outVar = a(inVar)].
        final UPred eq = UPred.mk(UVar.mkEq(outVar, projVar));
        final USum s = USum.mk(UVar.getBaseVars(freeVar), UMul.mk(eq, predecessor));
        if (proj.isDeduplicated()
            && !isImplicitDeduplicated(proj)
            && !isEffectiveDeduplicated(proj)) {
          return USquash.mk(s);
        } else {
          return s;
        }

      } else {
        return USum.mk(UVar.getBaseVars(freeVar), predecessor);
      }
    }

    private boolean needNewFreeVar(Proj proj) {
      return isOutermostProj(proj) // 1. directly affects the output
          // 2. The projection need explicit deduplication
          || (proj.isDeduplicated()
              && !isImplicitDeduplicated(proj)
              && !isEffectiveDeduplicated(proj));
    }

    private boolean isOutermostProj(Proj proj) {
      Op op = proj;
      Op succ = op.successor();
      while (succ != null) {
        final OpKind succKind = succ.kind();
        if (succKind == PROJ) return false;
        if (succKind.isSubquery() && succ.predecessors()[1] == op) return false;
        op = succ;
        succ = succ.successor();
      }
      return true;
    }

    @SuppressWarnings("BooleanMethodIsAlwaysInverted")
    private boolean isImplicitDeduplicated(Proj proj) {
      Op op = proj;
      Op succ = op.successor();
      while (succ != null) {
        final OpKind succKind = succ.kind();
        if (succKind == PROJ && ((Proj) succ).isDeduplicated()) return true;
        if (succKind.isSubquery() && succ.predecessors()[1] == op) return true;
        op = succ;
        succ = succ.successor();
      }
      return false;
    }

    // Check if |Tr(op)| == Tr(op)
    private boolean isEffectiveDeduplicated(Op op) {
      // Principle: if the output of the op contains unique key, then no need to be squashed.
      if (op.kind().isFilter()) return isEffectiveDeduplicated(op.predecessors()[0]);

      if (op.kind().isJoin())
        return isEffectiveDeduplicated(op.predecessors()[0])
            && isEffectiveDeduplicated(op.predecessors()[1]);

      if (op.kind() == PROJ) {
        return isUniqueCoreAt(((Proj) op).attrs(), op.predecessors()[0]);
      }

      if (op.kind() == INPUT) {
        // Check if any attrs of this table is unique.
        final Symbol sym = ((Input) op).table();
        final Constraints C = rule.constraints();
        final Symbol table = isTargetSide ? C.instantiationOf(sym) : sym;
        return any(C.ofKind(Unique), it -> C.isEq(table, it.symbols()[0]));
      }

      return false;
    }

    private boolean isUniqueCoreAt(Symbol attrs, Op surface) {
      final OpKind kind = surface.kind();
      if (kind.isFilter()) return isUniqueCoreAt(attrs, surface.predecessors()[0]);

      if (kind == INPUT) {
        final Constraints C = rule.constraints();
        Symbol table = ((Input) surface).table();
        if (isTargetSide) {
          attrs = C.instantiationOf(attrs);
          table = C.instantiationOf(table);
        }
        return C.sourceOf(attrs) == table && isUniqueKey(attrs);
      }

      if (kind.isJoin()) {
        final Join join = (Join) surface;
        if (isUniqueCoreAt(attrs, surface.predecessors()[0])) {
          return isUniqueCoreAt(join.rhsAttrs(), surface.predecessors()[1]);
        } else if (isUniqueCoreAt(attrs, surface.predecessors()[1])) {
          return isUniqueCoreAt(join.lhsAttrs(), surface.predecessors()[0]);
        } else {
          return false;
        }
      }

      if (kind == PROJ) {
        final Proj proj = (Proj) surface;
        return rule.constraints().isEq(attrs, proj.attrs())
            && isUniqueCoreAt(proj.attrs(), proj.predecessors()[0]);
      }

      assert false;
      return false;
    }

    private boolean isUniqueKey(Symbol attrs) {
      return any(rule.constraints().ofKind(Unique), uk -> uk.symbols()[1] == attrs);
    }

    private void putKnownEqSchema(SchemaDesc s0, SchemaDesc s1) {
      if (!isTargetSide && enableSchemaFeasibilityCheck) {
        knownEqSchemas.get().add(Pair.of(s0, s1));
        knownEqSchemas.get().add(Pair.of(s1, s0));
      }
    }

    private boolean checkSchemaFeasible(Proj tgtProj) {
      if (!isTargetSide || !enableSchemaFeasibilityCheck) return true;
      // Given a Proj<a' s'> in the target side. Suppose a' is instantiated from a0,
      // s' is instantiated from s. s0 is owned by Proj<a1 s> in the source side.
      // Then the instantiation <s -> s'> is feasible only if a1 and a0 is "possible-eq",
      // which requires AttrsEq(a0,a1) or a0 and a1 is a pair of join keys.
      final Symbol schema0 = rule.constraints().instantiationOf(tgtProj.schema());
      final Symbol attrs0 = rule.constraints().instantiationOf(tgtProj.attrs());
      final Op srcProj = rule.constraints().sourceSymbols().ownerOf(schema0);
      assert srcProj.kind() == PROJ;
      final Symbol attrs1 = ((Proj) srcProj).attrs();
      final SchemaDesc s0 = mkSchema(attrs0), s1 = mkSchema(attrs1);
      return s0 == s1 || knownEqSchemas.get().contains(Pair.of(s0, s1));
    }
  }
}
