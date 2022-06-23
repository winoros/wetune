package wtune.superopt.substitution;

import org.apache.commons.lang3.tuple.Pair;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import wtune.sql.plan.PlanContext;
import wtune.sql.plan.PlanSupport;

import static org.junit.jupiter.api.Assertions.assertEquals;

@Tag("substitution")
@Tag("fast")
class PlanTranslator2Test {
  private String planToString(PlanContext plan) {
    return PlanSupport.stringifyTree(plan, plan.root(), false, true);
  }

  @Test
  public void testLeftJoin0() {
    final Substitution rule =
        Substitution.parse(
            "Proj*<a1 s1>(LeftJoin<a2 a3>(Input<t1>,Input<t2>)|"
                + "Proj*<a0 s0>(Input<t0>)|"
                + "TableEq(t0,t1);AttrsEq(a0,a1);AttrsEq(a1,a2);"
                + "AttrsSub(a0,t0);AttrsSub(a2,t1);AttrsSub(a1,t1);AttrsSub(a3,t2);"
                + "SchemaEq(s0,s1)");
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan2(rule);
    assertEquals(
        "Proj*4{[`#`.`#` AS c0,],refs=[t0.c0,],qual=q0}(LeftJoin3{`#`.`#` = `#`.`#`,refs=[t0.c0,t1.c1,]}(Input1{r0 AS t0},Input2{r1 AS t1}))",
        planToString(pair.getLeft()));
    assertEquals(
        "Proj*2{[`#`.`#` AS c0,],refs=[t0.c0,],qual=q0}(Input1{r0 AS t0})",
        planToString(pair.getRight()));
  }

