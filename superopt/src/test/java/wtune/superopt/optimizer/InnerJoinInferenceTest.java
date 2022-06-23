package wtune.superopt.optimizer;

import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import wtune.sql.plan.PlanContext;
import wtune.superopt.TestHelper;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static wtune.sql.plan.PlanSupport.translateAsAst;

@Tag("fast")
@Tag("optimizer")
public class InnerJoinInferenceTest {
  @Test
  void test0() {
    final PlanContext plan =
        TestHelper.parsePlan(
            "Select a.i From a Left Join b On a.i=b.x Left Join c On c.u=b.y Join d On d.p=c.v");
    new InnerJoinInference(plan).inferenceAndEnforce(plan.root());
    assertEquals(
        "SELECT `a`.`i` AS `i` FROM `a` AS `a` INNER JOIN `b` AS `b` ON `a`.`i` = `b`.`x` INNER JOIN `c` AS `c` ON `c`.`u` = `b`.`y` INNER JOIN `d` AS `d` ON `d`.`p` = `c`.`v`",
        translateAsAst(plan, plan.root(), false).toString());
  }

  @Test
  void test1() {
    final PlanContext plan =
        TestHelper.parsePlan("Select a.i From a Left Join b On a.i=b.x Left Join c On c.u=b.y Where c.v=0");
    new InnerJoinInference(plan).inferenceAndEnforce(plan.root());
    assertEquals(
        "SELECT `a`.`i` AS `i` FROM `a` AS `a` INNER JOIN `b` AS `b` ON `a`.`i` = `b`.`x` INNER JOIN `c` AS `c` ON `c`.`u` = `b`.`y` WHERE `c`.`v` = 0",
        translateAsAst(plan, plan.root(), false).toString());
  }

  @Test
  void test2() {
    final PlanContext plan =
        TestHelper.parsePlan("Select a.i From a Left Join b On a.i=b.x Left Join c On c.u=b.y Where b.y=0");
    new InnerJoinInference(plan).inferenceAndEnforce(plan.root());
    assertEquals(
        "SELECT `a`.`i` AS `i` FROM `a` AS `a` INNER JOIN `b` AS `b` ON `a`.`i` = `b`.`x` LEFT JOIN `c` AS `c` ON `c`.`u` = `b`.`y` WHERE `b`.`y` = 0",
        translateAsAst(plan, plan.root(), false).toString());
  }

  @Test
  void test3() {
    final PlanContext plan =
        TestHelper.parsePlan(
            "Select a.i From a Left Join b On a.i=b.x Left Join c On c.u=b.y Where c.v is null");
    new InnerJoinInference(plan).inferenceAndEnforce(plan.root());
    assertEquals(
        "SELECT `a`.`i` AS `i` FROM `a` AS `a` LEFT JOIN `b` AS `b` ON `a`.`i` = `b`.`x` LEFT JOIN `c` AS `c` ON `c`.`u` = `b`.`y` WHERE `c`.`v` IS NULL",
        translateAsAst(plan, plan.root(), false).toString());
  }
}
