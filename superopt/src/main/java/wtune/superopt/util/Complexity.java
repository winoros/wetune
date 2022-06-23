package wtune.superopt.util;

import wtune.sql.plan.PlanContext;
import wtune.superopt.fragment.Fragment;

import static wtune.superopt.fragment.OpKind.*;

public interface Complexity extends Comparable<Complexity> {
  int[] opCounts();

  static Complexity mk(Fragment fragment) {
    return new FragmentComplexity(fragment);
  }

  static Complexity mk(PlanContext plan, int nodeId) {
    return new PlanComplexity(plan, nodeId);
  }

  @Override
  default int compareTo(Complexity o) {
    return compareTo(o, true);
  }

  default int compareTo(Complexity other, boolean preferInnerJoin) {
    final int[] opCount0 = opCounts();
    final int[] opCount1 = other.opCounts();

    final int numInput0 = opCount0[INPUT.ordinal()];
    final int numInput1 = opCount1[INPUT.ordinal()];
    if (numInput0 < numInput1) return -1;
    if (numInput0 > numInput1) return 1;

    int result = 0;

    for (int i = 0, bound = opCount0.length; i < bound; i++) {
      // LeftJoin & InnerJoin are specially handled. See below.
      if (i == LEFT_JOIN.ordinal() || i == INNER_JOIN.ordinal()) continue;

      if (result < 0 && opCount0[i] > opCount1[i]) return 0;
      if (result > 0 && opCount0[i] < opCount1[i]) return 0;
      if (opCount0[i] > opCount1[i]) result = 1;
      else if (opCount0[i] < opCount1[i]) result = -1;
    }

    if (result != 0) return result;

    final int numInnerJoin0 = opCount0[INNER_JOIN.ordinal()];
    final int numLeftJoin0 = opCount0[LEFT_JOIN.ordinal()];
    final int numInnerJoin1 = opCount1[INNER_JOIN.ordinal()];
    final int numLeftJoin1 = opCount1[LEFT_JOIN.ordinal()];
    final int numJoin0 = numInnerJoin0 + numLeftJoin0;
    final int numJoin1 = numInnerJoin1 + numLeftJoin1;

    if (numJoin0 < numJoin1) return -1;
    if (numJoin0 > numJoin1) return 1;

    return preferInnerJoin ? Integer.signum(numLeftJoin0 - numLeftJoin1) : 0;
  }
}
