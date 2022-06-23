package wtune.superopt.optimizer;

import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

@Tag("optimizer")
@Tag("fast")
public class FilterAssignmentTest {
  private final FilterChainHelper helper = new FilterChainHelper();

  @Test
  void testSimple() {
    final FilterChain chain = helper.mkFilterChain("a.i > 10 And b.y = 5 And b.z < 7");
    final FilterAssignments assignment = new FilterAssignments(chain, 2);

    assignment.setExact(0, 0);
    assignment.setExact(1, 2);

    final FilterChain newChain0 = assignment.mkChain(false);
    assertEquals(
        "SELECT `a`.`i` AS `i` FROM `a` AS `a` INNER JOIN `b` AS `b` ON `a`.`i` = `b`.`x` WHERE `a`.`i` > 10 AND `b`.`z` < 7 AND `b`.`y` = 5",
        FilterChainHelper.toSql(newChain0));

    final FilterChain newChain1 = assignment.mkChain(true);
    assertEquals(
        "SELECT `a`.`i` AS `i` FROM `a` AS `a` INNER JOIN `b` AS `b` ON `a`.`i` = `b`.`x` WHERE `b`.`y` = 5 AND `a`.`i` > 10 AND `b`.`z` < 7",
        FilterChainHelper.toSql(newChain1));
  }

  @Test
  void testCombined() {
    final FilterChain chain = helper.mkFilterChain("a.i > 10 And b.y = 5 And b.z < 7");
    final FilterAssignments assignment = new FilterAssignments(chain, 2);

    assignment.setExact(0, 0);
    assignment.setCombined(1, 1, 2);
    final FilterChain newChain2 = assignment.mkChain(false);
    assertEquals(
        "SELECT `a`.`i` AS `i` FROM `a` AS `a` INNER JOIN `b` AS `b` ON `a`.`i` = `b`.`x` WHERE `a`.`i` > 10 AND `b`.`y` = 5 AND `b`.`z` < 7",
        FilterChainHelper.toSql(newChain2));

    assignment.unset(0);
    assignment.unset(1);
    assignment.setCombined(0, 2, 1);
    assignment.setCombined(1, 0);
    final FilterChain newChain3 = assignment.mkChain(false);
    assertEquals(
        "SELECT `a`.`i` AS `i` FROM `a` AS `a` INNER JOIN `b` AS `b` ON `a`.`i` = `b`.`x` WHERE `b`.`z` < 7 AND (`b`.`y` = 5 AND `a`.`i` > 10)",
        FilterChainHelper.toSql(newChain3));
  }
}
