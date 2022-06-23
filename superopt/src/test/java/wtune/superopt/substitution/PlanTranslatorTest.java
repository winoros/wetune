package wtune.superopt.substitution;

import org.apache.commons.lang3.tuple.Pair;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import wtune.sql.plan.PlanContext;
import wtune.sql.plan.PlanSupport;

import static org.junit.jupiter.api.Assertions.assertEquals;

@Tag("substitution")
@Tag("fast")
class PlanTranslatorTest {
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
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan(rule);
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
                + "AttrsSub(a0,t0);AttrsSub(a2,t1);AttrsSub(a1,t1);AttrsSub(a3,s4);AttrsSub(a4,t2);"
                + "SchemaEq(s1,s0)");
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan(rule);
    assertEquals(
        "Proj5{[`#`.`#` AS c1,],refs=[t0.c1,],qual=q1}(LeftJoin4{`#`.`#` = `#`.`#`,refs=[t0.c1,q0.c0,]}(Input1{r0 AS t0},Proj*3{[`#`.`#` AS c0,],refs=[t1.c0,],qual=q0}(Input2{r1 AS t1})))",
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
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan(rule);
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
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan(rule);
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
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan(rule);
    assertEquals(
        "Proj5{[`#`.`#` AS c2,],refs=[t0.c2,],qual=q1}(InnerJoin4{`#`.`#` = `#`.`#`,refs=[t0.c1,q0.c0,]}(Input1{r0 AS t0},Proj*3{[`#`.`#` AS c0,],refs=[t1.c0,],qual=q0}(Input2{r1 AS t1})))",
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
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan(rule);
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

    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan(rule);
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
    final Pair<PlanContext, PlanContext> pair = SubstitutionSupport.translateAsPlan(rule);
    assertEquals(
        "Filter3{P0(`#`.`#`),refs=[q0.c0,]}(Proj2{[`#`.`#` AS c0,],refs=[t0.c0,],qual=q0}(Input1{r0 AS t0}))",
        planToString(pair.getLeft()));
    assertEquals(
        "Proj3{[`#`.`#` AS c0,],refs=[t0.c0,],qual=q0}(Filter2{P0(`#`.`#`),refs=[t0.c0,]}(Input1{r0 AS t0}))",
        planToString(pair.getRight()));
  }
}
