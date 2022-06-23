package wtune.superopt.optimizer;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import wtune.common.utils.SetSupport;
import wtune.sql.plan.PlanContext;
import wtune.superopt.fragment.Fragment;
import wtune.superopt.util.Fingerprint;
import wtune.superopt.TestHelper;

import java.util.Set;

import static org.junit.jupiter.api.Assertions.assertEquals;

@Tag("optimizer")
@Tag("fast")
public class FingerprintTest {
  @Test
  void testOp() {
    final Fragment fragment =
        Fragment.parse("Proj(Filter(InSubFilter(InnerJoin(Input,Input),Input)))", null);
    Assertions.assertEquals("pfsj", Fingerprint.mk(fragment).toString());
  }

  @Test
  void testFilter() {
    final PlanContext plan =
        TestHelper.parsePlan(
            "Select a.* From a "
                + "Where a.i = 0 "
                + "And a.i In (Select a.* From a Where a.j > 10) "
                + "And a.i < 1 "
                + "And a.i In (Select a.* From a Where a.j > 20) "
                + "And a.i  < 2");

    final Set<Fingerprint> fingerprints = Fingerprint.mk(plan, plan.root());
    assertEquals(9, fingerprints.size());
    assertEquals(
        Set.of("p", "pf", "ps", "pff", "pfs", "pss", "pfff", "pffs", "pfss"),
        SetSupport.map(fingerprints, Fingerprint::toString));
  }

  @Test
  void testJoin() {
    final PlanContext plan =
        TestHelper.parsePlan(
            "Select * From a "
                + "Join b On a.i = b.x "
                + "Join c On a.i = c.u "
                + "Join d On a.i = d.p "
                + "Left Join a As a1 On a.i = a1.i "
                + "Left Join b As b1 On a.i = b1.x");

    final Set<Fingerprint> fingerprints = Fingerprint.mk(plan, plan.root());
    assertEquals(14, fingerprints.size());
    assertEquals(
        Set.of(
            "p", "pl", "pj", "pjj", "pjl", "plj", "pll", "pjjj", "pjjl", "pjlj", "pljj", "pjll",
            "pljl", "pllj"),
        SetSupport.map(fingerprints, Fingerprint::toString));
  }

  @Test
  void test0() {
    final PlanContext plan =
        TestHelper.parsePlan(
            "Select * From a "
                + "Join b On a.i = b.x "
                + "Join c On a.i = c.u "
                + "Left Join a As a1 On a.i = a1.i "
                + "Where a.i = 1");

    final Set<Fingerprint> fingerprints = Fingerprint.mk(plan, plan.root());
    assertEquals(7, fingerprints.size());
    assertEquals(
        Set.of("p", "pflj", "pfjj", "pfj", "pf", "pfl", "pfjl"),
        SetSupport.map(fingerprints, Fingerprint::toString));
  }
}
