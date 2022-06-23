package wtune.superopt.constraint;

import org.junit.jupiter.api.Test;
import wtune.common.utils.IntHistogram;
import wtune.common.utils.IntStatistic;
import wtune.superopt.fragment.Fragment;
import wtune.superopt.fragment.FragmentSupport;
import wtune.superopt.fragment.Symbols;
import wtune.superopt.fragment.Symbol;

import java.util.List;

import static wtune.common.utils.IterableSupport.count;
import static wtune.common.utils.IterableSupport.lazyFilter;

public class Statistics {
  @Test
  void testPruning() {
    final List<Fragment> fragments = FragmentSupport.enumFragments();
    System.out.println("#Templates: " + fragments.size());
    final IntStatistic stat0 = IntStatistic.mk();
    final IntHistogram stat1 = IntHistogram.mkDynamic(1, 1);

    int totalPairs = 0;
    for (int i = 0, bound = fragments.size() - 1; i < bound; ++i) {
      for (int j = i; j <= bound; ++j) {
        final Fragment f0 = fragments.get(i);
        Fragment f1 = fragments.get(j);
        if (f1 == f0) {
          f1 = f1.copy();
          FragmentSupport.setupFragment(f1);
        }

        final int sourceSpec = ConstraintSupport.pickSource(f0, f1);
        if ((sourceSpec & 1) != 0) {
          ++totalPairs;
          final int numConstraintsNoPrune = calcNumConstraintsNoPrune(f0, f1);
          final int numConstraintsPruned = calcNumConstraintsPruned(f0, f1);
          stat0.addSample(numConstraintsNoPrune);
          stat1.addSample(numConstraintsPruned);
        }
        if ((sourceSpec & 2) != 0) {
          ++totalPairs;
          final int numConstraintsNoPrune = calcNumConstraintsNoPrune(f0, f1);
          final int numConstraintsPruned = calcNumConstraintsPruned(f0, f1);
          stat0.addSample(numConstraintsNoPrune);
          stat1.addSample(numConstraintsPruned);
        }
      }
    }

    System.out.println("#PairsNoPrune: " + (fragments.size() * fragments.size()));
    System.out.println("#PairsPruned: " + totalPairs);
    System.out.println("#C* NoPrune: " + stat0);
    System.out.println("#C* Pruned: " + stat1);
    System.out.println("\tP50:" + stat1.estimatedPercentile(0.5));
    System.out.println("\tP90:" + stat1.estimatedPercentile(0.9));
  }

  private int calcNumConstraintsNoPrune(Fragment src, Fragment dest) {
    final Symbols syms0 = src.symbols(), syms1 = dest.symbols();
    int numTables = syms0.symbolsOf(Symbol.Kind.TABLE).size() + syms1.symbolsOf(Symbol.Kind.TABLE).size();
    int numAttrs = syms0.symbolsOf(Symbol.Kind.ATTRS).size() + syms1.symbolsOf(Symbol.Kind.ATTRS).size();
    int numPreds = syms0.symbolsOf(Symbol.Kind.PRED).size() + syms1.symbolsOf(Symbol.Kind.PRED).size();

    int count = 0;
    count += numTables * (numTables - 1) / 2; // TableEq
    count += numAttrs * (numAttrs - 1) / 2; // AttrsEq
    count += numPreds * (numPreds - 1) / 2; // PredEq
    count += numAttrs * numTables + numAttrs * numAttrs; // AttrsSub
    count += numTables * numAttrs; // Unique
    count += numTables * numAttrs; // NotNull
    count += numTables * numAttrs * numTables * numAttrs; // Reference

    return count;
  }

  private int calcNumConstraintsPruned(Fragment src, Fragment dest) {
    final ConstraintsIndex I = new ConstraintsIndex(src, dest);
    return count(lazyFilter(I, it -> it.kind() != Constraint.Kind.SchemaEq));
  }
}
