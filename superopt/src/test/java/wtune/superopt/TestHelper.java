package wtune.superopt;

import wtune.common.utils.Lazy;
import wtune.common.utils.SetSupport;
import wtune.sql.SqlSupport;
import wtune.sql.ast.SqlNode;
import wtune.sql.plan.PlanContext;
import wtune.sql.plan.PlanSupport;
import wtune.sql.schema.Schema;
import wtune.sql.schema.SchemaSupport;
import wtune.stmt.App;
import wtune.stmt.Statement;
import wtune.superopt.optimizer.Optimizer;
import wtune.superopt.substitution.SubstitutionBank;
import wtune.superopt.substitution.SubstitutionSupport;

import java.io.IOException;
import java.io.UncheckedIOException;
import java.nio.file.Paths;
import java.util.Set;

import static wtune.common.datasource.DbSupport.MySQL;
import static wtune.sql.plan.PlanSupport.translateAsAst;
import static wtune.sql.support.action.NormalizationSupport.normalizeAst;
import static wtune.superopt.optimizer.OptimizerSupport.dumpTrace;

public abstract class TestHelper {
  private static final String TEST_SCHEMA =
      ""
          + "CREATE TABLE a ( i INT PRIMARY KEY, j INT, k INT );"
          + "CREATE TABLE b ( x INT PRIMARY KEY, y INT, z INT );"
          + "CREATE TABLE c ( u INT PRIMARY KEY, v CHAR(10), w DECIMAL(1, 10) );"
          + "CREATE TABLE d ( p INT, q CHAR(10), r DECIMAL(1, 10), UNIQUE KEY (p), FOREIGN KEY (p) REFERENCES c (u) );";
  private static final Lazy<Schema> SCHEMA =
      Lazy.mk(() -> SchemaSupport.parseSchema(MySQL, TEST_SCHEMA));

  private static SubstitutionBank bank;

  public static SqlNode parseSql(String sql) {
    return SqlSupport.parseSql(MySQL, sql);
  }

  public static PlanContext parsePlan(String sql) {
    return PlanSupport.assemblePlan(parseSql(sql), SCHEMA.get());
  }

  public static SubstitutionBank bankForTest() {
    if (bank != null) return bank;

    try {
      bank = SubstitutionSupport.loadBank(Paths.get("wtune_data", "prepared", "rules.txt.1"));
    } catch (IOException ioe) {
      throw new UncheckedIOException(ioe);
    }

    return bank;
  }

  public static Set<SqlNode> optimizeStmt(Statement stmt) {
    final SqlNode ast = stmt.ast();
    final Schema schema = stmt.app().schema("base", true);
    ast.context().setSchema(schema);
    normalizeAst(ast);
    final PlanContext plan = PlanSupport.assemblePlan(ast, schema);
    final Optimizer optimizer = Optimizer.mk(bankForTest());
    optimizer.setTimeout(5000);
    optimizer.setTracing(true);
    final Set<PlanContext> optimized = optimizer.optimize(plan);
    for (PlanContext opt : optimized) dumpTrace(optimizer, opt);
    return SetSupport.map(optimized, it -> translateAsAst(it, it.root(), false));
  }

  public static Set<SqlNode> optimizeQuery(String appName, SqlNode ast) {
    final App app = App.of(appName);
    normalizeAst(ast);
    final PlanContext plan = PlanSupport.assemblePlan(ast, app.schema("base", true));
    final Optimizer optimizer = Optimizer.mk(bankForTest());
    final Set<PlanContext> optimized = optimizer.optimize(plan);
    return SetSupport.map(optimized, it -> translateAsAst(it, it.root(), false));
  }
}
