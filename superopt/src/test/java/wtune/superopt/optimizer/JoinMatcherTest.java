package wtune.superopt.optimizer;

import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import wtune.sql.plan.PlanContext;
import wtune.sql.plan.PlanSupport;
import wtune.superopt.fragment.Join;
import wtune.superopt.substitution.Substitution;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

@Tag("fast")
@Tag("optimizer")
public class JoinMatcherTest {
  private final JoinTreeHelper helper = new JoinTreeHelper();
  private final Substitution rule =
      Substitution.parse(
          "InnerJoin<a0 a1>(Input<t0>,Input<t1>)|"
              + "LeftJoin<a2 a3>(Input<t2>,Input<t3>)|"
              + "AttrsSub(a0,t0);AttrsSub(a1,t1);NotNull(t0,a0);Reference(t0,a0,t1,a1);"
              + "TableEq(t2,t0);TableEq(t3,t1);AttrsEq(a2,a0);AttrsEq(a3,a1)");

  @Test
  void test0() {
    helper.mkJoinTree("d Join c On d.p=c.u Join a On d.q=a.i");
    final PlanContext plan = helper.plan();
    final Match match = new Match(rule).setSourcePlan(plan).setMatchRootNode(plan.root());
    final var matcher = new JoinMatcher((Join) rule._0().root(), helper.plan(), helper.treeRoot());

    final List<Match> matches = matcher.matchBasedOn(match);

    assertEquals(1, matches.size());
    final PlanContext newPlan = matches.get(0).sourcePlan();
    assertEquals(
        "SELECT `a`.`i` AS `i` FROM `d` AS `d` INNER JOIN `a` AS `a` ON `d`.`q` = `a`.`i` INNER JOIN `c` AS `c` ON `d`.`p` = `c`.`u`",
        PlanSupport.translateAsAst(newPlan, newPlan.root(), false).toString());
  }

  @Test
  void test1() {
    helper.mkJoinTree("c Join d On d.p=c.u Join a On d.q=a.i");
    final PlanContext plan = helper.plan();
    final Match match = new Match(rule).setSourcePlan(plan).setMatchRootNode(plan.root());
    final var matcher = new JoinMatcher((Join) rule._0().root(), helper.plan(), helper.treeRoot());

    final List<Match> matches = matcher.matchBasedOn(match);

    assertEquals(1, matches.size());
    final PlanContext newPlan = matches.get(0).sourcePlan();
    assertEquals(
        "SELECT `a`.`i` AS `i` FROM `d` AS `d` INNER JOIN `a` AS `a` ON `d`.`q` = `a`.`i` INNER JOIN `c` AS `c` ON `d`.`p` = `c`.`u`",
        PlanSupport.translateAsAst(newPlan, newPlan.root(), false).toString());

    helper.mkJoinTree("c Join d On d.p=c.u Join a On d.q=a.i");
  }
}
