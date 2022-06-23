package wtune.superopt.fragment;

class ProjOp extends BaseOp implements Proj {
  boolean isDeduplicated = false;

  ProjOp() {}

  @Override
  public void setDeduplicated(boolean deduplicated) {
    isDeduplicated = deduplicated;
  }

  @Override
  public boolean isDeduplicated() {
    return isDeduplicated;
  }

  @Override
  public Symbol attrs() {
    return fragment().symbols().symbolAt(this, Symbol.Kind.ATTRS, 0);
  }

  @Override
  public Symbol schema() {
    return fragment().symbols().symbolAt(this, Symbol.Kind.SCHEMA, 0);
  }

  @Override
  protected Op copy0() {
    final ProjOp copy = new ProjOp();
    copy.setDeduplicated(isDeduplicated);
    return copy;
  }

  @Override
  public boolean accept0(OpVisitor visitor) {
    return visitor.enterProj(this);
  }

  @Override
  public void leave0(OpVisitor visitor) {
    visitor.leaveProj(this);
  }

  @Override
  public int shadowHash() {
    return super.hashCode() * 31 + Boolean.hashCode(isDeduplicated);
  }
}
