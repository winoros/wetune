package wtune.stmt.support;

import wtune.sql.ast.SqlNode;
import wtune.sql.ast.constants.Category;
import wtune.sql.schema.Column;
import wtune.sql.support.resolution.Attribute;

import java.util.HashMap;
import java.util.Map;

import static wtune.sql.ast.ExprFields.*;
import static wtune.sql.ast.ExprKind.Binary;
import static wtune.sql.ast.constants.BinaryOpKind.EQUAL;
import static wtune.sql.schema.Column.Flag.FOREIGN_KEY;
import static wtune.sql.schema.Column.Flag.PRIMARY;
import static wtune.sql.support.locator.LocatorSupport.nodeLocator;
import static wtune.sql.support.resolution.ResolutionSupport.resolveAttribute;
import static wtune.sql.support.resolution.ResolutionSupport.traceRef;

public class InferForeignKey {
  public static Map<Column, Column> analyze(SqlNode node) {
    final Map<Column, Column> inferred = new HashMap<>();
    for (SqlNode binary : nodeLocator().accept(Binary).gather(node)) {
      infer(binary, inferred);
    }
    return inferred;
  }

  private static void infer(SqlNode binary, Map<Column, Column> inferred) {
    if (binary.$(Binary_Op) != EQUAL) return;
    final Attribute leftAttr = resolveAttribute(binary.$(Binary_Left));
    final Attribute rightAttr = resolveAttribute(binary.$(Binary_Right));
    if (leftAttr != null && rightAttr != null) {
      final Column leftCol = traceRef(leftAttr).column(), rightCol = traceRef(rightAttr).column();
      if (leftCol != null && rightCol != null) {
        final boolean isLeftSuspected = isSuspected(leftCol);
        final boolean isRightSuspected = isSuspected(rightCol);
        if (isLeftSuspected && !isRightSuspected) inferred.put(leftCol, rightCol);
        else if (!isLeftSuspected && isRightSuspected) inferred.put(rightCol, leftCol);
      }
    }
  }

  private static boolean isSuspected(Column column) {
    return !column.isFlag(FOREIGN_KEY)
        && !column.isFlag(PRIMARY)
        && (column.dataType().category() == Category.INTEGRAL
            || column.dataType().category() == Category.STRING);
  }
}
