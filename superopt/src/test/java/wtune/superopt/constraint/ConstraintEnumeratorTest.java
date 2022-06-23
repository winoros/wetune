package wtune.superopt.constraint;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInfo;
import wtune.superopt.fragment.Fragment;
import wtune.superopt.fragment.SymbolNaming;
import wtune.superopt.substitution.Substitution;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertTrue;
import static wtune.superopt.constraint.ConstraintSupport.enumConstraints;

@Tag("enumeration")
class ConstraintEnumeratorTest {
  private static void doTest(String fragment0, String fragment1, String... expectations) {
    final Fragment f0 = Fragment.parse(fragment0, null);
    final Fragment f1 = Fragment.parse(fragment1, null);
    final SymbolNaming naming = SymbolNaming.mk();
    naming.name(f0.symbols());
    naming.name(f1.symbols());

    System.out.println(f0.stringify(naming));
    System.out.println(f1.stringify(naming));

    //    enumConstraints(f0, f1, -1, ENUM_FLAG_DRY_RUN, naming);
    //    System.out.println(EnumerationMetrics.current());
    //    System.out.println("=============");

    final List<Substitution> results = enumConstraints(f0, f1, 900000);
    final List<String> strings = new ArrayList<>(results.size());
    for (Substitution rule : results) {
      final String str = rule.toString();
      strings.add(str.split("\\|")[2]);
    }

    System.out.println(EnumerationMetrics.current());
    for (String string : strings) System.out.println(string);

    for (String expectation : expectations) {
      assertTrue(strings.contains(expectation), expectation);
    }
  }

  @BeforeEach
  void init(TestInfo testInfo) {
    String methodName = testInfo.getTestMethod().orElseThrow().getName();
    System.out.println("----------" + methodName + "----------");
  }

  @Test
  @Tag("fast")
  void testInnerJoinElimination0() {
    doTest(
        "Proj(InnerJoin(Input,Input))",
        "Proj(Input)",
        "AttrsSub(a0,t0);AttrsSub(a1,t1);AttrsSub(a2,t0);Unique(t1,a1);NotNull(t0,a0);Reference(t0,a0,t1,a1);TableEq(t2,t0);AttrsEq(a3,a2);SchemaEq(s1,s0)",
        "AttrsSub(a0,t0);AttrsSub(a1,t1);AttrsSub(a2,t1);Unique(t0,a0);NotNull(t1,a1);Reference(t1,a1,t0,a0);TableEq(t2,t1);AttrsEq(a3,a2);SchemaEq(s1,s0)");
  }

  @Test
  @Tag("fast")
  void testInnerJoinElimination1() {
    doTest(
        "Proj*(InnerJoin(Input,Input))",
        "Proj*(Input)",
        "AttrsSub(a0,t0);AttrsSub(a1,t1);AttrsSub(a2,t0);NotNull(t0,a0);Reference(t0,a0,t1,a1);TableEq(t2,t0);AttrsEq(a3,a2);SchemaEq(s1,s0)",
        "AttrsSub(a0,t0);AttrsSub(a1,t1);AttrsSub(a2,t1);NotNull(t1,a1);Reference(t1,a1,t0,a0);TableEq(t2,t1);AttrsEq(a3,a2);SchemaEq(s1,s0)");
  }

  @Test
  @Tag("slow")
  void testInnerJoinElimination2() {
    doTest(
        "Proj(Filter(InnerJoin(Input,Input)))",
        "Proj(Filter(Input))",
        "AttrsSub(a0,t0);AttrsSub(a1,t1);AttrsSub(a2,t0);AttrsSub(a3,t0);Unique(t1,a1);NotNull(t0,a0);Reference(t0,a0,t1,a1);TableEq(t2,t0);AttrsEq(a4,a2);AttrsEq(a5,a3);PredicateEq(p1,p0);SchemaEq(s1,s0)",
        "AttrsSub(a0,t0);AttrsSub(a1,t1);AttrsSub(a2,t1);AttrsSub(a3,t1);Unique(t0,a0);NotNull(t1,a1);Reference(t1,a1,t0,a0);TableEq(t2,t1);AttrsEq(a4,a2);AttrsEq(a5,a3);PredicateEq(p1,p0);SchemaEq(s1,s0)");
  }

