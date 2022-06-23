package wtune.superopt.constraint;

import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import wtune.common.utils.ArraySupport;
import wtune.superopt.fragment.Fragment;
import wtune.superopt.fragment.Symbol;
import wtune.superopt.fragment.SymbolNaming;
import wtune.superopt.substitution.Substitution;

import java.util.BitSet;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static wtune.common.utils.Commons.coalesce;

@Tag("enumeration")
@Tag("fast")
class ConstraintsIndexTest {
  private static final int NUM_KINDS_OF_SYMBOLS = Symbol.Kind.values().length;
  private static final int NUM_KINDS_OF_CONSTRAINTS = Constraint.Kind.values().length;

  private static class KnownInfo {
    int[] numSourceSyms;
    int[] numTargetSyms;
    int[] joinKeyAttrsIndex;
    int[] numSourcesOfAttrs;
    int[] numTableSourcesOfAttrs;

    private KnownInfo() {
      this.numSourceSyms = new int[NUM_KINDS_OF_SYMBOLS];
      this.numTargetSyms = new int[NUM_KINDS_OF_SYMBOLS];
      this.joinKeyAttrsIndex = ArraySupport.EMPTY_INT_ARRAY;
      this.numSourcesOfAttrs = ArraySupport.EMPTY_INT_ARRAY;
      this.numTableSourcesOfAttrs = null;
    }

    KnownInfo setJoinKeyAttrsIndex(int... indices) {
      assert (indices.length & 1) == 0;
      joinKeyAttrsIndex = indices;
      return this;
    }

    KnownInfo setNumSourceOfAttrs(int... numSources) {
      numSourcesOfAttrs = numSources;
      return this;
    }

    KnownInfo setNumTableSourceOfAttrs(int... numTableSources) {
      numTableSourcesOfAttrs = numTableSources;
      return this;
    }

    public int[] numTableSourcesOfAttrs() {
      return coalesce(numTableSourcesOfAttrs, numSourcesOfAttrs);
    }

    int numEqs(Symbol.Kind kind) {
      final int numSyms = numSourceSyms[kind.ordinal()];
      if (numSyms == 0) return 0;
      return (numSyms * (numSyms - 1)) >> 1;
    }

    int numInstantiations(Symbol.Kind kind) {
      final int numSourceSyms = this.numSourceSyms[kind.ordinal()];
      final int numTargetSyms = this.numTargetSyms[kind.ordinal()];
      return numTargetSyms * numSourceSyms;
    }

    int numAttrsSub() {
      return ArraySupport.sum(numSourcesOfAttrs);
    }

    int numUniques() {
      return ArraySupport.sum(numTableSourcesOfAttrs());
    }

    int numNotNulls() {
      return ArraySupport.sum(numTableSourcesOfAttrs());
    }

    int numReferences() {
      int count = 0;
      for (int i = 0, bound = joinKeyAttrsIndex.length - 1; i < bound; i += 2) {
        final int lhs = joinKeyAttrsIndex[i], rhs = joinKeyAttrsIndex[i + 1];
        final int lhsSources = numTableSourcesOfAttrs()[lhs];
        final int rhsSources = numTableSourcesOfAttrs()[rhs];
        count += (lhsSources * rhsSources) << 1;
      }
      return count;
    }

    int numOf(Constraint.Kind kind) {
      return switch (kind) {
        case TableEq -> numEqs(Symbol.Kind.TABLE);
        case AttrsEq -> numEqs(Symbol.Kind.ATTRS);
        case PredicateEq -> numEqs(Symbol.Kind.PRED);
        case SchemaEq -> 0;
        case FuncEq -> numEqs(Symbol.Kind.FUNC);
        case AttrsSub -> numAttrsSub();
        case Unique -> numUniques();
        case NotNull -> numNotNulls();
        case Reference -> numReferences();
      };
    }
  }

  private static int[] calcExpectedSegmentBase(KnownInfo info) {
    final int[] expectedSegBase = new int[NUM_KINDS_OF_CONSTRAINTS + NUM_KINDS_OF_SYMBOLS + 1];
    int cursor = 0;

    for (Constraint.Kind kind : Constraint.Kind.values()) {
      expectedSegBase[kind.ordinal()] = cursor;
      cursor += info.numOf(kind);
    }

    for (Symbol.Kind kind : Symbol.Kind.values()) {
      expectedSegBase[NUM_KINDS_OF_CONSTRAINTS + kind.ordinal()] = cursor;
      cursor += info.numInstantiations(kind);
    }

    expectedSegBase[expectedSegBase.length - 1] = cursor;

    return expectedSegBase;
  }

