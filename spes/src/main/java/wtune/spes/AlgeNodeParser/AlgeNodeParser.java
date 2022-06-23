package wtune.spes.AlgeNodeParser;

import com.microsoft.z3.Context;
import org.apache.calcite.rel.RelNode;
import wtune.spes.AlgeNode.AlgeNode;

public abstract class AlgeNodeParser {
  public abstract AlgeNode constructRelNode(RelNode input, Context z3Context);
}
