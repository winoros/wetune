package wtune.superopt.fragment;

public interface Sort extends Op {
  @Override
  default OpKind kind() {
    return OpKind.SORT;
  }
}
