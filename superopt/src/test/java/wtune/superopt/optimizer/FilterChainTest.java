package wtune.superopt.optimizer;

import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static wtune.superopt.optimizer.FilterChainHelper.mkSqlReorderedIntuition;

@Tag("optimizer")
@Tag("fast")
public class FilterChainTest {
  private final FilterChainHelper helper = new FilterChainHelper();

  @Test
  void test() {
    final FilterChain chain = helper.mkFilterChain("a.i > 10 And b.y = 5 And b.z < 7");
    assertEquals(3, chain.size());
    assertEquals(
        "SELECT `a`.`i` AS `i` FROM `a` AS `a` INNER JOIN `b` AS `b` ON `a`.`i` = `b`.`x` WHERE `a`.`i` > 10 AND `b`.`y` = 5 AND `b`.`z` < 7",
        mkSqlReorderedIntuition(chain, 0, 1, 2));
    assertEquals(
        "SELECT `a`.`i` AS `i` FROM `a` AS `a` INNER JOIN `b` AS `b` ON `a`.`i` = `b`.`x` WHERE `b`.`y` = 5 AND `b`.`z` < 7 AND `a`.`i` > 10",
        mkSqlReorderedIntuition(chain, 1, 2, 0));
  }
}
