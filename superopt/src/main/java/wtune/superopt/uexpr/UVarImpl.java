package wtune.superopt.uexpr;

import java.util.Arrays;

import static java.util.Arrays.asList;
import static wtune.common.utils.Commons.joining;
import static wtune.common.utils.IterableSupport.any;

record UVarImpl(VarKind kind, UName name, UVar[] arguments) implements UVar {
  @Override
  public boolean isUsing(UVar var) {
    assert var.kind() == VarKind.BASE;
    if (this.kind == VarKind.BASE) return var.name().equals(this.name());
    else return any(asList(arguments), it -> it.isUsing(var));
  }

  @Override
  public UVar replaceBaseVar(UVar baseVar, UVar repVar) {
    if (baseVar.kind() != VarKind.BASE) throw new IllegalArgumentException();
    if (this.kind == VarKind.BASE)
      return name.equals(baseVar.name()) ? repVar : this;

    UVar[] vars = arguments;
    for (int i = 0, bound = vars.length; i < bound; i++) {
      final UVar var = vars[i];
      final UVar v = vars[i].replaceBaseVar(baseVar, repVar);
      if (v != var) {
        if (vars == arguments) vars = Arrays.copyOf(arguments, arguments.length);
        vars[i] = v;
      }
    }

    if (vars != arguments) return new UVarImpl(kind, name, vars);
    else return this;
  }

  @Override
  public UVar[] args() {
    return arguments;
  }

  @Override
  public String toString() {
    if (kind == VarKind.BASE) return name.toString();
    if (kind == VarKind.EQ) return arguments[0] + " = " + arguments[1];

    final StringBuilder builder = new StringBuilder(name.toString());
    return joining("(", ",", ")", false, asList(arguments), builder).toString();
  }
}
