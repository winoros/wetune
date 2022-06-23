package wtune.superopt.optimizer;

import wtune.sql.plan.PlanContext;
import wtune.sql.plan.PlanSupport;
import wtune.superopt.TestHelper;

class JoinTreeHelper {
  private PlanContext ctx;
  private LinearJoinTree tree;

  LinearJoinTree mkJoinTree(String joinSnippet) {
    this.ctx = TestHelper.parsePlan("Select a.i From " + joinSnippet);
    this.tree = LinearJoinTree.mk(ctx, ctx.childOf(ctx.root(), 0));
    return tree;
  }

  PlanContext plan() {
    return ctx;
  }

  int treeRoot() {
    return ctx.childOf(ctx.root(), 0);
  }

  String mkSqlRootedBy(int i) {
    final PlanContext newPlan = tree.mkRootedBy(i);
    return PlanSupport.translateAsAst(newPlan, newPlan.root(), false).toString();
  }
}
