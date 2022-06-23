package wtune.superopt.uexpr;

import java.util.List;

public interface UMul extends UTerm {
  @Override
  default UKind kind() {
    return UKind.MULTIPLY;
  }

  static UMul mk(UTerm e) {
    return UMulImpl.mk(e);
  }

  static UMul mk(UTerm e0, UTerm e1) {
    return UMulImpl.mk(e0, e1);
  }

  static UMul mk(UTerm e0, UTerm e1, UTerm... others) {
    return UMulImpl.mk(e0, e1, others);
  }

  static UMul mk(List<UTerm> exprs) {
    return new UMulImpl(exprs);
  }
}
