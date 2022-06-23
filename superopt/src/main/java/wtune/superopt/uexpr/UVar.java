package wtune.superopt.uexpr;

import java.util.LinkedHashSet;
import java.util.Set;

import static wtune.common.utils.ArraySupport.concat;
import static wtune.superopt.uexpr.UVar.VarKind.BASE;
import static wtune.superopt.uexpr.UVar.VarKind.PROJ;

public interface UVar {
  enum VarKind {
    BASE,
    CONCAT,
    PROJ,
    FUNC,
    EQ
  }

  UVar replaceBaseVar(UVar baseVar, UVar repVar);

  UName name();

  UVar[] args();

  VarKind kind();

  boolean isUsing(UVar var);

  default boolean is(UVar.VarKind kind) {
    return kind() == kind;
  }

  static UVar mkBase(UName name) {
    final UVar var = new UVarImpl(VarKind.BASE, name, new UVar[1]);
    var.args()[0] = var;
    return var;
  }

  UName NAME_CONCAT = UName.mk("concat");
  UName NAME_EQ = UName.mk("eq");

  static UVar mkConcat(UVar v0, UVar v1) {
    assert v0.kind() != VarKind.FUNC && v0.kind() != VarKind.EQ;
    assert v1.kind() != VarKind.FUNC && v1.kind() != VarKind.EQ;
    final UVar[] lhs = v0.kind() == PROJ ? new UVar[] {v0} : v0.args();
    final UVar[] rhs = v1.kind() == PROJ ? new UVar[] {v1} : v1.args();
    return new UVarImpl(VarKind.CONCAT, NAME_CONCAT, concat(lhs, rhs));
  }

  static UVar mkProj(UName attrName, UVar v) {
    assert v.kind() == VarKind.BASE;
    return new UVarImpl(VarKind.PROJ, attrName, new UVar[] {v});
  }

  static UVar mkFunc(UName funcName, UVar v) {
    assert v.kind() != VarKind.FUNC && v.kind() != VarKind.EQ;
    return new UVarImpl(VarKind.FUNC, funcName, new UVar[] {v});
  }

  static UVar mkEq(UVar v0, UVar v1) {
    assert v0.kind() != VarKind.FUNC && v0.kind() != VarKind.EQ;
    assert v1.kind() != VarKind.FUNC && v1.kind() != VarKind.EQ;
    return new UVarImpl(VarKind.EQ, UVar.NAME_EQ, new UVar[] {v0, v1});
  }

  static Set<UVar> getBaseVars(UVar var) {
    final Set<UVar> baseVars = new LinkedHashSet<>(var.args().length);
    for (UVar arg : var.args()) {
      if (arg.kind() == BASE) baseVars.add(arg);
      else if (arg.kind() == VarKind.PROJ) baseVars.add(arg.args()[0]);
      else assert false;
    }
    return baseVars;
  }
}