  @Test
  @Tag("slow")
  void testInnerJoinElimination3() {
    doTest(
        "Proj*(PlainFilter(InnerJoin(Input,Input)))",
        "Proj*(PlainFilter(Input))",
        "AttrsSub(a0,t0);AttrsSub(a1,t1);AttrsSub(a2,t0);AttrsSub(a3,t0);NotNull(t0,a0);Reference(t0,a0,t1,a1);TableEq(t2,t0);AttrsEq(a4,a2);AttrsEq(a5,a3);PredicateEq(p1,p0);SchemaEq(s1,s0)",
        "AttrsSub(a0,t0);AttrsSub(a1,t1);AttrsSub(a2,t1);AttrsSub(a3,t1);NotNull(t1,a1);Reference(t1,a1,t0,a0);TableEq(t2,t1);AttrsEq(a4,a2);AttrsEq(a5,a3);PredicateEq(p1,p0);SchemaEq(s1,s0)");
  }

  @Test
  @Tag("fast")
  void testLeftJoinElimination0() {
    doTest(
        "Proj(LeftJoin(Input,Input))",
        "Proj(Input)",
        "AttrsSub(a0,t0);AttrsSub(a1,t1);AttrsSub(a2,t0);Unique(t1,a1);TableEq(t2,t0);AttrsEq(a3,a2);SchemaEq(s1,s0)");
  }

  @Test
  @Tag("fast")
  void testLeftJoinElimination1() {
    doTest(
        "Proj*(LeftJoin(Input,Input))",
        "Proj*(Input)",
        "AttrsSub(a0,t0);AttrsSub(a1,t1);AttrsSub(a2,t0);TableEq(t2,t0);AttrsEq(a3,a2);SchemaEq(s1,s0)");
  }

  @Test
  @Tag("slow")
  void testLeftJoinElimination2() {
    doTest(
        "Proj(Filter(LeftJoin(Input,Input)))",
        "Proj(Filter(Input))",
        "AttrsSub(a0,t0);AttrsSub(a1,t1);AttrsSub(a2,t0);AttrsSub(a3,t0);Unique(t1,a1);TableEq(t2,t0);AttrsEq(a4,a2);AttrsEq(a5,a3);PredicateEq(p1,p0);SchemaEq(s1,s0)");
  }

  @Test
  @Tag("slow")
  void testLeftJoinElimination3() {
    doTest(
        "Proj*(Filter(LeftJoin(Input,Input)))",
        "Proj*(Filter(Input))",
        "AttrsSub(a0,t0);AttrsSub(a1,t1);AttrsSub(a2,t0);AttrsSub(a3,t0);TableEq(t2,t0);AttrsEq(a4,a2);AttrsEq(a5,a3);PredicateEq(p1,p0);SchemaEq(s1,s0)");
  }

  @Test
  @Tag("fast")
  void testLeftJoin2InnerJoin() {
    doTest(
        "LeftJoin(Input,Input)",
        "InnerJoin(Input,Input)",
        "AttrsSub(a0,t0);AttrsSub(a1,t1);NotNull(t0,a0);Reference(t0,a0,t1,a1);TableEq(t2,t0);TableEq(t3,t1);AttrsEq(a2,a0);AttrsEq(a3,a1)");
  }

  @Test
  @Tag("fast")
  void testIN2InnerJoin0() {
    doTest(
        "Proj(InSubFilter(Input,Proj(Input)))",
        "Proj(InnerJoin(Input,Input))",
        "AttrsSub(a0,t1);AttrsSub(a1,t0);AttrsSub(a2,t0);Unique(t1,a0);TableEq(t2,t0);TableEq(t3,t1);AttrsEq(a3,a1);AttrsEq(a4,a0);AttrsEq(a5,a2);SchemaEq(s2,s1)",
        "AttrsSub(a0,t1);AttrsSub(a1,t0);AttrsSub(a2,t0);Unique(t1,a0);TableEq(t2,t1);TableEq(t3,t0);AttrsEq(a3,a0);AttrsEq(a4,a1);AttrsEq(a5,a2);SchemaEq(s2,s1)");
  }

  @Test
  @Tag("fast")
  void testIN2InnerJoin1() {
    doTest(
        "Proj*(InSubFilter(Input,Proj(Input)))",
        "Proj*(InnerJoin(Input,Input))",
        "AttrsSub(a0,t1);AttrsSub(a1,t0);AttrsSub(a2,t0);TableEq(t2,t0);TableEq(t3,t1);AttrsEq(a3,a1);AttrsEq(a4,a0);AttrsEq(a5,a2);SchemaEq(s2,s1)",
        "AttrsSub(a0,t1);AttrsSub(a1,t0);AttrsSub(a2,t0);TableEq(t2,t1);TableEq(t3,t0);AttrsEq(a3,a0);AttrsEq(a4,a1);AttrsEq(a5,a2);SchemaEq(s2,s1)");
  }

