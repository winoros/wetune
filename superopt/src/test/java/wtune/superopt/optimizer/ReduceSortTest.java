package wtune.superopt.optimizer;

import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import wtune.sql.plan.PlanContext;
import wtune.sql.plan.PlanSupport;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static wtune.superopt.TestHelper.parsePlan;

@Tag("optimizer")
@Tag("fast")
public class ReduceSortTest {
  @Test
  void test() {
    final PlanContext plan =
        parsePlan(
            "Select sub0.i From (Select a.i From a Order By a.j) sub0 "
                + "Join (Select a.i From a Order By a.j Limit 1) sub1 On sub0.i = sub1.i "
                + "Where sub0.i In (Select a.i From a Order By a.j) "
                + "And sub0.i In (Select a.i From a Order By a.j Limit 1)");

    final int oldRoot = plan.root();
    final int newRoot = new ReduceSort(plan).reduce(oldRoot);
    assertEquals(oldRoot, newRoot);

    assertEquals(
        "SELECT `sub0`.`i` AS `i` "
            + "FROM (SELECT `a`.`i` AS `i` FROM `a` AS `a`) AS `sub0` "
            + "INNER JOIN (SELECT `a0`.`i` AS `i` FROM `a` AS `a0` ORDER BY `a0`.`j` LIMIT 1) AS `sub1` "
            + "ON `sub0`.`i` = `sub1`.`i` "
            + "WHERE `sub0`.`i` IN (SELECT `a1`.`i` AS `i` FROM `a` AS `a1`) "
            + "AND `sub0`.`i` IN (SELECT `a2`.`i` AS `i` FROM `a` AS `a2` LIMIT 1)",
        PlanSupport.translateAsAst(plan, newRoot, false).toString());
  }
}
