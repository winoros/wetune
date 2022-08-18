package wtune.sql.support.action;

import wtune.sql.ast.SqlContext;
import wtune.sql.ast.SqlNode;
import wtune.sql.ast.SqlNodes;
import wtune.sql.ast.constants.BinaryOpKind;
import wtune.sql.ast.*;

import static java.util.Collections.singletonList;
import static wtune.common.tree.TreeSupport.nodeEquals;
import static wtune.sql.ast.constants.BinaryOpKind.ARRAY_CONTAINS;
import static wtune.sql.ast.constants.BinaryOpKind.IN_LIST;
import static wtune.sql.support.locator.LocatorSupport.nodeLocator;

class NormalizeTuple {
  static void normalize(SqlNode node) {
    for (SqlNode target : nodeLocator().accept(NormalizeTuple::isTuple).gather(node))
      normalizeTuple(target);
  }

  private static boolean isTuple(SqlNode node) {
    final SqlNode parent = node.parent();
    if (parent == null) return false;

    final BinaryOpKind op = parent.$(ExprFields.Binary_Op);
    final SqlNode rhs = parent.$(ExprFields.Binary_Right);
    return (op == ARRAY_CONTAINS || op == IN_LIST) && nodeEquals(rhs, node);
  }

  private static void normalizeTuple(SqlNode node) {
    final SqlContext ctx = node.context();
    final SqlNodes elements = SqlNodes.mk(ctx, singletonList(SqlNode.mk(ctx, ExprKind.Param)));
    if (ExprKind.Array.isInstance(node)) node.$(ExprFields.Array_Elements, elements);
    else if (ExprKind.Tuple.isInstance(node)) node.setField(ExprFields.Tuple_Exprs, elements);
    else assert false;
  }
}
