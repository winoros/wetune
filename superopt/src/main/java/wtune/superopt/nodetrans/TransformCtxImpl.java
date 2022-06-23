package wtune.superopt.nodetrans;

import com.microsoft.z3.Context;
import org.apache.calcite.sql.SqlFunction;
import org.apache.calcite.sql.SqlFunctionCategory;
import org.apache.calcite.sql.SqlKind;
import org.apache.calcite.sql.type.OperandTypes;
import org.apache.calcite.sql.type.ReturnTypes;
import wtune.spes.AlgeNode.AlgeNode;
import wtune.sql.plan.PlanContext;

import java.util.ArrayList;
import java.util.List;

public class TransformCtxImpl implements TransformCtx {
  private final PlanContext planCtx;
  private final Context z3Context;
  private final List<SqlFunction> registeredPredicates;

  private AlgeNode algeNode;

  TransformCtxImpl(PlanContext planCtx, Context z3Context) {
    this.planCtx = planCtx;
    this.z3Context = z3Context;
    this.registeredPredicates = new ArrayList<>();
  }

  @Override
  public AlgeNode transform() {
    if (algeNode == null) algeNode = Transformer.dispatch(this, planCtx.planRoot());
    return algeNode;
  }

  @Override
  public PlanContext planCtx() {
    return planCtx;
  }

  @Override
  public Context z3Context() {
    return z3Context;
  }

  @Override
  public SqlFunction getOrCreatePredicate(String predName) {
    for (SqlFunction existingPred : registeredPredicates) {
      if (existingPred.getName().equals(predName)) return existingPred;
    }

    SqlFunction udfPred = createUninterpretedFunction(predName);
    registeredPredicates.add(udfPred);
    return udfPred;
  }

  private static SqlFunction createUninterpretedFunction(String funcName) {
    return new SqlFunction(
        funcName,
        SqlKind.OTHER_FUNCTION,
        ReturnTypes.BOOLEAN,
        null,
        OperandTypes.INTEGER,
        SqlFunctionCategory.USER_DEFINED_FUNCTION);
  }
}
