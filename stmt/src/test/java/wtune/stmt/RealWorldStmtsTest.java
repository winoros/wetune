package wtune.stmt;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import wtune.sql.SqlSupport;
import wtune.sql.ast.SqlNode;
import wtune.sql.plan.PlanContext;
import wtune.sql.plan.PlanSupport;
import wtune.sql.support.action.NormalizationSupport;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

import static org.junit.jupiter.api.Assertions.*;
import static wtune.sql.support.resolution.JoinGraph.JOIN_GRAPH;
import static wtune.sql.support.resolution.Params.PARAMS;

public class RealWorldStmtsTest {
  private static SqlNode parseSql(Statement stmt) {
    final String dbType = stmt.app().dbType();
    final String sql0 = stmt.rawSql();
    return SqlSupport.parseSql(dbType, sql0);
  }

  private static class TestHelper implements Iterator<Statement> {
    private final Iterator<Statement> iter;
    private String startPoint;
    private Statement next;

    private TestHelper(Iterator<Statement> iter, String startPoint) {
      this.iter = iter;
      this.startPoint = startPoint;
      if (iter.hasNext()) next();
    }

    @Override
    public boolean hasNext() {
      return next != null;
    }

    @Override
    public Statement next() {
      final Statement ret = next;
      if (ret == null && !iter.hasNext()) throw new NoSuchElementException();
      if (startPoint == null || startPoint.isEmpty()) {
        this.next = iter.hasNext() ? iter.next() : null;

      } else {
        while (iter.hasNext()) {
          Statement next = iter.next();
          if (startPoint.equals(next.toString())) {
            this.next = next;
            this.startPoint = null;
            break;
          }
        }
        if (startPoint != null) throw new NoSuchElementException();
      }
      return ret;
    }
  }

  private static Iterable<Statement> stmts(String startPoint) {
    final List<Statement> allStmts = Statement.findAll();
    return () -> new TestHelper(allStmts.iterator(), startPoint);
  }

  void testParseSchema() {
    for (App app : App.all()) app.schema("base");
  }

  void testParseSql() {
    SqlSupport.muteParsingError();

    final String latch = "";
    for (Statement stmt : stmts(latch)) {
      final SqlNode ast0 = parseSql(stmt);
      if (ast0 == null) {
        System.out.println("skipped: " + stmt);
        continue;
      }

      final String sql1 = ast0.toString();
      assertFalse(sql1.contains("<??>"));
      final SqlNode ast1 = SqlSupport.parseSql(stmt.app().dbType(), sql1);
      assertNotNull(ast1);
      assertEquals(sql1, ast1.toString());
    }
  }

  void testAssemblePlan() {
    SqlSupport.muteParsingError();
    final String latch = "";

    for (Statement stmt : stmts(latch)) {
      final SqlNode ast = parseSql(stmt);
      if (ast == null || !PlanSupport.isSupported(ast)) {
        System.out.println("skipped: " + stmt);
        continue;
      }

      final PlanContext plan = PlanSupport.assemblePlan(ast, stmt.app().schema("base"));
      assertNotNull(plan);
    }
  }

  void testNormalization() {
    final String latch = "";
    for (Statement stmt : stmts(latch)) {
      final SqlNode ast = parseSql(stmt);
      final String original = ast.toString();
      ast.context().setSchema(stmt.app().schema("base"));

      NormalizationSupport.normalizeAst(ast);

      final String modified = ast.toString();
      assertFalse(modified.contains("<??>"), stmt.toString());
      assertTrue(!original.contains("1 = 1") || !modified.contains("1 = 1"), stmt.toString());
      assertTrue(!original.contains("1 = 0") || !modified.contains("1 = 0"), stmt.toString());
    }
  }

  @Test
  @DisplayName("[Stmt] normalize all statements after normalization")
  void testAssemblePlanAfterNormalization() {
    final String latch = "";
    for (Statement stmt : stmts(latch)) {
      final SqlNode ast = parseSql(stmt);
      if (ast == null || !PlanSupport.isSupported(ast)) {
        System.out.println("skipped: " + stmt);
        continue;
      }

      ast.context().setSchema(stmt.app().schema("base"));
      NormalizationSupport.normalizeAst(ast);
      final PlanContext plan = PlanSupport.assemblePlan(ast, stmt.app().schema("base"));

      assertNotNull(plan, stmt + " " + PlanSupport.getLastError());
    }
  }

  @Test
  @DisplayName("[Stmt] resolve params")
  void testResolveParam() {
    final String latch = "shopizer-1";
    for (Statement stmt : stmts(latch)) {
      final SqlNode ast = parseSql(stmt);
      if (ast == null || !PlanSupport.isSupported(ast)) {
        System.out.println("skipped: " + stmt);
        continue;
      }

      ast.context().setSchema(stmt.app().schema("base"));
      assertDoesNotThrow(
          () -> ast.context().getAdditionalInfo(PARAMS).numParams(), stmt + " " + stmt.rawSql());
    }
  }

  @Test
  @DisplayName("[Stmt] resolve join graph")
  void testResolveJoinGraph() {
    final String latch = "";
    for (Statement stmt : stmts(latch)) {
      final SqlNode ast = parseSql(stmt);
      if (ast == null || !PlanSupport.isSupported(ast)) {
        System.out.println("skipped: " + stmt);
        continue;
      }

      ast.context().setSchema(stmt.app().schema("base"));
      assertDoesNotThrow(
          () -> ast.context().getAdditionalInfo(JOIN_GRAPH), stmt + " " + stmt.rawSql());
    }
  }
}
