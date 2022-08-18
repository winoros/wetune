package wtune.sql.support.action;

import wtune.sql.ast.ExprKind;
import wtune.sql.ast.SqlContext;
import wtune.sql.ast.SqlNode;
import wtune.sql.ast.*;
import wtune.sql.ast.constants.LiteralKind;

import static wtune.sql.SqlSupport.*;
import static wtune.sql.ast.constants.BinaryOpKind.EQUAL;
import static wtune.sql.ast.constants.BinaryOpKind.IS;
import static wtune.sql.ast.constants.UnaryOpKind.NOT;
import static wtune.sql.support.locator.LocatorSupport.predicateLocator;

class NormalizeBool {
  static void normalize(SqlNode node) {
    for (SqlNode target : predicateLocator().gather(node)) normalizeExpr(target);
  }

  private static void normalizeExpr(SqlNode expr) {
    assert SqlKind.Expr.isInstance(expr);
    // `expr` must be evaluated as boolean

    final SqlContext ctx = expr.context();

    if (ExprKind.ColRef.isInstance(expr)) {
      final SqlNode lhs = copyAst(expr).go();
      final SqlNode rhs = mkLiteral(ctx, LiteralKind.BOOL, true);
      final SqlNode binary = mkBinary(ctx, EQUAL, lhs, rhs);
      ctx.displaceNode(expr.nodeId(), binary.nodeId());

    } else if (expr.$(ExprFields.Binary_Op) == IS) {
      final SqlNode rhs = expr.$(ExprFields.Binary_Right);

      if (ExprKind.Literal.isInstance(rhs) && rhs.$(ExprFields.Literal_Kind) == LiteralKind.BOOL) {
        expr.$(ExprFields.Binary_Op, EQUAL);

        if (rhs.$(ExprFields.Literal_Value).equals(Boolean.FALSE)) {
          normalizeExpr(expr.$(ExprFields.Binary_Left));

          final SqlNode operand = copyAst(expr.$(ExprFields.Binary_Left)).go();
          final SqlNode unary = mkUnary(ctx, NOT, operand);
          ctx.displaceNode(expr.nodeId(), unary.nodeId());
        }
      }

    } else if (ExprKind.Unary.isInstance(expr) && expr.$(ExprFields.Unary_Op).isLogic()) {
      normalizeExpr(expr.$(ExprFields.Unary_Expr));

    } else if (ExprKind.Binary.isInstance(expr) && expr.$(ExprFields.Binary_Op).isLogic()) {
      normalizeExpr(expr.$(ExprFields.Binary_Left));
      normalizeExpr(expr.$(ExprFields.Binary_Right));
    }

    final ExprKind exprKind = expr.$(SqlNodeFields.Expr_Kind);
    assert exprKind == ExprKind.Unary
        || exprKind == ExprKind.Binary
        || exprKind == ExprKind.Ternary
        || exprKind == ExprKind.Case
        || exprKind == ExprKind.Exists
        || exprKind == ExprKind.Match
        || exprKind == ExprKind.ColRef
        || exprKind == ExprKind.Literal;
  }
}
