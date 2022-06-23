package wtune.superopt;

import com.microsoft.z3.Context;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import wtune.spes.AlgeNode.AlgeNode;
import wtune.sql.SqlSupport;
import wtune.sql.ast.SqlNode;
import wtune.sql.plan.PlanContext;
import wtune.sql.plan.PlanSupport;
import wtune.sql.schema.Schema;
import wtune.sql.schema.SchemaSupport;
import wtune.superopt.logic.LogicSupport;
import wtune.superopt.nodetrans.SPESSupport;
import wtune.superopt.substitution.Substitution;
import wtune.superopt.substitution.SubstitutionSupport;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static wtune.common.datasource.DbSupport.MySQL;

@Tag("slow")
@Tag("enumeration")
public class TestSPESNewOps {

  @Test
  void testUnionOp0() {
    final Substitution substitution0 =
            Substitution.parse("Union(Proj<a0>(Input<t0>),Proj<a1>(Input<t1>))|" +
                    "Proj<a2>(Input<t2>)|" +
                    "TableEq(t0,t2);AttrsEq(a0,a2);AttrsSub(a0,t0);AttrsSub(a1,t1)");

    var pair = SubstitutionSupport.translateAsPlan(substitution0);
  }

  @Test
  void testUnionOp1() {
    final Substitution substitution0 =
            Substitution.parse("Union*(Proj<a0>(Input<t0>),Input<t1>)|" +
                    "Proj<a1>(Input<t2>)|" +
                    "TableEq(t0,t2);AttrsEq(a0,a1);AttrsSub(a0,t0)");
    var pair = SubstitutionSupport.translateAsPlan(substitution0);
  }

  @Test
  void testAlgeNode_Table() {
    final Substitution substitution0 =
            Substitution.parse("Input<t0>|" +
                    "Input<t1>|" +
                    "TableEq(t0,t1)");
    int res = LogicSupport.proveEqBySpes(substitution0);
    assertEquals(LogicSupport.EQ, res);
  }

  @Test
  void testAlgeNode_Union() {
    final Substitution substitution0 =
            Substitution.parse("Union(Input<t0>,Input<t1>)|" +
                    "Union(Input<t2>,Input<t3>)|" +
                    "TableEq(t0,t3);TableEq(t1,t2)");
    int res = LogicSupport.proveEqBySpes(substitution0);
    assertEquals(LogicSupport.EQ, res);
  }

  @Test
  void testAlgeNode_Proj() {
    final Substitution substitution0 =
            Substitution.parse("Proj<a0>(Input<t0>)|" +
            "Proj<a1>(Input<t1>)|" +
            "TableEq(t0,t1);AttrsEq(a0,a1);AttrsSub(a0,t0)");
    int res = LogicSupport.proveEqBySpes(substitution0);
    assertEquals(LogicSupport.EQ, res);
  }

  @Test
  void testAlgeNode_Union_Proj() {
    final Substitution substitution0 =
            Substitution.parse("Union(Proj<a0>(Input<t0>),Proj<a1>(Input<t1>))|" +
//            "Proj<a2>(Input<t2>)|" +
            "Union(Proj<a2>(Input<t2>),Proj<a3>(Input<t3>))|" +
//            "TableEq(t0,t1);TableEq(t0,t2);AttrsEq(a0,a1);AttrsEq(a0,a2);AttrsSub(a0,t0);AttrsSub(a1,t1)");
            "TableEq(t0,t1);TableEq(t0,t3);TableEq(t1,t2);AttrsEq(a0,a1);AttrsEq(a0,a3);AttrsEq(a1,a2);AttrsSub(a0,t0);AttrsSub(a1,t1)");
    int res = LogicSupport.proveEqBySpes(substitution0);
    assertEquals(LogicSupport.EQ, res);
  }

  @Test
  void testAlgeNode_InnerJoin() {
    final Substitution substitution0 = Substitution.parse(
            "Proj<a0>(InnerJoin<a1 a2>(Input<t0>,Input<t1>))|" +
            "Proj<a3>(Input<t2>)|" +
            "TableEq(t0,t2);AttrsEq(a0,a3);AttrsSub(a1,t0);AttrsSub(a2,t1);AttrsSub(a0,t0)");
    int res = LogicSupport.proveEqBySpes(substitution0);
    assertEquals(LogicSupport.NEQ, res);
  }

