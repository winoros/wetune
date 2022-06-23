module wtune.spes {
  exports wtune.spes.AlgeNode;
  exports wtune.spes.AlgeNodeParser;
  exports wtune.spes.AlgeRule;
  exports wtune.spes.RexNodeHelper;
  exports wtune.spes.SymbolicRexNode;
  exports wtune.spes.Z3Helper;

  requires com.google.common;
  requires org.apache.commons.lang3;
  requires commons.math3;
  requires annotations;
  requires trove4j;
  requires z3;
  requires calcite.core;
}
