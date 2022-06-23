package wtune.spes.SymbolicRexNode;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.Expr;
import org.apache.calcite.rel.type.RelDataType;
import org.apache.calcite.rex.RexNode;
import wtune.spes.Z3Helper.z3Utility;

import java.util.ArrayList;
import java.util.List;

public class SymbolicColumn {
  private static int count = 0;
  private Expr symbolicValue;
  private BoolExpr symbolicNull;
  private Context z3Context;

  public static SymbolicColumn mkNewSymbolicColumn(Context z3Context, RexNode node) {
    return mkNewSymbolicColumn(z3Context, node.getType());
  }

  public static SymbolicColumn mkNewSymbolicColumn(Context z3Context, RelDataType type) {
    Expr value =
        z3Context.mkConst(
            "value" + count,
            RexNodeUtility.getSortBasedOnSqlType(z3Context, type.getSqlTypeName()));
    BoolExpr valueNull = z3Context.mkBoolConst("isn" + count);
    count++;
    return (new SymbolicColumn(value, valueNull, z3Context));
  }

  public static List<SymbolicColumn> constructFreshColumns(
      List<SymbolicColumn> columns, Context z3Context) {
    List<SymbolicColumn> freshColumns = new ArrayList<>();
    for (SymbolicColumn column : columns) {
      freshColumns.add(constructFreshColumn(column, z3Context));
    }
    return freshColumns;
  }

  public static SymbolicColumn constructFreshColumn(SymbolicColumn column, Context z3Context) {
    Expr freshValue = z3Utility.constructFreshExpr(column.getSymbolicValue(), z3Context);
    BoolExpr freshNull =
        (BoolExpr) z3Utility.constructFreshExpr(column.getSymbolicNull(), z3Context);
    return (new SymbolicColumn(freshValue, freshNull, z3Context));
  }

  public SymbolicColumn(Expr symbolicValue, BoolExpr symbolicNull, Context z3Context) {
    this.symbolicValue = symbolicValue;
    this.symbolicNull = symbolicNull;
    this.z3Context = z3Context;
  }

  public static List<SymbolicColumn> constructSymbolicTuple(
      List<RelDataType> inputTypes, Context z3Context) {
    List<SymbolicColumn> result = new ArrayList<>();
    for (RelDataType inputType : inputTypes) {
      result.add(SymbolicColumn.mkNewSymbolicColumn(z3Context, inputType));
    }
    return result;
  }

  public Expr getSymbolicValue() {
    return symbolicValue;
  }

  public BoolExpr getSymbolicNull() {
    return symbolicNull;
  }

  public BoolExpr isValueTrue() {
    return z3Context.mkAnd((BoolExpr) symbolicValue, z3Context.mkNot(symbolicNull));
  }

  @Override
  public String toString() {
    return "(" + this.symbolicValue + "," + this.symbolicNull + ")";
  }
}
