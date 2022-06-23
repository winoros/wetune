package wtune.superopt.fragment;

public interface Union extends Op {
  void setDeduplicated(boolean flag);

  boolean isDeduplicated();

  @Override
  default OpKind kind() {
    return OpKind.SET_OP;
  }
}
