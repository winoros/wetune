package wtune.sql.util;

import gnu.trove.list.TIntList;
import gnu.trove.list.array.TIntArrayList;
import wtune.common.utils.Lazy;
import wtune.sql.ast.SqlNode;
import wtune.sql.ast.SqlNodes;
import wtune.sql.ast.constants.LiteralKind;
import wtune.sql.schema.Column;
import wtune.sql.support.locator.LocatorSupport;
import wtune.sql.support.resolution.ParamDesc;
import wtune.sql.support.resolution.ParamModifier;
import wtune.sql.support.resolution.Params;
import wtune.sql.support.resolution.ResolutionSupport;
import wtune.sql.ast.*;

import static wtune.common.utils.ListSupport.elemAt;
import static wtune.common.utils.ListSupport.tail;
import static wtune.sql.support.resolution.ParamModifier.Type.*;
import static wtune.sql.support.resolution.Params.PARAMS;

public class ParamInterpolator {
  private final SqlNode ast;
  private final Lazy<TIntList> interpolations;

  public ParamInterpolator(SqlNode ast) {
    this.ast = ast;
    this.interpolations = Lazy.mk(TIntArrayList::new);
  }

  public void go() {
    ResolutionSupport.setLimitClauseAsParam(false);
    final Params params = ast.context().getAdditionalInfo(PARAMS);
    final SqlNodes paramNodes = LocatorSupport.nodeLocator().accept(ExprKind.Param).gather(ast);
    for (SqlNode paramNode : paramNodes) interpolateOne(params.paramOf(paramNode));
  }

  public void undo() {
    if (interpolations.isInitialized()) {
      final TIntList nodeIds = interpolations.get();
      for (int i = 0, bound = nodeIds.size(); i < bound; ++i) {
        final SqlNode node = SqlNode.mk(ast.context(), nodeIds.get(i));
        node.$(SqlNodeFields.Expr_Kind, ExprKind.Param);
        node.$(ExprFields.Param_Number, i + 1);
        node.remove(ExprFields.Literal_Kind);
        node.remove(ExprFields.Literal_Value);
      }
    }
  }

  private void interpolateOne(ParamDesc param) {
    final SqlNode paramNode = param.node();
    if (!ExprKind.Param.isInstance(paramNode)) return;

    ParamModifier modifier = tail(param.modifiers());
    if (modifier == null) return;
    if (modifier.type() == TUPLE_ELEMENT || modifier.type() == ARRAY_ELEMENT)
      modifier = elemAt(param.modifiers(), -2);
    if (modifier == null || modifier.type() != COLUMN_VALUE) return;

    final SqlNode valueNode = mkValue(((Column) modifier.args()[1]));
    ast.context().displaceNode(paramNode.nodeId(), valueNode.nodeId());

    interpolations.get().add(paramNode.nodeId());
  }

  private SqlNode mkValue(Column column) {
    final SqlNode value = SqlNode.mk(ast.context(), ExprKind.Literal);
    switch (column.dataType().category()) {
      case INTEGRAL:
        value.$(ExprFields.Literal_Kind, LiteralKind.INTEGER);
        value.$(ExprFields.Literal_Value, 1);
        break;
      case FRACTION:
        value.$(ExprFields.Literal_Kind, LiteralKind.FRACTIONAL);
        value.$(ExprFields.Literal_Value, 1.0);
        break;
      case BOOLEAN:
        value.$(ExprFields.Literal_Kind, LiteralKind.BOOL);
        value.$(ExprFields.Literal_Value, false);
        break;
      case STRING:
        value.$(ExprFields.Literal_Kind, LiteralKind.TEXT);
        value.$(ExprFields.Literal_Value, "00001");
        break;
      case TIME:
        value.$(ExprFields.Literal_Kind, LiteralKind.TEXT);
        value.$(ExprFields.Literal_Value, "2021-01-01 00:00:00.000");
        break;
      default:
        value.$(ExprFields.Literal_Kind, LiteralKind.NULL);
        break;
    }
    return value;
  }
}
