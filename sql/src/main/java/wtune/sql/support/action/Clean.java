package wtune.sql.support.action;

import wtune.sql.SqlSupport;
import wtune.sql.ast.SqlNode;
import wtune.sql.ast.SqlNodes;
import wtune.sql.ast.ExprFields;
import wtune.sql.ast.ExprKind;
import wtune.sql.ast.constants.LiteralKind;

import java.util.List;

import static wtune.common.tree.TreeSupport.nodeEquals;
import static wtune.common.utils.Commons.joining;
import static wtune.common.utils.FuncSupport.pred;
import static wtune.common.utils.IterableSupport.all;
import static wtune.sql.ast.SqlNodeFields.*;
import static wtune.sql.support.locator.LocatorSupport.nodeLocator;

class Clean {
  static void clean(SqlNode root) {
    SqlNode target;
    while ((target = nodeLocator().accept(Clean::isBoolConstant).find(root)) != null)
      deleteBoolConstant(target);

    for (SqlNode node : nodeLocator().accept(Clean::isTextFunc).gather(root))
      inlineTextConstant(node);
  }

  private static boolean isBoolConstant(SqlNode node) {
    final SqlNode parent = node.parent();
    return parent != null
        && (nodeEquals(node, parent.$(QuerySpec_Where))
            || ExprKind.Binary.isInstance(parent) && parent.$(ExprFields.Binary_Op).isLogic())
        && NormalizationSupport.isConstant(node);
  }

  private static void deleteBoolConstant(SqlNode node) {
    final SqlNode parent = node.parent();

    if (nodeEquals(node, parent.$(QuerySpec_Where))) {
      parent.remove(QuerySpec_Where);

    } else if (ExprKind.Binary.isInstance(parent) && parent.$(ExprFields.Binary_Op).isLogic()) {
      final SqlNode lhs = parent.$(ExprFields.Binary_Left), rhs = parent.$(ExprFields.Binary_Right);
      if (nodeEquals(lhs, node)) node.context().displaceNode(parent.nodeId(), rhs.nodeId());
      else if (nodeEquals(rhs, node)) node.context().displaceNode(parent.nodeId(), lhs.nodeId());
      else assert false;
    }
  }

  private static boolean isTextFunc(SqlNode node) {
    final SqlNode name = node.$(ExprFields.FuncCall_Name);
    if (name == null || name.$(Name2_0) != null) return false; // UDF

    final String funcName = name.$(Name2_1).toLowerCase();
    final List<SqlNode> args = node.$(ExprFields.FuncCall_Args);

    switch (funcName) {
      case "concat":
        return all(args, pred(ExprKind.Literal::isInstance).or(Clean::isTextFunc));
      case "lower":
      case "upper":
        return args.size() == 1 && (ExprKind.Literal.isInstance(args.get(0)) || isTextFunc(args.get(0)));
      default:
        return false;
    }
  }

  private static void inlineTextConstant(SqlNode funcCall) {
    final SqlNode literal = SqlSupport.mkLiteral(funcCall.context(), LiteralKind.TEXT, stringify(funcCall));
    funcCall.context().displaceNode(funcCall.nodeId(), literal.nodeId());
  }

  private static String stringify(SqlNode node) {
    if (ExprKind.Literal.isInstance(node)) return String.valueOf(node.$(ExprFields.Literal_Value));
    assert ExprKind.FuncCall.isInstance(node);

    final String funcName = node.$(ExprFields.FuncCall_Name).$(Name2_1).toLowerCase();
    final SqlNodes args = node.$(ExprFields.FuncCall_Args);

    switch (funcName) {
      case "concat":
        return joining("", args, Clean::stringify);
      case "upper":
        return stringify(args.get(0)).toUpperCase();
      case "lower":
        return stringify(args.get(0)).toLowerCase();
      default:
        assert false;
        return "";
    }
  }
}
