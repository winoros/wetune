package wtune.common.tree;

import wtune.common.field.Fields;

public interface LabeledTreeFields<Kind> extends Fields {
  Kind kind();

  int parent();
}
