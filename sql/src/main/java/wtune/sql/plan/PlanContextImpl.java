package wtune.sql.plan;

import gnu.trove.map.TObjectIntMap;
import gnu.trove.map.custom_hash.TObjectIntCustomHashMap;
import gnu.trove.strategy.IdentityHashingStrategy;
import wtune.common.tree.UniformTreeContextBase;
import wtune.common.utils.COW;
import wtune.sql.schema.Schema;

import static wtune.common.tree.TreeSupport.checkNodePresent;

class PlanContextImpl extends UniformTreeContextBase<PlanKind> implements PlanContext {
  private int root;
  private final Schema schema;
  private final COW<TObjectIntMap<PlanNode>> nodeReg;
  private final ValuesRegistryImpl valuesReg;
  private final InfoCacheImpl infoCache;

  protected PlanContextImpl(int root, int expectedNumNodes, Schema schema) {
    super(new PlanNd[(expectedNumNodes <= 0 ? 16 : expectedNumNodes) + 1], 2);
    this.schema = schema;
    this.nodeReg = new COW<>(mkIdentityMap(), null);
    this.valuesReg = new ValuesRegistryImpl(this);
    this.infoCache = new InfoCacheImpl();
  }

  private PlanContextImpl(PlanContextImpl other) {
    super(copyNodesArray((PlanNd[]) other.nodes), 2);
    this.root = other.root;
    this.maxNodeId = other.maxNodeId;
    this.schema = other.schema;
    this.nodeReg = new COW<>(other.nodeReg.forRead(), PlanContextImpl::copyIdentityMap);
    this.valuesReg = new ValuesRegistryImpl(other.valuesReg, this);
    this.infoCache = new InfoCacheImpl(other.infoCache);
  }

  @Override
  public int root() {
    return root;
  }

  @Override
  public PlanContext setRoot(int root) {
    this.root = root;
    return this;
  }

  @Override
  public Schema schema() {
    return schema;
  }

  @Override
  public PlanNode nodeAt(int id) {
    checkNodePresent(this, id);
    return ((PlanNd) nodes[id]).planNode;
  }

  @Override
  public int nodeIdOf(PlanNode node) {
    return nodeReg.forRead().get(node);
  }

  @Override
  public int bindNode(PlanNode node) {
    final int newNodeId = mkNode(node.kind());
    ((PlanNd) nodes[newNodeId]).planNode = node;
    nodeReg.forWrite().put(node, newNodeId);
    return newNodeId;
  }

  @Override
  public void deleteNode(int nodeId) {
    nodeReg.forWrite().remove(nodeId);
    valuesReg.deleteNode(nodeId);
    infoCache.deleteNode(nodeId);
    super.deleteNode(nodeId);
  }

  @Override
  public void compact() {
    super.compact();
    infoCache.cleanTemporary();
  }

  @Override
  protected void relocate(int from, int to) {
    nodeReg.forWrite().put(nodeAt(from), to);
    valuesReg.deleteNode(to);
    valuesReg.relocateNode(from, to);
    infoCache.deleteNode(to);
    infoCache.renumberNode(from, to);
    if (root == from) root = to;
    super.relocate(from, to);
  }

  @Override
  public ValuesRegistry valuesReg() {
    return valuesReg;
  }

  @Override
  public InfoCache infoCache() {
    return infoCache;
  }

  @Override
  public PlanContext copy() {
    return new PlanContextImpl(this);
  }

  @Override
  protected Nd<PlanKind> mk(PlanKind planKind) {
    return new PlanNd(planKind);
  }

  @Override
  public String toString() {
    return PlanSupport.stringifyTree(this, root());
  }

  private static <K> TObjectIntMap<K> mkIdentityMap() {
    return new TObjectIntCustomHashMap<>(IdentityHashingStrategy.INSTANCE);
  }

  private static <K> TObjectIntMap<K> copyIdentityMap(TObjectIntMap<K> other) {
    return new TObjectIntCustomHashMap<>(IdentityHashingStrategy.INSTANCE, other);
  }

  private static PlanNd[] copyNodesArray(PlanNd[] nds) {
    final PlanNd[] copiedNodes = new PlanNd[nds.length];
    for (int i = 0; i < nds.length; i++) {
      if (nds[i] != null) copiedNodes[i] = new PlanNd(nds[i]);
    }
    return copiedNodes;
  }

  private static class PlanNd extends Nd<PlanKind> {
    private PlanNode planNode;

    protected PlanNd(PlanKind planKind) {
      super(planKind);
    }

    protected PlanNd(PlanNd other) {
      super(other);
      this.planNode = other.planNode;
    }
  }
}
