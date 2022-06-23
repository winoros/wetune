package wtune.superopt.fragment;

public interface Agg extends Op {
  // Agg <grpAttrs aggAttrs aggFunc schema havingPred>
  Symbol groupByAttrs();

  Symbol aggregateAttrs();

  Symbol havingPred();

  Symbol aggFunc();

  Symbol schema();

  @Override
  default OpKind kind() {
    return OpKind.AGG;
  }
}
