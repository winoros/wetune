package wtune.superopt.fragment;

import wtune.superopt.fragment.pruning.*;

import java.util.List;
import java.util.Set;

import static wtune.common.utils.IterableSupport.linearFind;
import static wtune.common.utils.ListSupport.map;

public class FragmentSupportSPES {
  private static final int DEFAULT_MAX_OPS = 4;
  private static final List<Op> DEFAULT_OP_SET =
      map(List.of(OpKind.INNER_JOIN, OpKind.LEFT_JOIN, OpKind.SIMPLE_FILTER, OpKind.PROJ, OpKind.PROJ, OpKind.IN_SUB_FILTER, OpKind.SET_OP, OpKind.SET_OP, OpKind.AGG), Op::mk);
  private static final Set<Rule> DEFAULT_PRUNING_RULES =
      Set.of(
          new MalformedJoin(),
          new MalformedSubquery(),
          new MalformedUnion(),
          new MalformedAgg(),
          new NonLeftDeepJoin(),
          new TooManyJoin(),
          new TooManySubqueryFilter(),
          new TooManySimpleFilter(),
          new TooManyProj(),
          new TooManyUnion(),
          new TooManyAgg(),
          new TooDeepUnion(),
          new TooDeepAgg(),
          // new NotOnRootAgg(),
          new ReorderedFilter(),
          new MeaninglessDedup(),
          new MeaninglessUnionDedup(),
          new DiffUnionInputs());

  static {
    ((Proj) linearFind(DEFAULT_OP_SET, it -> it.kind() == OpKind.PROJ)).setDeduplicated(true);
    ((Union) linearFind(DEFAULT_OP_SET, it -> it.kind() == OpKind.SET_OP)).setDeduplicated(true);
  }

  public static List<Fragment> enumFragmentsSPES() {
    final FragmentEnumerator enumerator = new FragmentEnumerator(DEFAULT_OP_SET, DEFAULT_MAX_OPS);
    enumerator.setPruningRules(DEFAULT_PRUNING_RULES);
    return enumerator.enumerate();
  }
}
