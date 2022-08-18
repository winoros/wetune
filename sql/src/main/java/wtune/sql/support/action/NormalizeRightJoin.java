package wtune.sql.support.action;

import wtune.sql.ast.SqlNode;
import wtune.sql.ast.constants.JoinKind;
import wtune.sql.ast.TableSourceFields;
import wtune.sql.ast.TableSourceKind;

import static wtune.common.tree.TreeContext.NO_SUCH_NODE;
import static wtune.sql.support.locator.LocatorSupport.nodeLocator;

class NormalizeRightJoin {
  static void normalize(SqlNode node) {
    for (SqlNode target : nodeLocator().accept(NormalizeRightJoin::isRightJoin).gather(node))
      flipJoin(target);
  }

  private static boolean isRightJoin(SqlNode node) {
    return node.$(TableSourceFields.Joined_Kind) == JoinKind.RIGHT_JOIN
        && TableSourceKind.SimpleSource.isInstance(node.$(TableSourceFields.Joined_Left));
  }

  private static void flipJoin(SqlNode node) {
    final SqlNode left = (SqlNode) node.remove(TableSourceFields.Joined_Left);
    final SqlNode right = (SqlNode) node.remove(TableSourceFields.Joined_Right);
    node.context().setParentOf(left.nodeId(), NO_SUCH_NODE);
    node.context().setParentOf(right.nodeId(), NO_SUCH_NODE);
    node.$(TableSourceFields.Joined_Left, right);
    node.$(TableSourceFields.Joined_Right, left);
    node.$(TableSourceFields.Joined_Kind, JoinKind.LEFT_JOIN);
  }
}