  @Test
  @Tag("fast")
  void testPlainFilterCollapsing() {
    doTest(
        "PlainFilter(PlainFilter(Input))",
        "PlainFilter(Input)",
        "AttrsEq(a0,a1);PredicateEq(p0,p1);AttrsSub(a0,t0);AttrsSub(a1,t0);TableEq(t1,t0);AttrsEq(a2,a0);PredicateEq(p2,p0)");
  }

  @Test
  @Tag("fast")
  void testINSubFilterCollapsing() {
    doTest(
        "InSubFilter(InSubFilter(Input,Input),Input)",
        "InSubFilter(Input,Input)",
        "TableEq(t1,t2);AttrsEq(a0,a1);AttrsSub(a0,t0);AttrsSub(a1,t0);TableEq(t3,t0);TableEq(t4,t1);AttrsEq(a2,a0)",
        "TableEq(t1,t2);AttrsEq(a0,a1);AttrsSub(a0,t0);AttrsSub(a1,t0);TableEq(t3,t0);TableEq(t4,t2);AttrsEq(a2,a0)");
  }

  @Test
  @Tag("fast")
  void testProjCollapsing0() {
    doTest(
        "Proj(Proj(Input))",
        "Proj(Input)",
        "AttrsSub(a0,t0);AttrsSub(a1,s0);TableEq(t1,t0);AttrsEq(a2,a1);SchemaEq(s2,s1)");
  }

  @Test
  @Tag("fast")
  void testInSubFilterElimination() {
    doTest(
        "InSubFilter(Input,Proj(Input))",
        "Input",
        "TableEq(t0,t1);AttrsEq(a0,a1);AttrsSub(a0,t1);AttrsSub(a1,t0);NotNull(t1,a0);NotNull(t0,a1);TableEq(t2,t0)");
  }

  @Test
  @Tag("fast")
  void testRemoveDeduplication() {
    doTest(
        "Proj*(Input)",
        "Proj(Input)",
        "AttrsSub(a0,t0);Unique(t0,a0);TableEq(t1,t0);AttrsEq(a1,a0);SchemaEq(s1,s0)");
  }

  //  @Test
  //  @Tag("slow")
  void testFlattenJoinSubquery() {
    doTest("Proj(InnerJoin(Input,Proj(Filter(Input))))", "Proj(Filter(InnerJoin(Input,Input)))");
  }

  //  @Test
  void testSubstituteAttr0() {
    doTest("Filter(InnerJoin(Input,Input))", "Filter(InnerJoin(Input,Input))");
  }

  //  @Test
  void testSubstituteAttr1() {
    doTest(
        "Proj(InnerJoin(Input,Input))",
        "Proj(InnerJoin(Input,Input))",
        "Proj*<a0>(Input<t0>)|Proj<a1>(Input<t1>)|TableEq(t0,t1);AttrsEq(a0,a1);AttrsSub(a0,t0);AttrsSub(a1,t1);Unique(t0,a0);Unique(t1,a1)");
  }

  //  @Test
  void testSubstituteAttr2() {
    doTest(
        "Proj(Filter(InnerJoin(Input,Input)))",
        "Proj(Filter(InnerJoin(Input,Input)))",
        "Proj*<a0>(Input<t0>)|Proj<a1>(Input<t1>)|TableEq(t0,t1);AttrsEq(a0,a1);AttrsSub(a0,t0);AttrsSub(a1,t1);Unique(t0,a0);Unique(t1,a1)");
  }

  //  @Test
  void testSubstituteAttr3() {
    doTest(
        "InnerJoin(InnerJoin(Input,Input))",
        "InnerJoin(InnerJoin(Input,Input))",
        "Proj*<a0>(Input<t0>)|Proj<a1>(Input<t1>)|TableEq(t0,t1);AttrsEq(a0,a1);AttrsSub(a0,t0);AttrsSub(a1,t1);Unique(t0,a0);Unique(t1,a1)");
  }

  //  @Test
  void testSubstituteAttr4() {
    doTest(
        "LeftJoin(InnerJoin(Input,Input))",
        "LeftJoin(InnerJoin(Input,Input))",
        "Proj*<a0>(Input<t0>)|Proj<a1>(Input<t1>)|TableEq(t0,t1);AttrsEq(a0,a1);AttrsSub(a0,t0);AttrsSub(a1,t1);Unique(t0,a0);Unique(t1,a1)");
  }
}
