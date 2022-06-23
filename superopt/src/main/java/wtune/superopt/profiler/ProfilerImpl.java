package wtune.superopt.profiler;

import gnu.trove.list.TDoubleList;
import gnu.trove.list.array.TDoubleArrayList;
import wtune.sql.ast.SqlNode;
import wtune.sql.plan.PlanContext;
import wtune.sql.util.ParamInterpolator;
import wtune.superopt.util.Complexity;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import static wtune.common.datasource.DbSupport.MySQL;
import static wtune.common.datasource.DbSupport.SQLServer;
import static wtune.sql.plan.PlanSupport.translateAsAst;

class ProfilerImpl implements Profiler {
  private final Properties dbProps;
  private PlanContext baseline;
  private double baseCost;
  private final List<PlanContext> plans;
  private final TDoubleList costs;

  ProfilerImpl(Properties dbProps) {
    this.dbProps = dbProps;
    this.plans = new ArrayList<>();
    this.costs = new TDoubleArrayList();
  }

  @Override
  public void setBaseline(PlanContext baseline) {
    plans.clear();
    costs.clear();
    this.baseline = baseline;
    this.baseCost = queryCost(translateAsAst(baseline, baseline.root(), false));
  }

  @Override
  public void profile(PlanContext plan) {
    if (plan == null) {
      plans.add(null);
      costs.add(Double.MAX_VALUE);
      return;
    }

    final SqlNode ast = translateAsAst(plan, plan.root(), false);
    final double cost = queryCost(ast);

    plans.add(plan);
    costs.add(cost);
  }

  @Override
  public PlanContext getPlan(int index) {
    return plans.get(index);
  }

  @Override
  public double getCost(int index) {
    return costs.get(index);
  }

  @Override
  public int minCostIndex() {
    double minCost = baseCost;
    int minCostIndex = -1;
    for (int i = 0, bound = costs.size(); i < bound; ++i) {
      if (costs.get(i) < minCost) {
        minCost = costs.get(i);
        minCostIndex = i;
      }
    }

    // MySQL doesn't correctly estimate some simplification (e.g. remove JOIN),
    // so let's do it ourself.
    if (minCostIndex == -1 && MySQL.equals(dbProps.getProperty("dbType"))) {
      Complexity minComplexity = Complexity.mk(baseline, baseline.root());
      for (int i = 0, bound = plans.size(); i < bound; i++) {
        final PlanContext plan = plans.get(i);
        if (plan == null) continue;
        final Complexity complexity = Complexity.mk(plan, plan.root());
        if (minComplexity.compareTo(complexity, false) > 0) {
          minComplexity = complexity;
          minCostIndex = i;
        }
      }
    }

    return minCostIndex;
  }

  private double queryCost(SqlNode ast) {
    final ParamInterpolator interpolator = new ParamInterpolator(ast);
    interpolator.go();

    String query = ast.toString();

    interpolator.undo();

    final String dbType = dbProps.getProperty("dbType");
    if (SQLServer.equals(dbType)) query = adaptToSqlserver(query);

    final DataSource dataSource = DataSourceFactory.instance().mk(dbProps);
    return CostQuery.mk(dbType, dataSource::getConnection, query).getCost();
  }

  private static String adaptToSqlserver(String sql) {
    sql = sql.replaceAll("`([A-Za-z0-9_$]+)`", "\\[$1\\]");
    sql = sql.replaceAll("\"([A-Za-z0-9_$]+)\"", "\\[$1\\]");

    sql = sql.replaceAll("TRUE", "1");
    sql = sql.replaceAll("FALSE", "0");

    sql =
        sql.replaceAll(
            "(\\(SELECT (DISTINCT)*)(.+)(ORDER BY ([^ ])+( ASC| DESC)*\\))", "$1 TOP 100 PERCENT $3 $4");

    sql =
        sql.replaceAll(
            "(ORDER BY [^()]+) LIMIT ([0-9]+) OFFSET ([0-9]+)",
            "$1 OFFSET $3 ROWS FETCH NEXT $2 ROWS ONLY");
    sql = sql.replaceAll("LIMIT ([0-9]+) OFFSET ([0-9]+)", "LIMIT $1");

    sql =
        sql.replaceAll(
            "\\(SELECT DISTINCT (.+) LIMIT ([0-9]+)\\)", "\\(SELECT DISTINCT TOP $2 $1\\)");
    sql = sql.replaceAll("\\(SELECT (.+) LIMIT ([0-9]+)\\)", "\\(SELECT TOP $2 $1\\)");
    sql = sql.replaceFirst("SELECT DISTINCT (.+)LIMIT ([0-9]+)", "SELECT DISTINCT TOP $2 $1");
    sql = sql.replaceFirst("SELECT (.+)LIMIT ([0-9]+)", "SELECT TOP $2 $1");

    sql = sql.replaceAll("MATCH ([^ ]+) AGAINST \\('([^\\[]+)' IN BOOLEAN MODE\\)", "$1 LIKE '%$2%'");
    sql = sql.replaceAll("'FALSE'", "0");
    sql = sql.replaceAll("'TRUE'", "1");
    sql = sql.replaceAll("USE INDEX \\([^ ]*\\)", "");
    sql = sql.replaceAll("CROSS JOIN", "JOIN");
    sql = sql.replaceAll("(\\[[A-Za-z0-9]+] \\* \\[[A-Za-z0-9]+])", "\\($1\\) AS total");
    sql = sql.replaceAll("ORDER BY [^ ]+ IS NULL,", "ORDER BY");

    return sql;
  }
}
