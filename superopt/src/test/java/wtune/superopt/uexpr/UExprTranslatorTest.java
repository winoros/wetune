package wtune.superopt.uexpr;

import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import wtune.superopt.substitution.Substitution;

import static org.junit.jupiter.api.Assertions.assertEquals;

@Tag("uexpr")
@Tag("fast")
class UExprTranslatorTest {
  @Test
  public void testLeftJoin0() {
    final Substitution rule =
        Substitution.parse(
            "Proj*<a1 s1>(LeftJoin<a2 a3>(Input<t1>,Input<t2>)|"
                + "Proj*<a0 s0>(Input<t0>)|"
                + "TableEq(t0,t1);AttrsEq(a0,a1);AttrsEq(a1,a2);SchemaEq(s0,s1);"
                + "AttrsSub(a2,t1);AttrsSub(a1,t1);AttrsSub(a3,t2)");
    final UExprTranslationResult result = UExprSupport.translateToUExpr(rule);
    assertEquals(
        "||∑{x0,x1}([x3 = a0(x0)] * r0(x0) * (r1(x1) * [a0(x0) = a1(x1)] * not([IsNull(a1(x1))]) + [IsNull(x1)] * not(∑{x2}(r1(x2) * [a0(x0) = a1(x2)] * not([IsNull(a1(x2))])))))||",
        result.sourceExpr().toString());
    assertEquals("||∑{x0}([x4 = a0(x0)] * r0(x0))||", result.targetExpr().toString());
    assertEquals("x3", result.sourceOutVar().toString());
    assertEquals("x4", result.targetOutVar().toString());
  }

