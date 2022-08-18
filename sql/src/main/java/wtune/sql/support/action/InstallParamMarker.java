package wtune.sql.support.action;

import wtune.sql.ast.SqlContext;
import wtune.sql.ast.SqlNode;
import wtune.sql.support.resolution.ParamDesc;
import wtune.sql.support.resolution.Params;
import wtune.sql.ast.ExprFields;
import wtune.sql.ast.ExprKind;

import static wtune.sql.support.resolution.Params.PARAMS;

class InstallParamMarker {
  public static void normalize(SqlNode root) {
    final Params params = root.context().getAdditionalInfo(PARAMS);
    params.forEach(InstallParamMarker::installParamMarker);
  }

  private static void installParamMarker(ParamDesc param) {
    final SqlContext context = param.node().context();
    final SqlNode paramMarker = SqlNode.mk(context, ExprKind.Param);
    paramMarker.$(ExprFields.Param_Number, param.index());
    context.displaceNode(param.node().nodeId(), paramMarker.nodeId());
  }
}
