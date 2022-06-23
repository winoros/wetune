package wtune.sql.util;

import org.junit.jupiter.api.Test;
import wtune.sql.ast.SqlNode;
import wtune.sql.support.action.NormalizationSupport;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static wtune.sql.TestHelper.parseSql;

class ParamInterpolatorTest {
  @Test
  void test() {
    final SqlNode ast = parseSql("SELECT a.i FROM a WHERE a.i = ? AND a.j IN (1,2)");
    NormalizationSupport.normalizeAst(ast);
    final ParamInterpolator interpolator = new ParamInterpolator(ast);
    interpolator.go();
    assertEquals("SELECT `a`.`i` FROM `a` WHERE `a`.`i` = 1 AND `a`.`j` IN (1)", ast.toString());
    interpolator.undo();
    assertEquals("SELECT `a`.`i` FROM `a` WHERE `a`.`i` = ? AND `a`.`j` IN (?)", ast.toString());
  }
}
