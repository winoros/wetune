package wtune.superopt.nodetrans;

import com.microsoft.z3.Context;
import org.apache.calcite.sql.SqlFunction;
import wtune.spes.AlgeNode.AlgeNode;
import wtune.sql.plan.PlanContext;

public interface TransformCtx {
  AlgeNode transform();

  PlanContext planCtx();

  Context z3Context();

  SqlFunction getOrCreatePredicate(String predName);

  static TransformCtx mk(PlanContext planCtx, Context z3Context) {
    return new TransformCtxImpl(planCtx, z3Context);
  }
}
