package wtune.superopt.optimizer;

import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import wtune.sql.plan.PlanContext;
import wtune.sql.plan.PlanKind;
import wtune.sql.plan.PlanSupport;
import wtune.superopt.TestHelper;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static wtune.sql.plan.PlanSupport.translateAsAst;

@Tag("fast")
@Tag("optimizer")
public class NormalizeProjTest {
  @Test
  void testRemove() {
    final PlanContext plan =
        TestHelper.parsePlan("Select sub.i From (Select * From a) As sub Where sub.i > 10");
    final NormalizeProj normalizer = new NormalizeProj(plan);
    final int redundantProj = PlanSupport.locateNode(plan, plan.root(), 0, 0);

    assertTrue(normalizer.shouldReduceProj(redundantProj));
    final int replaced = normalizer.reduceProj(redundantProj);
    assertEquals(PlanKind.Input, plan.kindOf(replaced));
    assertEquals(
        "SELECT `a`.`i` AS `i` FROM `a` AS `a` WHERE `a`.`i` > 10",
        translateAsAst(plan, plan.root(), false).toString());
  }

  @Test
  void testInsert() {
    final PlanContext plan =
        TestHelper.parsePlan("Select sub.i From b Join (Select * From a Where a.i = 1) As sub On b.x = sub.i");

    final NormalizeProj normalizer = new NormalizeProj(plan);
    final int toDelete = PlanSupport.locateNode(plan, plan.root(), 0, 1);
    final int filter = normalizer.reduceProj(toDelete);

    assertTrue(normalizer.shouldInsertProjBefore(filter));
    final int newProj = normalizer.insertProjBefore(filter);
    assertEquals(PlanKind.Proj, plan.kindOf(newProj));
    assertEquals(
        "SELECT `q0`.`i` AS `i` FROM `b` AS `b` INNER JOIN (SELECT `a`.`i` AS `i`, `a`.`j` AS `j`, `a`.`k` AS `k` FROM `a` AS `a` WHERE `a`.`i` = 1) AS `q0` ON `b`.`x` = `q0`.`i`",
        translateAsAst(plan, plan.root(), false).toString());
  }

  @Test
  void testTree() {
    final PlanContext plan =
        TestHelper.parsePlan(
            "Select sub1.i From (Select * From b) As sub0 Join (Select * From a Where a.i = 1) As sub1 On sub0.x = sub1.i");

    final NormalizeProj normalizer = new NormalizeProj(plan);
    final int toDelete = PlanSupport.locateNode(plan, plan.root(), 0, 1);
    normalizer.reduceProj(toDelete);

    normalizer.normalizeTree(plan.root());
    assertEquals(
        "SELECT `q0`.`i` AS `i` FROM `b` AS `b` INNER JOIN (SELECT `a`.`i` AS `i`, `a`.`j` AS `j`, `a`.`k` AS `k` FROM `a` AS `a` WHERE `a`.`i` = 1) AS `q0` ON `b`.`x` = `q0`.`i`",
        translateAsAst(plan, plan.root(), false).toString());
  }
}
