package wtune.superopt;

import org.junit.jupiter.api.Test;
import wtune.sql.ast.SqlNode;
import wtune.sql.plan.PlanContext;
import wtune.sql.plan.PlanKind;
import wtune.sql.plan.PlanSupport;
import wtune.sql.schema.Schema;
import wtune.stmt.App;
import wtune.stmt.Statement;
import wtune.superopt.constraint.ConstraintSupport;
import wtune.superopt.fragment.Fragment;
import wtune.superopt.fragment.FragmentSupport;
import wtune.superopt.logic.LogicSupport;
import wtune.superopt.optimizer.Optimizer;
import wtune.superopt.substitution.Substitution;
import wtune.superopt.substitution.SubstitutionBank;
import wtune.superopt.uexpr.UExprTranslationResult;

import java.io.IOException;
import java.nio.file.Path;
import java.util.List;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.*;
import static wtune.sql.SqlSupport.parseSql;
import static wtune.common.datasource.DbSupport.MySQL;
import static wtune.sql.plan.PlanSupport.assemblePlan;
import static wtune.sql.plan.PlanSupport.stringifyTree;
import static wtune.sql.support.action.NormalizationSupport.normalizeAst;
import static wtune.superopt.substitution.SubstitutionSupport.loadBank;
import static wtune.superopt.uexpr.UExprSupport.translateToUExpr;

public class MiscTest {
  @Test
  void testOrdinal() {
    int total = 30;
    int ordinal = 0;
    for (int i = 0; i < total; ++i) {
      for (int j = i; j < total; ++j) {
        assertEquals(ordinal, ordinal(total, i, j), i + "," + j);
        ++ordinal;
      }
    }
  }

  private int ordinal(int total, int i, int j) {
    assert i <= j;
    return ((total * 2) - i + 1) * i / 2 + j - i;
  }

  @Test
  void test() throws IOException {
    final App calcite = App.of("calcite_test");
    final String sql =
        "SELECT EMP1.EMPNO, EMP1.ENAME, EMP1.JOB, EMP1.MGR, EMP1.HIREDATE, EMP1.SAL, EMP1.COMM, EMP1.DEPTNO, EMP1.SLACKER FROM EMP AS EMP1 INNER JOIN ( SELECT EMP2.DEPTNO FROM EMP AS EMP2 GROUP BY EMP2.DEPTNO ) AS t4 ON EMP1.DEPTNO = t4.DEPTNO";
    final SqlNode ast = parseSql(MySQL, sql);
    final Schema schema = calcite.schema("base");
    ast.context().setSchema(schema);
    normalizeAst(ast);
    final PlanContext plan = assemblePlan(ast, schema);
    final SubstitutionBank bank = loadBank(Path.of("wtune_data", "rules.test.txt"));
    final Optimizer optimizer = Optimizer.mk(bank);
    final Set<PlanContext> optimized = optimizer.optimize(plan);
    for (PlanContext opt : optimized) {
      System.out.println(opt);
      //      System.out.println(PlanSupport.translateAsAst(opt, opt.root(),
      // false).toString(false));
    }
  }

  @Test
  void test1() throws IOException {
    final SubstitutionBank bank0 = loadBank(Path.of("wtune_data", "rules", "rules.2.txt"));
    final SubstitutionBank bank1 = loadBank(Path.of("wtune_data", "rules", "rules.test.txt"));
    int count = 0;
    for (Substitution rule : bank1.rules()) {
      if (!bank0.contains(rule)) {
        System.out.println(rule);
        ++count;
      }
    }
    System.out.println(bank1.size() + " " + count);
  }

  @Test
  void test2() throws IOException {
    final SubstitutionBank bank0 = loadBank(Path.of("wtune_data", "rules", "rules.spes.0204.txt"));
    int both = 0;
    int spesOnly = 0;
    for (Substitution rule : bank0.rules()) {
      if (rule.isExtended()) ++spesOnly;
      else {
        final UExprTranslationResult uExprs = translateToUExpr(rule);
        final int result = LogicSupport.proveEq(uExprs);
        if (result == LogicSupport.EQ) {
          System.out.println(rule.id());
          ++both;
        } else {
          ++spesOnly;
        }
      }
    }
    System.out.println("both=" + both + ", spes=" + spesOnly);
  }