  @Test
  public void testLeftJoin1() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a1 s1>(LeftJoin<a2 a3>(Input<t1>,Proj*<a4 s4>(Input<t2>))|"
                + "Proj<a0 s0>(Input<t0>)|"
                + "TableEq(t0,t1);AttrsEq(a0,a1);AttrsEq(a1,a2);"
                + "AttrsSub(a0,t0);AttrsSub(a1,t1);AttrsSub(a2,t1);AttrsSub(a3,s4);AttrsSub(a4,t2);"
                + "SchemaEq(s0,s1)");
    final UExprTranslationResult result = UExprSupport.translateToUExpr(rule);
    assertEquals(
        "∑{x0,x2}([x4 = a1(x0)] * r0(x0) * (|∑{x1}([x2 = a0(x1)] * r1(x1))| * [a1(x0) = a2(x2)] * not([IsNull(a2(x2))]) + [IsNull(x2)] * not(∑{x1,x3}([x3 = a0(x1)] * r1(x1) * [a1(x0) = a2(x3)] * not([IsNull(a2(x3))])))))",
        result.sourceExpr().toString());
    assertEquals("∑{x0}([x5 = a1(x0)] * r0(x0))", result.targetExpr().toString());
    assertEquals("x4", result.sourceOutVar().toString());
    assertEquals("x5", result.targetOutVar().toString());
  }

  @Test
  public void testSubquery0() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a1 s1>(InSubFilter<k2>(Input<t2>,Proj<k3 s3>(Input<t3>))|"
                + "Proj<a0 s0>(InnerJoin<k0 k1>(Input<t0>,Input<t1>)|"
                + "AttrsSub(a1,t2);AttrsSub(k2,t2);AttrsSub(k3,t3);"
                + "TableEq(t0,t2);TableEq(t1,t3);AttrsEq(a0,a1);AttrsEq(k0,k2);AttrsEq(k1,k3);"
                + "Unique(t3,k3);SchemaEq(s0,s1)");
    final UExprTranslationResult result = UExprSupport.translateToUExpr(rule);
    assertEquals(
        "∑{x0,x1}([x2 = a2(x0)] * r0(x0) * [a1(x0) = a0(x1)] * not([IsNull(a0(x1))]) * r1(x1))",
        result.sourceExpr().toString());
    assertEquals(
        "∑{x0,x1}([x3 = a2(x0)] * r0(x0) * [a1(x0) = a0(x1)] * not([IsNull(a0(x1))]) * r1(x1))",
        result.targetExpr().toString());
    assertEquals("x2", result.sourceOutVar().toString());
    assertEquals("x3", result.targetOutVar().toString());
  }

  @Test
  public void testSubquery1() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a0 s0>(InnerJoin<k0 k1>(Input<t0>,Proj<k5 s5>(Input<t1>)))|"
                + "Proj<a1 s1>(InSubFilter<k2>(Input<t2>,Proj<k3 s3>(Input<t3>))|"
                + "TableEq(t0,t2);TableEq(t1,t3);AttrsEq(a0,a1);AttrsEq(k0,k2);AttrsEq(k1,k5);AttrsEq(k3,k5);"
                + "AttrsSub(a0,t0);AttrsSub(k0,t0);AttrsSub(k1,s5);AttrsSub(k5,t1);"
                + "Unique(t1,k5);SchemaEq(s1,s0);SchemaEq(s3,s5)");
    final UExprTranslationResult result = UExprSupport.translateToUExpr(rule);
    System.out.println(result.symToTable.size());
    assertEquals(
        "∑{x0,x1}([x2 = a2(x0)] * r0(x0) * [a1(x0) = a0(x1)] * not([IsNull(a0(x1))]) * r1(x1))",
        result.sourceExpr().toString());
    assertEquals(
        "∑{x0,x1}([x3 = a2(x0)] * r0(x0) * [a1(x0) = a0(x1)] * not([IsNull(a0(x1))]) * r1(x1))",
        result.targetExpr().toString());
    assertEquals("x2", result.sourceOutVar().toString());
    assertEquals("x3", result.targetOutVar().toString());
  }

  @Test
  public void testSubquery2() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a0 s0>(InnerJoin<k0 k1>(Input<t0>,Proj*<k5 s5>(Input<t1>)))|"
                + "Input<t2>|"
                + "TableEq(t2,t0);"
                + "AttrsSub(a0,t0);AttrsSub(k0,t0);AttrsSub(k1,s5);AttrsSub(k5,t1);");
    final UExprTranslationResult result = UExprSupport.translateToUExpr(rule);
    assertEquals(
        "∑{x0,x2}([x3 = a3(x0)] * r0(x0) * [a1(x0) = a2(x2)] * not([IsNull(a2(x2))]) * |∑{x1}([x2 = a0(x1)] * r1(x1))|)",
        result.sourceExpr().toString());
    assertEquals("r0(x0)", result.targetExpr().toString());
    assertEquals("x3", result.sourceOutVar().toString());
    assertEquals("x0", result.targetOutVar().toString());
  }

  @Test
  public void testSubquery3() {
    final Substitution rule =
        Substitution.parse(
            "InSubFilter<k0>(Input<t0>,Proj<k1 s1>(Input<t1>))|"
                + "Input<t2>|"
                + "TableEq(t2,t0);"
                + "AttrsSub(k0,t0);AttrsSub(k1,t1)");

    final UExprTranslationResult result = UExprSupport.translateToUExpr(rule);
    assertEquals(
        "r0(x0) * ||∑{x1}([a1(x0) = a0(x1)] * not([IsNull(a0(x1))]) * r1(x1))||",
        result.sourceExpr().toString());
    assertEquals("r0(x0)", result.targetExpr().toString());
    assertEquals("x0", result.sourceOutVar().toString());
    assertEquals("x0", result.targetOutVar().toString());
  }

  @Test
  public void testProj() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a0 s0>(Proj<a1 s1>(Input<t0>))|"
                + "Proj<a2 s2>(Input<t1>)|"
                + "TableEq(t0,t1);AttrsEq(a0,a2);AttrsEq(a0,a1);"
                + "AttrsSub(a0,s1);AttrsSub(a1,t0);SchemaEq(s2,s0)");
    final UExprTranslationResult result = UExprSupport.translateToUExpr(rule);
    assertEquals("∑{x0}([x1 = a0(x0)] * r0(x0))", result.sourceExpr().toString());
    assertEquals("∑{x0}([x2 = a0(x0)] * r0(x0))", result.targetExpr().toString());
    assertEquals("x1", result.sourceOutVar().toString());
    assertEquals("x2", result.targetOutVar().toString());
  }

  @Test
  public void testProjFilter() {
    final Substitution rule =
        Substitution.parse(
            "Filter<p0 a0>(Proj<a1 s1>(Input<t0>))|"
                + "Proj<a2 s2>(Filter<p1 a3>(Input<t1>)|"
                + "TableEq(t0,t1);AttrsEq(a3,a0);AttrsEq(a2,a1);PredicateEq(p1,p0);"
                + "AttrsSub(a0,s1);AttrsSub(a1,t0);"
                + "SchemaEq(s2,s1)");
    final UExprTranslationResult result = UExprSupport.translateToUExpr(rule);
    assertEquals("∑{x0}([x1 = a0(x0)] * r0(x0) * [p0(a1(x1))])", result.sourceExpr().toString());
    assertEquals("∑{x0}([x2 = a0(x0)] * r0(x0) * [p0(a1(x0))])", result.targetExpr().toString());
    assertEquals("x1", result.sourceOutVar().toString());
    assertEquals("x2", result.targetOutVar().toString());
  }
}