  @Test
  public void testLeftJoin1() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a1 s1>(LeftJoin<a2 a3>(Input<t1>,Proj*<a4 s4>(Input<t2>))|"
                + "Proj<a0 s0>(Input<t0>)|"
                + "TableEq(t0,t1);AttrsEq(a0,a1);AttrsEq(a1,a2);"
                + "AttrsSub(a2,t1);AttrsSub(a1,t1);AttrsSub(a3,s4);AttrsSub(a4,t2);"
                + "SchemaEq(s1,s0)");
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan2(rule);
    assertEquals(
        "Proj5{[`#`.`#` AS c1,],refs=[t0.c1,],qual=q1}(LeftJoin4{`#`.`#` = `#`.`#`,refs=[t0.c1,q0.c2,]}(Input1{r0 AS t0},Proj*3{[`#`.`#` AS c0,`#`.`#` AS c2,],refs=[t1.c0,t1.c2,],qual=q0}(Input2{r1 AS t1})))",
        planToString(pair.getLeft()));
    assertEquals(
        "Proj2{[`#`.`#` AS c1,],refs=[t0.c1,],qual=q1}(Input1{r0 AS t0})",
        planToString(pair.getRight()));
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
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan2(rule);
    assertEquals(
        "Proj5{[`#`.`#` AS c2,],refs=[t0.c2,],qual=q1}(InSub4{`#`.`#`,refs=[t0.c1,]}(Input1{r0 AS t0},Proj3{[`#`.`#` AS c0,],refs=[t1.c0,],qual=q0}(Input2{r1 AS t1})))",
        planToString(pair.getLeft()));
    assertEquals(
        "Proj4{[`#`.`#` AS c2,],refs=[t0.c2,],qual=q1}(InnerJoin3{`#`.`#` = `#`.`#`,refs=[t0.c1,t1.c0,]}(Input1{r0 AS t0},Input2{r1 AS t1}))",
        planToString(pair.getRight()));
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
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan2(rule);
    assertEquals(
        "Proj5{[`#`.`#` AS c2,],refs=[t0.c2,],qual=q1}(InnerJoin4{`#`.`#` = `#`.`#`,refs=[t0.c1,q0.c0,]}(Input1{r0 AS t0},Proj3{[`#`.`#` AS c0,],refs=[t1.c0,],qual=q0}(Input2{r1 AS t1})))",
        planToString(pair.getLeft()));
    assertEquals(
        "Proj5{[`#`.`#` AS c2,],refs=[t0.c2,],qual=q1}(InSub4{`#`.`#`,refs=[t0.c1,]}(Input1{r0 AS t0},Proj3{[`#`.`#` AS c0,],refs=[t1.c0,],qual=q0}(Input2{r1 AS t1})))",
        planToString(pair.getRight()));
  }

  @Test
  public void testSubquery2() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a0 s0>(InnerJoin<k0 k1>(Input<t0>,Proj*<k5 s5>(Input<t1>)))|"
                + "Input<t2>|"
                + "TableEq(t2,t0);"
                + "AttrsSub(a0,t0);AttrsSub(k0,t0);AttrsSub(k1,s5);AttrsSub(k5,t1);");
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan2(rule);
    assertEquals(
        "Proj5{[`#`.`#` AS c3,],refs=[t0.c3,],qual=q1}(InnerJoin4{`#`.`#` = `#`.`#`,refs=[t0.c1,q0.c2,]}"
            + "(Input1{r0 AS t0},Proj*3{[`#`.`#` AS c0,`#`.`#` AS c2,],refs=[t1.c0,t1.c2,],qual=q0}"
            + "(Input2{r1 AS t1})))",
        planToString(pair.getLeft()));
    assertEquals("Input1{r0 AS t0}", planToString(pair.getRight()));
  }

  @Test
  public void testSubquery3() {
    final Substitution rule =
        Substitution.parse(
            "InSubFilter<k0>(Input<t0>,Proj<k1 s1>(Input<t1>))|"
                + "Input<t2>|"
                + "TableEq(t2,t0);"
                + "AttrsSub(k0,t0);AttrsSub(k1,t1)");
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan2(rule);
    assertEquals(
        "InSub4{`#`.`#`,refs=[t0.c1,]}(Input1{r0 AS t0},Proj3{[`#`.`#` AS c0,],refs=[t1.c0,],qual=q0}(Input2{r1 AS t1}))",
        planToString(pair.getLeft()));
    assertEquals("Input1{r0 AS t0}", planToString(pair.getRight()));
  }

  @Test
  public void testProj() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a0 s0>(Proj<a1 s1>(Input<t0>))|"
                + "Proj<a2 s2>(Input<t1>)|"
                + "TableEq(t0,t1);AttrsEq(a0,a2);AttrsEq(a0,a1);"
                + "AttrsSub(a0,s1);AttrsSub(a1,t0);SchemaEq(s2,s0)");

    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan2(rule);
    assertEquals(
        "Proj3{[`#`.`#` AS c0,],refs=[q0.c0,],qual=q1}(Proj2{[`#`.`#` AS c0,],refs=[t0.c0,],qual=q0}(Input1{r0 AS t0}))",
        planToString(pair.getLeft()));
    assertEquals(
        "Proj2{[`#`.`#` AS c0,],refs=[t0.c0,],qual=q1}(Input1{r0 AS t0})",
        planToString(pair.getRight()));
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
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan2(rule);
    assertEquals(
        "Filter3{P0(`#`.`#`),refs=[q0.c1,]}(Proj2{[`#`.`#` AS c0,`#`.`#` AS c1,],refs=[t0.c0,t0.c1,],qual=q0}(Input1{r0 AS t0}))",
        planToString(pair.getLeft()));
    assertEquals(
        "Proj3{[`#`.`#` AS c0,`#`.`#` AS c1,],refs=[t0.c0,t0.c1,],qual=q0}(Filter2{P0(`#`.`#`),refs=[t0.c1,]}(Input1{r0 AS t0}))",
        planToString(pair.getRight()));
  }

  @Test
  public void testAgg() {
    final Substitution rule =
        Substitution.parse(
            "Agg<a0 a1 f0 s0 p0>(Input<t0>)|"
                + "Agg<a2 a3 f1 s1 p1>(Input<t1>)|"
                + "AttrsSub(a0,t0);AttrsSub(a1,t0);"
                + "TableEq(t1,t0);AttrsEq(a2,a0);AttrsEq(a3,a1);"
                + "PredicateEq(p1,p0);FuncEq(f1,f0);SchemaEq(s1,s0)");

    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan2(rule);

    // final PlanContext leftPlan = pair.getLeft();
    // ValuesRegistry vr = leftPlan.valuesReg();
    // final AggNode agg = (AggNode) leftPlan.planRoot();
    // final List<Expression> groupByExprs = agg.groupByExprs();
    // final List<Expression> attrsExprs = agg.attrExprs();
    // final Values groupByValues = vr.valueRefsOf(groupByExprs.get(0));
    // final Values attrsValues1 = vr.valueRefsOf(attrsExprs.get(0));
    // final Values attrsValues2 = vr.valueRefsOf(attrsExprs.get(1));
    System.out.println(pair.getLeft());
    System.out.println(pair.getRight());

    assertEquals(
        "Agg3{[`#`.`#` AS c0,COUNT(`#`.`#`) AS %0,],group=[`#`.`#`],having=P0(COUNT(`#`.`#`)),refs=[t0.c0,t0.c1,t0.c0,t0.c1,],qual=q0}"
            + "(Proj2{[`#`.`#` AS c0,`#`.`#` AS c1,],refs=[t0.c0,t0.c1,],qual=q0_}"
            + "(Input1{r0 AS t0}))",
        planToString(pair.getLeft()));
    assertEquals(
        "Agg3{[`#`.`#` AS c0,COUNT(`#`.`#`) AS %0,],group=[`#`.`#`],having=P0(COUNT(`#`.`#`)),refs=[t0.c0,t0.c1,t0.c0,t0.c1,],qual=q0}"
            + "(Proj2{[`#`.`#` AS c0,`#`.`#` AS c1,],refs=[t0.c0,t0.c1,],qual=q0_}"
            + "(Input1{r0 AS t0}))",
        planToString(pair.getRight()));
  }

  @Test
  public void testProjAgg() {
    // Some issues about schema instantiation
    final Substitution rule =
        Substitution.parse(
            "Proj<a0 s0>(Agg<a1 a2 f0 s1 p0>(Input<t0>))|"
                + "Proj<a3 s2>(Agg<a4 a5 f1 s3 p1>(Input<t1>))|"
                + "AttrsSub(a0,s1);AttrsSub(a1,t0);AttrsSub(a2,t0);"
                + "TableEq(t1,t0);AttrsEq(a3,a0);AttrsEq(a4,a1);AttrsEq(a5,a2);"
                + "PredicateEq(p1,p0);FuncEq(f1,f0);SchemaEq(s2,s0);SchemaEq(s3,s1)");
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan2(rule);
    System.out.println(pair.getLeft());
    System.out.println(pair.getRight());

    assertEquals(
        "Proj4{[`#`.`#` AS c2,`#`.`#` AS %0,],refs=[q0.c2,q0.%0,],qual=q1}"
            + "(Agg3{[`#`.`#` AS c0,`#`.`#` AS c2,COUNT(`#`.`#`) AS %0,],group=[`#`.`#``#`.`#`],having=P0(COUNT(`#`.`#`)),refs=[t0.c0,t0.c2,t0.c1,t0.c0,t0.c2,t0.c1,],qual=q0}"
            + "(Proj2{[`#`.`#` AS c0,`#`.`#` AS c2,`#`.`#` AS c1,],refs=[t0.c0,t0.c2,t0.c1,],qual=q0_}"
            + "(Input1{r0 AS t0})))",
        planToString(pair.getLeft()));
    assertEquals(
        "Proj4{[`#`.`#` AS c2,`#`.`#` AS %0,],refs=[q0.c2,q0.%0,],qual=q1}"
            + "(Agg3{[`#`.`#` AS c0,`#`.`#` AS c2,COUNT(`#`.`#`) AS %0,],group=[`#`.`#``#`.`#`],having=P0(COUNT(`#`.`#`)),refs=[t0.c0,t0.c2,t0.c1,t0.c0,t0.c2,t0.c1,],qual=q0}"
            + "(Proj2{[`#`.`#` AS c0,`#`.`#` AS c2,`#`.`#` AS c1,],refs=[t0.c0,t0.c2,t0.c1,],qual=q0_}"
            + "(Input1{r0 AS t0})))",
        planToString(pair.getRight()));
  }

  @Test
  public void testAggProjFilter() {
    final Substitution rule =
        Substitution.parse(
            "Agg<a2 a3 f0 s1 p1>(Filter<p0 a1>(Proj<a0 s0>(Input<t0>)))|"
                + "Agg<a5 a6 f1 s2 p3>(Filter<p2 a4>(Input<t1>))|"
                + "AttrsSub(a0,t0);AttrsSub(a1,s0);AttrsSub(a2,s0);AttrsSub(a3,s0);"
                + "TableEq(t1,t0);AttrsEq(a4,a1);AttrsEq(a5,a2);AttrsEq(a6,a3);"
                + "PredicateEq(p2,p0);PredicateEq(p3,p1);FuncEq(f1,f0);SchemaEq(s2,s1)");
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan2(rule);
    System.out.println(pair.getLeft());
    System.out.println(pair.getRight());
    assertEquals(
        "Agg5{[`#`.`#` AS c2,COUNT(`#`.`#`) AS %0,],group=[`#`.`#`],having=P1(COUNT(`#`.`#`)),refs=[q0.c2,q0.c3,q0.c2,q0.c3,],qual=q1}"
            + "(Proj4{[`#`.`#` AS c2,`#`.`#` AS c3,],refs=[q0.c2,q0.c3,],qual=q1_}"
            + "(Filter3{P0(`#`.`#`),refs=[q0.c1,]}"
            + "(Proj2{[`#`.`#` AS c0,`#`.`#` AS c1,`#`.`#` AS c2,`#`.`#` AS c3,],refs=[t0.c0,t0.c1,t0.c2,t0.c3,],qual=q0}"
            + "(Input1{r0 AS t0}))))",
        planToString(pair.getLeft()));
    assertEquals(
        "Agg4{[`#`.`#` AS c2,COUNT(`#`.`#`) AS %0,],group=[`#`.`#`],having=P1(COUNT(`#`.`#`)),refs=[t0.c2,t0.c3,t0.c2,t0.c3,],qual=q1}"
            + "(Proj3{[`#`.`#` AS c2,`#`.`#` AS c3,],refs=[t0.c2,t0.c3,],qual=q1_}"
            + "(Filter2{P0(`#`.`#`),refs=[t0.c1,]}"
            + "(Input1{r0 AS t0})))",
        planToString(pair.getRight()));
  }

  @Test
  public void testAdjacentAgg() {
    // Not a valid rule, must not be EQ
    // remain to be modified in plan translator
    final Substitution rule =
        Substitution.parse(
            "Proj<a0 s0>(Agg<a1 a2 f0 s1 p0>(Agg<a3 a4 f1 s2 p1>(Input<t0>)))|"
                + "Proj<a5 s3>(Agg<a6 a7 f2 s4 p2>(Input<t1>))|"
                + "AttrsSub(a0,s1);AttrsSub(a1,s2);AttrsSub(a2,s2);AttrsSub(a3,t0);AttrsSub(a4,t0);"
                + "TableEq(t1,t0);AttrsEq(a5,a0);AttrsEq(a6,a3);AttrsEq(a7,a4);"
                + "PredicateEq(p2,p0);FuncEq(f2,f0);SchemaEq(s3,s0);SchemaEq(s4,s2);");
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan2(rule);
    System.out.println(pair.getLeft());
    System.out.println(pair.getRight());
  }

  @Test
  public void testAggProjJoin() {
    final Substitution rule =
        Substitution.parse(
            "Agg<a0 a1 f0 s0 p0>(Proj<a2 s1>(LeftJoin<a3 a4>(Input<t0>,Input<t1>))|"
                + "Input<t2>|"
                + "AttrsSub(a0,s1);AttrsSub(a1,s1);AttrsSub(a2,t0);AttrsSub(a3,t0);AttrsSub(a4,t1);"
                + "AttrsEq(a2,a3);"
                + "TableEq(t2,t0)");
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan2(rule);
    System.out.println(pair.getLeft());
    System.out.println(pair.getRight());

    assertEquals(
        "Agg6{[`#`.`#` AS c0,COUNT(`#`.`#`) AS %0,],group=[`#`.`#`],having=P0(COUNT(`#`.`#`)),refs=[q0.c0,q0.c0,q0.c0,q0.c0,],qual=q1}"
            + "(Proj5{[`#`.`#` AS c0,`#`.`#` AS c0,],refs=[q0.c0,q0.c0,],qual=q1_}"
            + "(Proj4{[`#`.`#` AS c0,],refs=[t0.c0,],qual=q0}"
            + "(LeftJoin3{`#`.`#` = `#`.`#`,refs=[t0.c0,t1.c1,]}"
            + "(Input1{r0 AS t0},Input2{r1 AS t1}))))",
        planToString(pair.getLeft()));
  }
}
