package wtune.superopt.uexpr;

record UTableImpl(UName tableName, UVar var) implements UTable {
  @Override
  public boolean isUsing(UVar var) {
    return this.var.isUsing(var);
  }

  @Override
  public UTerm replaceBaseVar(UVar baseVar, UVar repVar) {
    final UVar v = var.replaceBaseVar(baseVar, repVar);
    if (v != null) return UTable.mk(tableName, v);
    else return this;
  }

  @Override
  public String toString() {
    return tableName + "(" + var + ")";
  }
}
