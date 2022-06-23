package wtune.superopt.optimizer;

import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import wtune.sql.plan.Expression;
import wtune.sql.plan.PlanContext;
import wtune.sql.plan.Value;
import wtune.superopt.fragment.Filter;
import wtune.superopt.fragment.Op;
import wtune.superopt.fragment.SymbolNaming;
import wtune.superopt.substitution.Substitution;
import wtune.superopt.TestHelper;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

@Tag("fast")
@Tag("optimizer")
public class FilterMatchTest {
  @Test
  void testFullCover() {
    final PlanContext plan = TestHelper.parsePlan("Select a.i From a Where a.i = 1 And a.j < 10");
    final Substitution rule = // a fake rule
        Substitution.parse(
            "Proj<a0 s0>(Filter<p0 a1>(Proj<a2 s1>(Input<t0>)))|Input<t1>|AttrsSub(a1,s1)");
    final int chainHead = plan.childOf(plan.root(), 0);
    final Filter opHead = (Filter) rule._0().root().predecessors()[0];
    final FilterMatcher matcher = new FilterMatcher(opHead, plan, chainHead);
    final List<Match> results = matcher.matchBasedOn(new Match(rule).setSourcePlan(plan));
    assertEquals(1, results.size());

    final Model model = results.get(0).model();
    final Expression exprAssignment = model.ofPred(rule.naming().symbolOf("p0"));
    final List<Value> attrsAssignment = model.ofAttrs(rule.naming().symbolOf("a1"));

    assertEquals("`#`.`#` = 1 AND `#`.`#` < 10", exprAssignment.toString());
    assertEquals("[a.i, a.j]", attrsAssignment.toString());
  }

  @Test
  void test0() {
    final PlanContext plan = TestHelper.parsePlan("Select a.i From a Where a.i = 1 And a.j < 10 And a.k > 20");
    final Substitution rule = // A fake rule
        Substitution.parse(
            "Proj<a0 s0>(Filter<p0 a1>(Filter<p1 a2>(Input<t0>)))|Input<t1>|AttrsEq(a0,a1)");

    final Op templateRoot = rule._0().root();
    final Match match = new Match(rule).setSourcePlan(plan);
    match.matchOne(templateRoot, plan.root()); // Assign to a0.

    final Filter opHead = ((Filter) templateRoot.predecessors()[0]);
    final int chainHead = plan.childOf(plan.root(), 0);
    final FilterMatcher matcher = new FilterMatcher(opHead, plan, chainHead);
    final List<Match> results = matcher.matchBasedOn(match);

    assertEquals(1, results.size());

    final Model model = results.get(0).model();
    final SymbolNaming naming = rule.naming();
    final Expression p0 = model.ofPred(naming.symbolOf("p0"));
    final Expression p1 = model.ofPred(naming.symbolOf("p1"));
    final List<Value> a1 = model.ofAttrs(naming.symbolOf("a1"));
    final List<Value> a2 = model.ofAttrs(naming.symbolOf("a2"));

    assertEquals("`#`.`#` = 1", p0.toString());
    assertEquals("`#`.`#` < 10 AND `#`.`#` > 20", p1.toString());
    assertEquals("[a.i]", a1.toString());
    assertEquals("[a.j, a.k]", a2.toString());
  }

  @Test
  void test1() {
    final PlanContext plan = TestHelper.parsePlan("Select a.i From a Where a.i = 1 And a.j < 10 And a.k > 20");
    final Substitution rule = // A fake rule
        Substitution.parse(
            "Proj<a0 s0>(Filter<p0 a1>(Filter<p1 a2>(Proj<a3 s1>(Input<t0>))))|Input<t1>|AttrsEq(a0,a1)");

    final Op templateRoot = rule._0().root();
    final Match match = new Match(rule).setSourcePlan(plan);
    match.matchOne(templateRoot, plan.root()); // Assign to a0.

    final Filter opHead = ((Filter) templateRoot.predecessors()[0]);
    final int chainHead = plan.childOf(plan.root(), 0);
    final FilterMatcher matcher = new FilterMatcher(opHead, plan, chainHead);
    final List<Match> results = matcher.matchBasedOn(match);

    assertEquals(1, results.size());

    final Model model = results.get(0).model();
    final SymbolNaming naming = rule.naming();
    final Expression p0 = model.ofPred(naming.symbolOf("p0"));
    final Expression p1 = model.ofPred(naming.symbolOf("p1"));
    final List<Value> a1 = model.ofAttrs(naming.symbolOf("a1"));
    final List<Value> a2 = model.ofAttrs(naming.symbolOf("a2"));
    assertEquals("`#`.`#` = 1", p0.toString());
    assertEquals("`#`.`#` < 10 AND `#`.`#` > 20", p1.toString());
    assertEquals("[a.i]", a1.toString());
    assertEquals("[a.j, a.k]", a2.toString());
  }

  @Test
  void test3() {
    final PlanContext plan =
        TestHelper.parsePlan("Select a.i From a Where a.i = 1 And a.k < 10 And a.i In (Select b.x From b)");
    final Substitution rule = //  A fake rule
        Substitution.parse("Filter<p0 a0>(Filter<p1 a1>(Input<t0>))|Input<t1>|AttrsEq(a0,a1);");

    final Match match = new Match(rule).setSourcePlan(plan);
    final Filter opHead = ((Filter) rule._0().root());
    final int chainHead = plan.childOf(plan.root(), 0);
    final FilterMatcher matcher = new FilterMatcher(opHead, plan, chainHead);
    final List<Match> results = matcher.matchBasedOn(match);

    assertEquals(1, results.size());

    final Model model = results.get(0).model();
    final SymbolNaming naming = rule.naming();
    final Expression p0 = model.ofPred(naming.symbolOf("p0"));
    final Expression p1 = model.ofPred(naming.symbolOf("p1"));
    final List<Value> a0 = model.ofAttrs(naming.symbolOf("a0"));
    final List<Value> a1 = model.ofAttrs(naming.symbolOf("a1"));
    System.out.println(p0);
    System.out.println(p1);
    System.out.println(a0);
    System.out.println(a1);
    assertEquals("`#`.`#` IN (SELECT `b`.`x` AS `x` FROM `b` AS `b`)", p0.toString());
    assertEquals("`#`.`#` = 1", p1.toString());
    assertEquals("[a.i]", a0.toString());
    assertEquals("[a.i]", a1.toString());
  }
}
