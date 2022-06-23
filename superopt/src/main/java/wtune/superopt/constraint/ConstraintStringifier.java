package wtune.superopt.constraint;

import wtune.common.utils.Commons;
import wtune.common.utils.ListSupport;
import wtune.superopt.fragment.Symbol;
import wtune.superopt.fragment.SymbolNaming;

import java.util.ArrayList;
import java.util.List;

import static java.util.Arrays.asList;

class ConstraintStringifier {
  private final SymbolNaming naming;
  private final boolean canonical;
  private final StringBuilder builder;

  ConstraintStringifier(SymbolNaming naming, boolean canonical, StringBuilder builder) {
    this.naming = naming;
    this.canonical = canonical;
    this.builder = builder;
  }

  StringBuilder stringify(Constraint c) {
    builder.append(c.kind().name()).append('(');
    if (!canonical) {
      Commons.joining(",", asList(c.symbols()), builder, naming::nameOf);
    } else {
      final List<String> symNames = ListSupport.map(asList(c.symbols()), naming::nameOf);
      if (c.kind().isEq()) symNames.sort(Commons::compareStringLengthFirst);
      Commons.joining(",", symNames, builder);
    }
    builder.append(')');
    return builder;
  }

  StringBuilder stringify(Constraints C) {
    if (!canonical) {
      for (Constraint c : C) {
        stringify(c);
        builder.append(';');
      }
    } else {
      final List<String> strings = new ArrayList<>(C.size());
      for (Constraint c : C) strings.add(c.canonicalStringify(naming));
      strings.sort(String::compareTo);
      for (String string : strings) builder.append(string).append(';');
    }

    appendInstantiation(C, Symbol.Kind.TABLE);
    appendInstantiation(C, Symbol.Kind.ATTRS);
    appendInstantiation(C, Symbol.Kind.PRED);
    appendInstantiation(C, Symbol.Kind.SCHEMA);
    appendInstantiation(C, Symbol.Kind.FUNC);
    removeTrailing();
    return builder;
  }

  private void appendInstantiation(Constraints C, Symbol.Kind kind) {
    final String name = Constraint.Kind.eqOfSymbol(kind).name();
    for (Symbol sym : C.targetSymbols().symbolsOf(kind)) {
      builder.append(name).append('(');
      builder.append(naming.nameOf(sym)).append(',');
      builder.append(naming.nameOf(C.instantiationOf(sym))).append(')');
      builder.append(';');
    }
  }

  private void removeTrailing() {
    final int lastIndex = builder.length() - 1;
    if (builder.charAt(lastIndex) == ';') builder.deleteCharAt(lastIndex);
  }
}