  private static void doTest(String fragment0, String fragment1, KnownInfo info) {
    final Fragment f0 = Fragment.parse(fragment0, null);
    final Fragment f1 = Fragment.parse(fragment1, null);

    final SymbolNaming naming = SymbolNaming.mk();
    naming.name(f0.symbols());
    naming.name(f1.symbols());

    System.out.println(f0.stringify(naming));
    System.out.println(f1.stringify(naming));

    for (Symbol.Kind kind : Symbol.Kind.values()) {
      info.numSourceSyms[kind.ordinal()] = f0.symbolCount(kind);
      info.numTargetSyms[kind.ordinal()] = f1.symbolCount(kind);
    }

    final int[] expectation = calcExpectedSegmentBase(info);

    final ConstraintsIndex I = new ConstraintsIndex(f0, f1);

    for (Constraint.Kind kind : Constraint.Kind.values()) {
      assertEquals(expectation[kind.ordinal()], I.beginIndexOfKind(kind), kind.name());
      assertEquals(expectation[kind.ordinal() + 1], I.endIndexOfKind(kind), kind.name());
    }

    for (Symbol.Kind kind : Symbol.Kind.values()) {
      assertEquals(
          expectation[NUM_KINDS_OF_CONSTRAINTS + kind.ordinal()],
          I.beginIndexOfInstantiation(kind),
          kind.name());
      assertEquals(
          expectation[NUM_KINDS_OF_CONSTRAINTS + kind.ordinal() + 1],
          I.endIndexOfInstantiation(kind),
          kind.name());
    }

    for (Symbol.Kind kind : Symbol.Kind.values()) {
      final List<Symbol> symbols = f0.symbols().symbolsOf(kind);
      final int base = I.beginIndexOfEq(kind);
      int offset = 0;
      for (int i = 0, bound = symbols.size() - 1; i < bound; i++) {
        for (int j = i + 1; j <= bound; ++j) {
          assertEquals(base + offset, I.indexOfEq(symbols.get(i), symbols.get(j)));
          ++offset;
        }
      }
    }

    final List<Symbol> attrs = f0.symbols().symbolsOf(Symbol.Kind.ATTRS);
    for (int i = 0, bound = attrs.size(); i < bound; i++) {
      assertEquals(info.numSourcesOfAttrs[i], I.viableSourcesOf(attrs.get(i)).size());
    }

    final BitSet bits = new BitSet(I.size());
    bits.set(0, bits.size(), true);

    final Substitution rule = I.mkRule(bits);
    System.out.println(rule.toString());
  }

  @Test
  void test0() {
    doTest(
        "Proj(PlainFilter(InnerJoin(Input,Input)))",
        "Proj(PlainFilter(Input))",
        new KnownInfo().setJoinKeyAttrsIndex(0, 1).setNumSourceOfAttrs(1, 1, 2, 2));
  }

  @Test
  void test1() {
    doTest(
        "Proj(InSubFilter(Input,Proj(Input)))",
        "Proj(InnerJoin(Input,Input))",
        new KnownInfo().setNumSourceOfAttrs(1, 1, 1));
  }

  @Test
  void test2() {
    doTest(
        "PlainFilter(PlainFilter(Input))",
        "PlainFilter(Input)",
        new KnownInfo().setNumSourceOfAttrs(1, 1));
  }

  @Test
  void test3() {
    doTest(
        "InSubFilter(InSubFilter(Input,Input),Input)",
        "InSubFilter(Input,Input)",
        new KnownInfo().setNumSourceOfAttrs(1, 1));
  }

  @Test
  void test4() {
    doTest(
        "Proj(Proj(Input))",
        "Proj(Input)",
        new KnownInfo().setNumSourceOfAttrs(1, 1).setNumTableSourceOfAttrs(1, 0));
  }

  @Test
  void test5() {
    doTest("InSubFilter(Input,Proj(Input))", "Input", new KnownInfo().setNumSourceOfAttrs(1, 1));
  }

  @Test
  void test6() {
    doTest("Proj*(Input)", "Proj(Input)", new KnownInfo().setNumSourceOfAttrs(1));
  }

  @Test
  void test7() {
    doTest(
        "Proj(InnerJoin(Input,Proj(Filter(Input))))",
        "Proj(Filter(InnerJoin(Input,Input)))",
        new KnownInfo()
            .setJoinKeyAttrsIndex(2, 3)
            .setNumSourceOfAttrs(1, 1, 1, 1, 2)
            .setNumTableSourceOfAttrs(1, 1, 1, 0, 1));
  }
}
