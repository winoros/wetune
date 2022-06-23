package wtune.testbed.profile;

import org.apache.commons.lang3.tuple.Pair;
import wtune.sql.ast.SqlContext;
import wtune.sql.ast.SqlNode;
import wtune.sql.ast.SqlNodes;
import wtune.sql.ast.constants.LiteralKind;
import wtune.sql.support.resolution.ParamDesc;
import wtune.sql.support.resolution.ParamModifier;
import wtune.sql.support.resolution.Params;
import wtune.sql.support.resolution.ResolutionSupport;
import wtune.stmt.Statement;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.List;

import static wtune.common.utils.ListSupport.tail;
import static wtune.sql.ast.ExprFields.*;
import static wtune.sql.ast.ExprKind.*;
import static wtune.sql.ast.SqlNodeFields.*;
import static wtune.sql.ast.constants.LiteralKind.NOT_NULL;
import static wtune.sql.ast.constants.LiteralKind.NULL;
import static wtune.sql.support.action.NormalizationSupport.normalizeAst;
import static wtune.sql.support.locator.LocatorSupport.clauseLocator;
import static wtune.sql.support.resolution.ParamModifier.Type.CHECK_NULL_NOT;
import static wtune.sql.support.resolution.Params.PARAMS;
import static wtune.sql.support.resolution.ResolutionSupport.isElementParam;

public interface ProfileSupport {
  /**
   * Setup necessary context for a statement to be profiled, including:
   *
   * <ol>
   *   <li>setup schema
   *   <li>normalize the sql
   *   <li>resolve parameters
   *   <li>replace all parameters by ParamMarker
   * </ol>
   */
  static void setupParams(Statement stmt) {
    ResolutionSupport.setLimitClauseAsParam(false);

    final SqlNode ast = stmt.ast();
    final SqlContext ctx = ast.context();
    ctx.setSchema(stmt.app().schema("base", true));

    clauseLocator().accept(Query_Limit).gather(ast).forEach(ProfileSupport::setupLIMIT);
    clauseLocator().accept(Query_Offset).gather(ast).forEach(ProfileSupport::setupOFFSET);

    normalizeAst(ast);
    final Params params = ctx.getAdditionalInfo(PARAMS);
    params.forEach(ProfileSupport::installParamMarker);
  }

  static Pair<Metric, Metric> compare(Statement stmt0, Statement stmt1, ProfileConfig config) {
    setupParams(stmt0);
    setupParams(stmt1);

    final Profiler profiler0 = Profiler.make(stmt0, config);
    final Profiler profiler1 = Profiler.make(stmt1, config);

    if (!tryReadParams(profiler0, config) || !tryReadParams(profiler1, config)) {
      ParamsGen.alignTables(profiler0.paramsGen(), profiler1.paramsGen());

      if (!profiler0.prepare()) return null;
      profiler1.setSeeds(profiler0.seeds());
      if (!profiler1.prepare()) return null;

      trySaveParams(profiler0, config);
      trySaveParams(profiler1, config);
    }

    System.out.println(stmt0 + ".base ");
    if (!profiler0.run()) return null;
    System.out.println(stmt1 + ".opt ");
    if (!profiler1.run()) return null;

    profiler0.close();
    profiler1.close();
    config.executorFactory().close();

    return Pair.of(profiler0.metric(), profiler1.metric());
  }

  static boolean dryRunStmt(Statement stmt0, ProfileConfig config) {
    setupParams(stmt0);

    final Profiler profiler0 = Profiler.make(stmt0, config);

    if (!tryReadParams(profiler0, config)) {
      ParamsGen.alignTables(profiler0.paramsGen(), profiler0.paramsGen());
      if (!profiler0.prepare()) return false;
      trySaveParams(profiler0, config);
    }

    if (!profiler0.runOnce()) return false;

    profiler0.close();
    config.executorFactory().close();
    return true;
  }

  private static void setupLIMIT(SqlNode limitClause) {
    if (Param.isInstance(limitClause)) {
      limitClause.$(Expr_Kind, Literal);
      limitClause.$(Literal_Kind, LiteralKind.INTEGER);
      limitClause.$(Literal_Value, 1000000);
    }
  }

  private static void setupOFFSET(SqlNode offsetClause) {
    if (Param.isInstance(offsetClause)) {
      offsetClause.$(Expr_Kind, Literal);
      offsetClause.$(Literal_Kind, LiteralKind.INTEGER);
      offsetClause.$(Literal_Value, 0);
    }
  }

  private static void installParamMarker(ParamDesc param) {
    final SqlNode paramNode = param.node();
    final ParamModifier.Type lastModifierType = tail(param.modifiers()).type();

    if (lastModifierType == ParamModifier.Type.CHECK_NULL) {
      paramNode.$(Literal_Kind, NOT_NULL);
      return;
    }

    if (lastModifierType == CHECK_NULL_NOT) {
      paramNode.$(Literal_Kind, NULL);
      return;
    }

    if (isElementParam(param)) {
      final SqlNode tuple = paramNode.parent();
      assert Tuple.isInstance(tuple);

      final SqlContext ctx = tuple.context();
      final SqlNode paramMarker0 = SqlNode.mk(ctx, Param);
      final SqlNode paramMarker1 = SqlNode.mk(ctx, Param);
      paramMarker0.flag(Param_ForceQuestion);
      paramMarker1.flag(Param_ForceQuestion);
      tuple.$(Tuple_Exprs, SqlNodes.mk(ctx, List.of(paramMarker0, paramMarker1)));
    }

    final SqlContext ctx = paramNode.context();
    final SqlNode paramMarker = SqlNode.mk(ctx, Param);
    paramMarker.flag(Param_ForceQuestion);
    ctx.displaceNode(paramNode.nodeId(), paramMarker.nodeId());
  }

  private static boolean tryReadParams(Profiler profiler, ProfileConfig config) {
    final ObjectInputStream stream = config.saveParamIn(profiler.statement());
    if (stream == null) return false;
    try (stream) {
      return profiler.readParams(stream);
    } catch (IOException | ClassNotFoundException e) {
      return false;
    }
  }

  private static void trySaveParams(Profiler profiler, ProfileConfig config) {
    final ObjectOutputStream stream = config.savedParamOut(profiler.statement());
    if (stream == null) return;
    try (stream) {
      profiler.saveParams(stream);
    } catch (IOException ignored) {
    }
  }
}
