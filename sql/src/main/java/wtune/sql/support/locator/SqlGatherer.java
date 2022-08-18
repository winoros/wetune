package wtune.sql.support.locator;

import gnu.trove.list.TIntList;
import wtune.sql.ast.SqlNode;
import wtune.sql.ast.SqlNodes;

public interface SqlGatherer {
  TIntList gather(SqlNode root);

  default SqlNodes gatherNodes(SqlNode root) {
    return SqlNodes.mk(root.context(), gather(root));
  }

  TIntList nodeIds();
}
