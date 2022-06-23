package wtune.superopt.fragment;

import wtune.common.utils.TreeNode;

public interface Op extends TreeNode<Symbols, Op>, Comparable<Op> {
  static Op mk(OpKind type) {
    return switch (type) {
      case INPUT -> new InputOp();
      case INNER_JOIN -> new InnerJoinOp();
      case LEFT_JOIN -> new LeftJoinOp();
      case SIMPLE_FILTER -> new SimpleFilterOp();
      case IN_SUB_FILTER -> new InSubFilterOp();
      case EXISTS_FILTER -> null;
      case PROJ -> new ProjOp();
      case AGG -> new AggOp();
      case SORT -> new SortOp();
      case LIMIT -> new LimitOp();
      case SET_OP -> new UnionOp();
    };
  }

  static Op parse(String typeName){
    final OpKind opKind = OpKind.parse(typeName);
    final Op op = Op.mk(opKind);
    if (opKind == OpKind.PROJ && typeName.endsWith("*")) {
      ((Proj)op).setDeduplicated(true);
    }
    if (opKind == OpKind.SET_OP && typeName.endsWith("*")) {
      ((Union)op).setDeduplicated(true);
    }
    return op;
  }

  OpKind kind();

  Fragment fragment();

  void setFragment(Fragment fragment);

  void acceptVisitor(OpVisitor visitor);

  int shadowHash();

  Op copyTree();

  @Override
  default Op copy(Symbols context) {
    throw new UnsupportedOperationException();
  }

  @Override
  default int compareTo(Op o) {
    int res = kind().compareTo(o.kind());
    if (res != 0) return res;

    final Op[] preds = predecessors(), otherPreds = o.predecessors();
    assert preds.length == otherPreds.length;

    for (int i = 0, bound = preds.length; i < bound; i++) {
      final Op pred = preds[i], otherPred = otherPreds[i];
      if (pred == null && otherPred == null) continue;
      if (pred == null /* && otherPred != null */) return -1;
      if (/* pred != null && */ otherPred == null) return 1;

      res = pred.compareTo(otherPred);
      if (res != 0) return res;
    }

    return 0;
  }
}