  @Test
  void testAlgeNode_LeftJoin() {
    final Substitution substitution0 = Substitution.parse(
            "Proj<a0>(LeftJoin<a1 a2>(Input<t0>,Input<t1>))|" +
            "Proj<a3>(Input<t2>)|" +
            "TableEq(t0,t2);AttrsEq(a0,a3);AttrsSub(a1,t0);AttrsSub(a2,t1);AttrsSub(a0,t0)");
    int res = LogicSupport.proveEqBySpes(substitution0);
    assertEquals(LogicSupport.NEQ, res);
  }

  @Test
  void testALgeNode_SimpleFilter() {
    final Substitution substitution0 = Substitution.parse(
            "Filter<p0 a0>(Filter<p1 a1>(Input<t0>))|" +
            "Filter<p2 a2>(Input<t1>)|" +
            "TableEq(t0,t1);AttrsEq(a0,a1);AttrsEq(a0,a2);AttrsEq(a1,a2);PredicateEq(p0,p1);PredicateEq(p0,p2);PredicateEq(p1,p2);AttrsSub(a1,t0);AttrsSub(a0,t0)");
    int res = LogicSupport.proveEqBySpes(substitution0);
    assertEquals(LogicSupport.EQ, res);
  }

  @Test
  void testALgeNode_InSubFilter() {
    final Substitution substitution0 = Substitution.parse(
            "InSubFilter<a0>(InSubFilter<a1>(Input<t0>,Input<t1>),Input<t2>)|" +
            "InSubFilter<a2>(Input<t3>,Input<t4>)|" +
            "TableEq(t0,t3);TableEq(t1,t2);TableEq(t1,t4);TableEq(t2,t4);AttrsEq(a0,a1);AttrsEq(a0,a2);AttrsEq(a1,a2);AttrsSub(a1,t0);AttrsSub(a0,t0)");

    int res = LogicSupport.proveEqBySpes(substitution0);
    assertEquals(LogicSupport.NEQ, res);
  }


  @Test
  void tempTest() {
    final Substitution substitution0 = Substitution.parse("Proj<a3 s2>(Agg<a1 a2 f0 s1 p0>(Proj*<a0 s0>(Input<t0>)))|" +
        "Proj<a7 s5>(Agg<a5 a6 f1 s4 p1>(Proj<a4 s3>(Input<t1>)))|" +
        "AttrsSub(a0,t0);AttrsSub(a1,s0);AttrsSub(a2,s0);AttrsSub(a3,s1);" +
        "TableEq(t1,t0);AttrsEq(a4,a0);AttrsEq(a5,a1);AttrsEq(a6,a2);AttrsEq(a7,a3);" +
        "PredicateEq(p1,p0);SchemaEq(s3,s0);SchemaEq(s4,s1);SchemaEq(s5,s2);FuncEq(f1,f0)");
    int res = LogicSupport.proveEqBySpes(substitution0);
    System.out.println(res);
  }

  @Test
  void tempTestForAgg() {
    final String schemaSQL = "create table a (i int, j int, k int);";
    final String sql1 = "select a.i, max(a.j), a.k from a group by a.i, a.k";
    final String sql2 = "select a.i, max(a.j), a.k from a group by a.i, a.k";
    final PlanContext plan1 = mkPlan(sql1, schemaSQL);
    final PlanContext plan2 = mkPlan(sql2, schemaSQL);
    final AlgeNode agg1 = SPESSupport.plan2AlgeNode(plan1, new Context());
    final AlgeNode agg2 = SPESSupport.plan2AlgeNode(plan2, new Context());
//    boolean b = SPESSupport.prove(plan1, plan2);
  }

  static PlanContext mkPlan(String sql, String schemaSQL) {
    final Schema schema = SchemaSupport.parseSchema(MySQL, schemaSQL);
    final SqlNode ast = SqlSupport.parseSql(MySQL, sql);
    return PlanSupport.assemblePlan(ast, schema);
  }
}
