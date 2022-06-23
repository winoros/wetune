package wtune.superopt.logic;

import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import wtune.sql.plan.PlanContext;
import wtune.superopt.TestHelper;
import wtune.superopt.substitution.Substitution;
import wtune.superopt.substitution.SubstitutionBank;
import wtune.superopt.uexpr.UExprSupport;
import wtune.superopt.uexpr.UExprTranslationResult;

import java.io.IOException;
import java.nio.file.Path;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static wtune.common.datasource.DbSupport.MySQL;
import static wtune.sql.plan.PlanSupport.translateAsAst;
import static wtune.superopt.substitution.SubstitutionSupport.*;

@Tag("prover")
@Tag("fast")
class LogicProverTest {
  @Test
  public void testSpes0() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a3 s2>(Agg<a1 a2 f0 s1 p0>(Proj*<a0 s0>(Input<t0>)))|Proj<a7 s5>(Agg<a5 a6 f1 s4 p1>(Proj<a4 s3>(Input<t1>)))|AttrsSub(a0,t0);AttrsSub(a1,s0);AttrsSub(a2,s0);AttrsSub(a3,s1);TableEq(t1,t0);AttrsEq(a4,a0);AttrsEq(a5,a1);AttrsEq(a6,a2);AttrsEq(a7,a3);PredicateEq(p1,p0);SchemaEq(s3,s0);SchemaEq(s4,s1);SchemaEq(s5,s2);FuncEq(f1,f0)");
    final int result = LogicSupport.proveEqBySpes(rule);
    assertEquals(LogicSupport.EQ, result, rule.toString());
  }

  @Test
  public void testSpes1() {
    final Substitution rule =
        Substitution.parse(
            "Union*(Union*(Input<t0>,Input<t1>),Input<t2>)|"
                + "Union*(Input<t3>,Input<t4>)|"
                + "TableEq(t0,t1);TableEq(t3,t0);TableEq(t4,t2)");
    final int result = LogicSupport.proveEqBySpes(rule);
    assertEquals(LogicSupport.EQ, result, rule.toString());
  }

  @Test
  public void testBank() {
    for (Substitution rule : TestHelper.bankForTest().rules()) {
      try {
        final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
        final int result = LogicSupport.proveEq(uExprs);
        if (result == LogicSupport.EQ) System.out.println(rule.toString());
        //        assertEquals(LogicSupport.EQ, result, rule.toString());
      } catch (Throwable ex) {
        System.out.println(rule);
        break;
      }
    }
  }

  @Test
  public void testUsed() throws IOException {
    final SubstitutionBank bank = loadBank(Path.of("wtune_data", "rules", "rules.used.txt"));
    for (Substitution rule : bank.rules()) {
      try {
        if (!rule.isExtended()) {
          final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
          final int result = LogicSupport.proveEq(uExprs);
          if (result != LogicSupport.EQ) System.err.println(rule.toString());

          final var pair = translateAsPlan(rule);
          final PlanContext plan = pair.getLeft();
          System.out.println(translateAsAst(plan, plan.root(), true));
          System.out.println(plan.schema().toDdl(MySQL, new StringBuilder()).toString());
        } else {
          final var pair = translateAsPlan2(rule);
          final PlanContext plan = pair.getLeft();
          System.out.println(translateAsAst(plan, plan.root(), true));
          System.out.println(plan.schema().toDdl(MySQL, new StringBuilder()).toString());
        }

      } catch (Throwable ex) {
        System.err.println(rule);
        break;
      }
    }
  }

  @Test
  public void testUsedSpes() throws IOException {
    final SubstitutionBank bank = loadBank(Path.of("wtune_data", "rules", "rules.used.txt"));
    int count = 0;
    for (Substitution rule : bank.rules()) {
      final int result = LogicSupport.proveEqBySpes(rule);
      if (result == LogicSupport.EQ) {
        ++count;
        System.out.println("Rule " + rule.id() + " can be proved.");
      }
    }
    System.out.println(count + " can be proved in all.");
  }

  @Test
  public void testIncorrect() {
    final Substitution rule =
        Substitution.parse(
            "Proj*<a3 s1>(InnerJoin<a1 a2>(Proj<a0 s0>(Input<t0>),Input<t1>))|"
                + "Proj<a6 s2>(InnerJoin<a4 a5>(Input<t2>,Input<t3>))|"
                + "AttrsSub(a0,t0);AttrsSub(a1,s0);AttrsSub(a2,t1);AttrsSub(a3,t1);Unique(t0,a0);Unique(t1,a3);"
                + "TableEq(t2,t1);TableEq(t3,t0);AttrsEq(a4,a2);AttrsEq(a5,a1);AttrsEq(a6,a3);SchemaEq(s2,s1)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.UNKNOWN, result, rule.toString());
  }

  @Test
  public void testCalcite33() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a0 s0>(InnerJoin<k0 k1>(Input<t0>,Proj*<a1 s1>(Input<t1>)))|"
                + "Proj<a2 s2>(InSubFilter<k3>(Input<t2>,Proj<a3 s3>(Input<t3>)))|"
                + "AttrsEq(k1,a1);"
                + "AttrsSub(a0,t0);AttrsSub(k0,t0);AttrsSub(k1,s1);AttrsSub(a1,t1);"
                + "SchemaEq(s2,s0);SchemaEq(s3,s1);TableEq(t2,t0);TableEq(t3,t1);"
                + "AttrsEq(a2,a0);AttrsEq(k3,k0);AttrsEq(a3,k1)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result, rule.toString());
  }

  @Test
  public void testCalcite67() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a0 s0>(InnerJoin<k0 k1>(Input<t0>,Proj*<a1 s1>(Input<t1>)))|"
                + "Proj<a2 s2>(InnerJoin<k2 k3>(Input<t2>,Proj<a3 s3>(Input<t3>)))|"
                + "AttrsSub(a0,t0);AttrsSub(k0,t0);AttrsSub(k1,s1);AttrsSub(a1,t1);"
                + "SchemaEq(s2,s0);SchemaEq(s3,s1);TableEq(t2,t0);TableEq(t3,t1);"
                + "AttrsEq(a2,a0);AttrsEq(k2,k0);AttrsEq(k3,k1);AttrsEq(a3,a1)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.FAST_REJECTED, result, rule.toString());
  }

  @Test
  public void testInnerJoinElimination0() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a0 s0>(Filter<p0 b0>(InnerJoin<k0 k1>(Input<t0>,Input<t1>)))|"
                + "Proj<a1 s1>(Filter<p1 b1>(Input<t2>))|"
                + "TableEq(t0,t2);AttrsEq(a0,a1);AttrsEq(b0,b1);PredicateEq(p0,p1);"
                + "AttrsSub(a0,t0);AttrsSub(b0,t0);AttrsSub(k0,t0);AttrsSub(k1,t1);"
                + "NotNull(t0,k0);NotNull(t1,k1);Unique(t1,k1);Reference(t0,k0,t1,k1);"
                + "SchemaEq(s1,s0)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }

  @Test
  public void testInnerJoinElimination1() {
    final Substitution rule =
        Substitution.parse(
            "Proj*<a0 s0>(Filter<p0 b0>(InnerJoin<k0 k1>(Input<t0>,Input<t1>)))|"
                + "Proj*<a1 s1>(Filter<p1 b1>(Input<t2>))|"
                + "TableEq(t0,t2);AttrsEq(a0,a1);AttrsEq(b0,b1);PredicateEq(p0,p1);"
                + "AttrsSub(a0,t0);AttrsSub(b0,t0);AttrsSub(k0,t0);AttrsSub(k1,t1);"
                + "NotNull(t0,k0);NotNull(t1,k1);Reference(t0,k0,t1,k1);"
                + "SchemaEq(s1,s0)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }

  @Test
  public void testInnerJoinElimination2() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a2 s2>(InnerJoin<a0 a1>(Input<t0>,Input<t1>))|"
                + "Proj<a3 s3>(Input<t2>)|"
                + "AttrsSub(a0,t0);AttrsSub(a1,t1);AttrsSub(a2,t1);"
                + "Unique(t0,a0);"
                + "NotNull(t1,a1);Reference(t1,a1,t0,a0);"
                + "TableEq(t2,t1);AttrsEq(a3,a2);SchemaEq(s3,s2)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }

  @Test
  public void testInnerJoinElimination3() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a2 s2>(InnerJoin<a0 a1>(Input<t0>,Input<t1>))|"
                + "Proj<a3 s3>(Input<t2>)|"
                + "AttrsEq(a2,a1);"
                + "AttrsSub(a0,t0);AttrsSub(a1,t1);AttrsSub(a2,t1);"
                + "Unique(t1,a1);"
                + "NotNull(t0,a0);Reference(t0,a0,t1,a1);"
                + "TableEq(t2,t0);AttrsEq(a3,a0);SchemaEq(s3,s2)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }

  @Test
  public void testInnerJoinElimination4() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a2 s0>(InnerJoin<a0 a1>(Input<t0>,Input<t1>))|"
                + "Proj<a3 s1>(Input<t2>)|"
                + "AttrsEq(a2,a1);AttrsSub(a0,t0);AttrsSub(a1,t1);AttrsSub(a2,t1);"
                + "Unique(t1,a1);NotNull(t0,a0);Reference(t0,a0,t1,a1);"
                + "TableEq(t2,t0);AttrsEq(a3,a0);SchemaEq(s1,s0)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }

  @Test
  public void testIN2InnerJoin0() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a0 s0>(InSubFilter<k0>(Input<t0>,Proj<k1 s2>(Input<t1>)))|"
                + "Proj<a1 s1>(InnerJoin<k2 k3>(Input<t2>,Input<t3>))|"
                + "TableEq(t0,t2);TableEq(t1,t3);AttrsEq(a0,a1);AttrsEq(k0,k2);AttrsEq(k1,k3);"
                + "AttrsSub(a0,t0);AttrsSub(k0,t0);AttrsSub(k1,t1);"
                + "Unique(t1,k1);SchemaEq(s1,s0)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }

  @Test
  public void testIN2InnerJoin1() {
    final Substitution rule =
        Substitution.parse(
            "Proj*<a0 s0>(InSubFilter<k0>(Input<t0>,Proj<k1 s2>(Input<t1>)))|"
                + "Proj*<a1 s1>(InnerJoin<k2 k3>(Input<t2>,Input<t3>))|"
                + "TableEq(t0,t2);TableEq(t1,t3);AttrsEq(a0,a1);AttrsEq(k0,k2);AttrsEq(k1,k3);"
                + "AttrsSub(a0,t0);AttrsSub(k0,t0);AttrsSub(k1,t1);SchemaEq(s1,s0)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }

  @Test
  public void testIN2InnerJoin2() {
    final Substitution rule =
        Substitution.parse(
            "Proj*<a2 s2>(InSubFilter<a1>(Input<t0>,Proj<a0 s0>(Input<t1>)))|"
                + "Proj*<a5 s5>(InnerJoin<a3 a4>(Input<t2>,Input<t3>))|"
                + "AttrsSub(a0,t1);AttrsSub(a1,t0);AttrsSub(a2,t0);"
                + "TableEq(t2,t1);TableEq(t3,t0);AttrsEq(a3,a0);AttrsEq(a4,a1);AttrsEq(a5,a2);SchemaEq(s5,s2)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }

  @Test
  public void testPlainFilterCollapsing() {
    final Substitution rule =
        Substitution.parse(
            "Filter<p0 a0>(Filter<p1 a1>(Input<t0>))|"
                + "Filter<p2 a2>(Input<t1>)|"
                + "TableEq(t0,t1);AttrsEq(a0,a1);AttrsEq(a0,a2);PredicateEq(p0,p1);PredicateEq(p0,p2);PredicateEq(p1,p2);"
                + "AttrsSub(a1,t0);AttrsSub(a0,t0)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }

  @Test
  void testINSubFilterCollapsing() {
    final Substitution rule =
        Substitution.parse(
            "InSubFilter<a0>(InSubFilter<a1>(Input<t0>,Input<t1>),Input<t2>)|"
                + "InSubFilter<a2>(Input<t3>,Input<t4>)|"
                + "TableEq(t0,t3);TableEq(t1,t2);TableEq(t1,t4);"
                + "AttrsEq(a0,a1);AttrsEq(a0,a2);"
                + "AttrsSub(a1,t0);AttrsSub(a0,t0);AttrsSub(a2,t3)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }

  @Test
  void testProjCollapsing0() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a0 s0>(Proj<a1 s1>(Input<t0>))|"
                + "Proj<a2 s2>(Input<t1>)|"
                + "TableEq(t0,t1);AttrsEq(a0,a2);AttrsEq(a0,a1);"
                + "AttrsSub(a0,s1);AttrsSub(a1,t0);SchemaEq(s2,s0)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }

  @Test
  void testProjCollapsing1() {
    final Substitution rule =
        Substitution.parse(
            "Proj*<a1 s1>(Filter<p0 b0>(Proj<a0 s0>(Input<t0>)))|"
                + "Proj*<a2 s2>(Filter<p1 b1>(Input<t1>))|"
                + "AttrsSub(a1,s0);AttrsSub(b0,s0);AttrsSub(a0,t0);"
                + "SchemaEq(s2,s1);TableEq(t1,t0);AttrsEq(a2,a1);AttrsEq(b1,b0);"
                + "PredicateEq(p1,p0)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result, rule.toString());
  }

  @Test
  void testInSubFilterElimination() {
    final Substitution rule =
        Substitution.parse(
            "InSubFilter<a0>(Input<t0>,Proj<a1 s1>(Input<t1>))|"
                + "Input<t2>|"
                + "TableEq(t0,t1);TableEq(t0,t2);AttrsEq(a0,a1);"
                + "AttrsSub(a1,t1);AttrsSub(a0,t0);NotNull(t1,a1);NotNull(t0,a0)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }

  @Test
  void testRemoveDeduplication() {
    final Substitution rule =
        Substitution.parse(
            "Proj*<a0 s0>(Input<t0>)|"
                + "Proj<a1 s1>(Input<t1>)|"
                + "TableEq(t0,t1);AttrsEq(a0,a1);AttrsSub(a0,t0);Unique(t0,a0);SchemaEq(s1,s0)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }

  @Test
  void testFlattenJoinSubquery() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a0 s0>(InnerJoin<k0 k1>(Input<t0>,Proj<a1 s1>(Filter<p0 b0>(Input<t1>))))|"
                + "Proj<a2 s2>(Filter<p1 b1>(InnerJoin<k2 k3>(Input<t2>,Input<t3>)))|"
                + "TableEq(t0,t2);TableEq(t1,t3);"
                + "AttrsEq(a0,a2);AttrsEq(k0,k2);AttrsEq(k1,k3);AttrsEq(b0,b1);"
                + "PredicateEq(p0,p1);"
                + "AttrsSub(a0,t0);AttrsSub(k0,t0);AttrsSub(k1,s1);AttrsSub(b0,t1);AttrsSub(a1,t1);"
                + "SchemaEq(s2,s0)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }

  @Test
  void testSubstituteAttr0() {
    final Substitution rule =
        Substitution.parse(
            "Filter<p0 a0>(InnerJoin<a1 a2>(Input<t0>,Input<t1>))|"
                + "Filter<p1 a3>(InnerJoin<a4 a5>(Input<t2>,Input<t3>))|"
                + "TableEq(t0,t2);TableEq(t1,t3);"
                + "AttrsEq(a0,a1);AttrsEq(a0,a4);AttrsEq(a2,a3);AttrsEq(a2,a5);"
                + "PredicateEq(p0,p1);"
                + "AttrsSub(a1,t0);AttrsSub(a2,t1);AttrsSub(a0,t0)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }

  @Test
  void testLeftJoinElimination0() {
    final Substitution rule =
        Substitution.parse(
            "Proj<a0 s0>(Filter<p0 a1>(LeftJoin<a2 a3>(Input<t0>,Input<t1>)))|"
                + "Proj<a4 s4>(Filter<p1 a5>(Input<t2>))|"
                + "TableEq(t0,t2);AttrsEq(a0,a4);AttrsEq(a1,a5);PredicateEq(p0,p1);"
                + "AttrsSub(a2,t0);AttrsSub(a3,t1);AttrsSub(a1,t0);AttrsSub(a0,t0);"
                + "Unique(t1,a3);SchemaEq(s4,s0)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }

  @Test
  void testLeftJoinElimination1() {
    final Substitution rule =
        Substitution.parse(
            "Proj*<a0 s0>(Filter<p0 a1>(LeftJoin<a2 a3>(Input<t0>,Input<t1>)))|"
                + "Proj*<a4 s4>(Filter<p1 a5>(Input<t2>))|"
                + "TableEq(t0,t2);AttrsEq(a0,a4);AttrsEq(a1,a5);PredicateEq(p0,p1);"
                + "AttrsSub(a2,t0);AttrsSub(a3,t1);AttrsSub(a1,t0);AttrsSub(a0,t0);"
                + "SchemaEq(s4,s0)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }

  @Test
  void testLeftJoinToInnerJoin() {
    final Substitution rule =
        Substitution.parse(
            "LeftJoin<k0 k1>(Input<t0>,Input<t1>)|"
                + "InnerJoin<k2 k3>(Input<t2>,Input<t3>)|"
                + "TableEq(t0,t2);TableEq(t1,t3);AttrsEq(k0,k2);AttrsEq(k1,k3);"
                + "AttrsSub(k0,t0);AttrsSub(k1,t1);AttrsSub(k2,t2);AttrsSub(k3,t3);"
                + "NotNull(t0,k0);Reference(t0,k0,t1,k1)");
    final UExprTranslationResult uExprs = UExprSupport.translateToUExpr(rule);
    final int result = LogicSupport.proveEq(uExprs);
    assertEquals(LogicSupport.EQ, result);
  }
}
