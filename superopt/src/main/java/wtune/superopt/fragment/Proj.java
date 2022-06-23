package wtune.superopt.fragment;

public interface Proj extends Op {
  Symbol attrs();

  Symbol schema();

  void setDeduplicated(boolean flag);

  boolean isDeduplicated();

  @Override
  default OpKind kind() {
    return OpKind.PROJ;
  }
}
