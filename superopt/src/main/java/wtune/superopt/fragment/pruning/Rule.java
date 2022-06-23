package wtune.superopt.fragment.pruning;

import wtune.superopt.fragment.Fragment;

public interface Rule {
  boolean match(Fragment g);
}
