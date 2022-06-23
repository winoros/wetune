package wtune.superopt.fragment;

import com.google.common.collect.Sets;
import wtune.superopt.fragment.pruning.Rule;
import wtune.superopt.util.Hole;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import static java.util.Collections.singleton;
import static wtune.common.utils.IterableSupport.none;

class FragmentEnumerator {
  private final int maxOps;
  private final List<Op> opSet;
  private final Set<Rule> pruningRules;

  FragmentEnumerator(List<Op> opSet, int maxOps) {
    this.maxOps = maxOps;
    this.opSet = opSet;
    this.pruningRules = new HashSet<>(8);
  }

  void setPruningRules(Iterable<Rule> rules) {
    rules.forEach(pruningRules::add);
  }

  List<Fragment> enumerate() {
    return enumerate0(0, singleton(new FragmentImpl(null))).stream()
        .peek(FragmentSupport::setupFragment)
        .filter(f -> none(pruningRules, it -> it.match(f)))
        .sorted((x, y) -> FragmentUtils.structuralCompare(x.root(), y.root()))
        .peek(FragmentImpl::symbols) // trigger initialization
        .collect(Collectors.toList());
  }

  private Set<FragmentImpl> enumerate0(int depth, Set<FragmentImpl> fragments) {
    if (depth >= maxOps) return fragments;

    final Set<FragmentImpl> newFragments = new HashSet<>();
    for (FragmentImpl g : fragments)
      for (Hole<Op> hole : FragmentUtils.gatherHoles(g))
        for (Op template : opSet)
          if (hole.fill(template)) {
            newFragments.add(g.copy());
            hole.unFill();
          }

    return Sets.union(fragments, enumerate0(depth + 1, newFragments));
  }
}
