package wtune.superopt.uexpr;

public interface UPred extends UAtom {
  UVar var();

  static UPred mk(UVar var) {
    return new UPredImpl(var);
  }
}
