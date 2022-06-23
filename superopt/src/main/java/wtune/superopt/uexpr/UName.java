package wtune.superopt.uexpr;

/**
 * Abstract name.
 *
 * <p>Contract: inter-translatable with a string.
 *
 * <p>Memo: this wrapper serves for the potential demand that something other than string would be
 * used as naming.
 */
public interface UName {
  static UName mk(String str) {
    return new UNameImpl(str);
  }
}
