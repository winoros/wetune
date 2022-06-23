package wtune.superopt.uexpr;

record UPredImpl(UVar var) implements UPred {
  @Override
  public boolean isUsing(UVar var) {
    return this.var.isUsing(var);
  }

  @Override
  public UTerm replaceBaseVar(UVar baseVar, UVar repVar) {
    final UVar v = var.replaceBaseVar(baseVar, repVar);
    if (v != var) return UPred.mk(v);
    else return this;
  }

  @Override
  public String toString() {
    return "[" + var.toString() + "]";
  }
}
