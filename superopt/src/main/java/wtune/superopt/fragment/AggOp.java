package wtune.superopt.fragment;

class AggOp extends BaseOp implements Agg {
  AggOp() {}

  @Override
  public Symbol groupByAttrs() {
    return fragment().symbols().symbolAt(this, Symbol.Kind.ATTRS, 0);
  }

  @Override
  public Symbol aggregateAttrs() {
    return fragment().symbols().symbolAt(this, Symbol.Kind.ATTRS, 1);
  }

  @Override
  public Symbol havingPred() {
    return fragment().symbols().symbolAt(this, Symbol.Kind.PRED, 0);
  }

  @Override
  public Symbol aggFunc() {
    return fragment().symbols().symbolAt(this, Symbol.Kind.FUNC, 0);
  }

  @Override
  public Symbol schema() {
    return fragment().symbols().symbolAt(this, Symbol.Kind.SCHEMA, 0);
  }

  @Override
  public boolean accept0(OpVisitor visitor) {
    return visitor.enterAgg(this);
  }

  @Override
  public void leave0(OpVisitor visitor) {
    visitor.leaveAgg(this);
  }
}
