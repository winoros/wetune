package wtune.sql.support.action;

import wtune.common.utils.Commons;
import wtune.sql.ast.SqlNode;
import wtune.sql.ast.SqlNodes;
import wtune.sql.support.resolution.Attribute;
import wtune.sql.ast.*;
import wtune.sql.support.resolution.ResolutionSupport;

import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static wtune.sql.support.action.NormalizationSupport.*;
import static wtune.sql.support.locator.LocatorSupport.nodeLocator;
import static wtune.sql.support.locator.LocatorSupport.predicateLocator;
import static wtune.sql.support.resolution.ResolutionSupport.resolveAttribute;
import static wtune.sql.util.RenumberListener.watch;

class NormalizeGrouping {
  static void normalize(SqlNode node) {
    for (SqlNode target : nodeLocator().accept(SqlKind.QuerySpec).gather(node)) normalizeGrouping(target);
  }

  private static void normalizeGrouping(SqlNode querySpec) {
    final SqlNodes groupBys = querySpec.$(SqlNodeFields.QuerySpec_GroupBy);
    if (Commons.isNullOrEmpty(groupBys)) return;

    removeConstantGroupItem(groupBys);
    if (groupBys.isEmpty()) {
      querySpec.remove(SqlNodeFields.QuerySpec_GroupBy);
      return;
    }

    sortGroupItem(groupBys);
    convertHavingToWhere(querySpec);
    convertFullCoveringGroupingToDistinct(querySpec);
  }

  private static void removeConstantGroupItem(SqlNodes groupBys) {
    for (int i = 0; i < groupBys.size(); ) {
      final SqlNode groupItem = groupBys.get(i);
      if (isConstant(groupItem.$(SqlNodeFields.GroupItem_Expr))) {
        groupBys.erase(groupItem.nodeId());
      } else {
        ++i;
      }
    }
  }

  private static void sortGroupItem(SqlNodes groupBys) {
    groupBys.sort(Comparator.comparing(SqlNode::toString));
  }

  private static void convertFullCoveringGroupingToDistinct(SqlNode querySpec) {
    if (querySpec.$(SqlNodeFields.QuerySpec_Having) != null) return;
    final SqlNodes groupBys = querySpec.$(SqlNodeFields.QuerySpec_GroupBy);

    final Set<Attribute> groupAttributes = new HashSet<>();
    for (SqlNode groupBy : groupBys) {
      final SqlNode expr = groupBy.$(SqlNodeFields.GroupItem_Expr);
      if (!ExprKind.ColRef.isInstance(expr)) return;

      final Attribute attribute = ResolutionSupport.resolveAttribute(expr);
      if (attribute == null) return;

      groupAttributes.add(attribute);
    }

    final SqlNodes projections = querySpec.$(SqlNodeFields.QuerySpec_SelectItems);
    for (SqlNode projection : projections) {
      final SqlNode expr = projection.$(SqlNodeFields.SelectItem_Expr);
      if (!ExprKind.ColRef.isInstance(expr)) return;

      final Attribute attribute = ResolutionSupport.resolveAttribute(expr);
      if (attribute == null) return;

      if (!groupAttributes.contains(attribute)) return;
    }

    querySpec.remove(SqlNodeFields.QuerySpec_GroupBy);
    querySpec.flag(SqlNodeFields.QuerySpec_Distinct);
  }

  private static void convertHavingToWhere(SqlNode querySpec) {
    final SqlNode having = querySpec.$(SqlNodeFields.QuerySpec_Having);
    if (having == null) return;

    final SqlNodes exprs =
        predicateLocator().primitive().conjunctive().breakdownExpr().gather(having);

    try (final var es = watch(querySpec.context(), exprs.nodeIds())) {
      for (SqlNode e : es) {
        convertHavingToWhere(querySpec, e);
      }
    }
  }

  private static void convertHavingToWhere(SqlNode querySpec, SqlNode expr) {
    final SqlNode agg = nodeLocator().accept(ExprKind.Aggregate).find(expr);
    if (agg != null) return;

    final SqlNodes colRefs = nodeLocator().accept(ExprKind.ColRef).gather(expr);
    final List<Attribute> outAttr = ResolutionSupport.getEnclosingRelation(querySpec).attributes();
    for (SqlNode colRef : colRefs) {
      final Attribute attr = ResolutionSupport.resolveAttribute(colRef);
      if (attr != null && outAttr.contains(attr)) return;
    }

    detachExpr(expr);
    conjunctExprTo(querySpec, SqlNodeFields.QuerySpec_Where, expr);
  }
}
