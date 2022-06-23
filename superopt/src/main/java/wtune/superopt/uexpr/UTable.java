package wtune.superopt.uexpr;

public interface UTable extends UAtom {
  UName tableName();

  UVar var();

  static UTable mk(UName tableName, UVar var) {
    return new UTableImpl(tableName, var);
  }
}
