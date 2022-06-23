package wtune.superopt.optimizer;

import wtune.sql.plan.PlanContext;
import wtune.sql.plan.PlanSupport;
import wtune.superopt.TestHelper;

class FilterChainHelper {
  private PlanContext ctx;
  private FilterChain chain;

  FilterChain mkFilterChain(String filterSnippet) {
    this.ctx = TestHelper.parsePlan("Select a.i From a Join b On a.i = b.x Where " + filterSnippet);
    this.chain = FilterChain.mk(ctx, ctx.childOf(ctx.root(), 0));
    return chain;
  }

  PlanContext plan() {
    return ctx;
  }

  static String mkSqlReorderedIntuition(FilterChain chain, int... indices) {
    final int[] filters = new int[indices.length];
    for (int i = 0, bound = filters.length; i < bound; ++i)
      filters[bound - i - 1] = chain.at(bound - indices[i] - 1);

    return toSql(chain.derive(filters));
  }

  static String toSql(FilterChain chain) {
    final PlanContext newPlan = chain.plan();
    chain.assemble();
    return PlanSupport.translateAsAst(newPlan, newPlan.root(), false).toString();
  }
}