  @Test
  void test3() throws IOException {
    final SubstitutionBank bank0 = loadBank(Path.of("wtune_data", "rules", "rules.spes.0204.txt"));
    final Optimizer optimizer = Optimizer.mk(bank0);
    final Statement stmt =
        Statement.mk(
            "spree",
            "SELECT COUNT(*) FROM ( SELECT spree_products.*, spree_prices.amount FROM `spree_products` INNER JOIN `spree_variants` ON `spree_variants`.`deleted_at` IS NULL AND `spree_variants`.`product_id` = `spree_products`.`id` AND `spree_variants`.`is_master` = TRUE INNER JOIN `spree_prices` ON `spree_prices`.`deleted_at` IS NULL AND `spree_prices`.`variant_id` = `spree_variants`.`id` WHERE `spree_products`.`deleted_at` IS NULL AND ( `spree_products`.deleted_at IS NULL or `spree_products`.deleted_at >= '2020-05-01 07:05:50.594745' ) AND ( `spree_products`.discontinue_on IS NULL or `spree_products`.discontinue_on >= '2020-05-01 07:05:50.594964' ) AND ( `spree_products`.available_on <= '2020-05-01 07:05:50.594949' ) AND `spree_prices`.`currency` = 'USD' ) sub WHERE sub.amount > 1242",
            null);
    final SqlNode ast = stmt.ast();
    ast.context().setSchema(stmt.app().schema("base"));

    for (PlanContext plan : optimizer.optimize(ast)) {
      System.out.println(PlanSupport.translateAsAst(plan, plan.root(), false));
    }
  }

  @Test
  void test4() throws IOException {
    final SubstitutionBank bank0 = loadBank(Path.of("wtune_data", "rules", "rules.spes.0204.txt"));
    final Optimizer optimizer = Optimizer.mk(bank0);
    final Statement stmt =
        Statement.mk(
            "discourse",
            "SELECT COUNT(\"users\".\"username\") AS count_all, email_tokens.email AS email_tokens_email "
                + "FROM \"users\" INNER JOIN \"email_tokens\" ON \"email_tokens\".\"user_id\" = \"users\".\"id\" "
                + "WHERE \"users\".\"username\" IS NOT NULL GROUP BY email_tokens.email HAVING \"users\".\"username\" IS NOT NULL",
            null);
    final SqlNode ast = stmt.ast();
    ast.context().setSchema(stmt.app().schema("base"));

    for (PlanContext plan : optimizer.optimize(ast)) {
      System.out.println(PlanSupport.translateAsAst(plan, plan.root(), false));
    }
  }

  @Test
  void test5() throws IOException {
    final List<Fragment> fragments = FragmentSupport.enumFragments(4, 1);
    System.out.println(fragments.size() * fragments.size());
    int count = 0;
    for (int i = 0; i < fragments.size(); ++i) {
      for (int j = i; j < fragments.size(); ++j) {
        final Fragment src = fragments.get(i);
        final Fragment dest = fragments.get(j);
        final int flag = ConstraintSupport.pickSource(src, dest);
        if (flag == 1 || flag == 2) count += 1;
        else if (flag == 3) count += 2;
      }
    }
    System.out.println(count);
    //    final SubstitutionBank bank0 = loadBank(Path.of("wtune_data", "prepared", "rules.txt"));
    //    int count = 0;
    //    for (Substitution rule : bank0.rules()) {
    //      final int numOps0 = countOps(rule._0().root());
    //      final int numOps1 = countOps(rule._1().root());
    //      if (numOps0 < numOps1) ++count;
    //    }
    //    System.out.println(count);
  }

  @Test
  void test6() throws IOException {
    int count = 0, exceptions = 0, unsupported = 0;
    for (Statement statement : Statement.findAllCalcite()) {
      try {
        final PlanContext plan = assemblePlan(statement.ast(), statement.app().schema("base"));
        if (plan == null) ++unsupported;
        else if (isSimple(plan)) ++count;
      } catch (Throwable ex) {
        ++exceptions;
      }
    }
    System.out.println(
        "count=" + count + " exceptions=" + exceptions + " unsupported=" + unsupported);
  }

  private static boolean isSimple(PlanContext plan) {
    int node = plan.root();
    if (plan.kindOf(node) == PlanKind.Limit) node = plan.childOf(node, 0);
    if (plan.kindOf(node) == PlanKind.Sort) node = plan.childOf(node, 0);
    if (plan.kindOf(node) != PlanKind.Proj || PlanSupport.isDedup(plan, node)) return false;
    node = plan.childOf(node, 0);

    while (plan.kindOf(node) == PlanKind.Filter) node = plan.childOf(node, 0);
    return plan.kindOf(node) == PlanKind.Input;
  }
}
