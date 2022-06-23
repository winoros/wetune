package wtune.superopt.uexpr;

import wtune.common.utils.ListSupport;

import java.util.List;
import java.util.Set;

import static wtune.common.utils.Commons.joining;

record USumImpl(Set<UVar> boundedVars, UTerm body) implements USum {
  @Override
  public boolean isUsing(UVar var) {
    return !boundedVars.contains(var) && body.isUsing(var);
  }

  @Override
  public UTerm replaceBaseVar(UVar baseVar, UVar repVar) {
    if (boundedVars.contains(baseVar)) return this;
    final UTerm e = body.replaceBaseVar(baseVar, repVar);
    if (e != body) return USum.mk(boundedVars, e);
    else return this;
  }

  @Override
  public String toString() {
    final StringBuilder builder = new StringBuilder("\u2211");
    final List<String> vars = ListSupport.map(boundedVars, UVar::toString);
    vars.sort(String::compareTo);
    joining("{", ",", "}", false, vars, builder);
    builder.append('(').append(body).append(')');
    return builder.toString();
  }
}
