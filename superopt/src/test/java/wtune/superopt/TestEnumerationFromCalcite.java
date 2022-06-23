package wtune.superopt;

import org.junit.jupiter.api.*;
import wtune.superopt.logic.LogicSupport;
import wtune.superopt.substitution.Substitution;
import wtune.superopt.uexpr.UExprSupport;
import wtune.superopt.uexpr.UExprTranslationResult;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class TestEnumerationFromCalcite {
  private static boolean doTest(String substitutions) {
    final Substitution substitution0 = Substitution.parse(substitutions);
    final Substitution substitution = Substitution.parse(substitution0.canonicalStringify());
    final UExprTranslationResult uExpr = UExprSupport.translateToUExpr(substitution);
    return LogicSupport.proveEq(uExpr) == LogicSupport.EQ;
  }

  @BeforeEach
  void init(TestInfo testInfo) {
    String methodName = testInfo.getTestMethod().orElseThrow().getName();
    System.out.println("----------" + methodName + "----------");
  }

  @Test
  void test1JoinCommuteRule0() {
    // NEQ
    boolean res1 =
        doTest(
            "InnerJoin<a0 a1>(Input<t0>,Input<t1>)|InnerJoin<a2 a3>(Input<t2>,Input<t3>)|"
                + "TableEq(t0,t3);TableEq(t1,t2);AttrsEq(a0,a3);AttrsEq(a1,a2);AttrsSub(a0,t0);AttrsSub(a1,t1)");
    assertFalse(res1);
  }

  @Test
  void test2JoinCommuteRule1() {
    // NEQ
    doTest(
        "LeftJoin<a0 a1>(Input<t0>,Input<t1>)|"
            + "LeftJoin<a2 a3>(Input<t2>,Input<t3>)|"
            + "TableEq(t0,t3);TableEq(t1,t2);AttrsEq(a0,a3);AttrsEq(a1,a2);AttrsSub(a0,t0);AttrsSub(a1,t1)");
  }

  @Test
  void test3ProjectJoinJoinRemoveRule() {
    // case 1: AttrsSub(a0,t0) => EQ
    boolean res1 =
        doTest(
            "Proj<a0>(LeftJoin<a1 a2>(LeftJoin<a3 a4>(Input<t0>,Input<t1>),Input<t2>))|"
                + "Proj<a5>(LeftJoin<a6 a7>(Input<t3>,Input<t4>))|"
                + "TableEq(t0,t3);TableEq(t2,t4);AttrsEq(a0,a5);AttrsEq(a1,a3);AttrsEq(a1,a6);AttrsEq(a2,a7);AttrsSub(a0,t0);AttrsSub(a1,t0);AttrsSub(a2,t2);AttrsSub(a3,t0);AttrsSub(a4,t1);Unique(t1,a4)");
    assertTrue(res1);

    // case 2: AttrsSub(a0,t2) => EQ
    boolean res2 =
        doTest(
            "Proj<a0>(LeftJoin<a1 a2>(LeftJoin<a3 a4>(Input<t0>,Input<t1>),Input<t2>))|"
                + "Proj<a5>(LeftJoin<a6 a7>(Input<t3>,Input<t4>))|"
                + "TableEq(t0,t3);TableEq(t2,t4);AttrsEq(a0,a5);AttrsEq(a1,a3);AttrsEq(a1,a6);AttrsEq(a2,a7);AttrsSub(a0,t2);AttrsSub(a1,t0);AttrsSub(a2,t2);AttrsSub(a3,t0);AttrsSub(a4,t1);Unique(t1,a4)");
    assertTrue(res2);
  }

  @Test
  void test4ProjectJoinRemoveRule() {
    // it should be true, but false now
    boolean res1 =
        doTest(
            "Proj<a0>(LeftJoin<a1 a2>(Input<t0>,Input<t1>))|"
                + "Proj<a3>(Input<t2>)|"
                + "TableEq(t0,t2);AttrsEq(a0,a3);AttrsSub(a1,t0);AttrsSub(a2,t1);AttrsSub(a0,t0);Unique(t0,a1);Unique(t1,a2);Unique(t0,a0);NotNull(t1,a2);NotNull(t0,a0);Reference(t0,a1,t1,a2)");
    assertTrue(res1);

    boolean res2 =
        doTest(
            "Proj<a0>(LeftJoin<a1 a2>(Input<t0>,Input<t1>))|"
                + "Proj<a3>(Input<t2>)|"
                + "TableEq(t0,t2);AttrsEq(a0,a3);AttrsSub(a1,t0);AttrsSub(a2,t1);AttrsSub(a0,t0);Unique(t1,a2)");
    assertTrue(res2);
  }

  @Test
  void test5ProjectJoinTransposeRule() {
    // EQ
    boolean res1 =
        doTest(
            "Proj<a0>(InnerJoin<a1 a2>(Input<t0>,Input<t1>))|"
                + "Proj<a3>(InnerJoin<a4 a5>(Proj<a6>(Input<t2>),Proj<a7>(Input<t3>)))|"
                + "TableEq(t0,t2);TableEq(t1,t3);AttrsEq(a0,a3);AttrsEq(a1,a4);AttrsEq(a1,a6);AttrsEq(a2,a5);AttrsEq(a2,a7);AttrsSub(a0,t0);AttrsSub(a1,t0);AttrsSub(a2,t1)");
    assertTrue(res1);

    // NEQ (?)
    boolean res2 =
        doTest(
            "Proj<a0>(LeftJoin<a1 a2>(Input<t0>,Input<t1>))|"
                + "Proj<a3>(LeftJoin<a4 a5>(Proj<a6>(Input<t2>),Proj<a7>(Input<t3>)))|"
                + "TableEq(t0,t2);TableEq(t1,t3);AttrsEq(a0,a3);AttrsEq(a1,a4);AttrsEq(a1,a6);AttrsEq(a2,a5);AttrsEq(a2,a7);AttrsSub(a0,t0);AttrsSub(a1,t0);AttrsSub(a2,t1)");
    assertTrue(res2);
  }

  //  @Test
  //  void test3JoinPushThroughJoinRule() {
  //    // join condition is `true`
  //    // Not supported by wetune
  //  }

}
