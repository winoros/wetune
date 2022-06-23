package wtune.superopt.runner;

import wtune.common.utils.Args;
import wtune.superopt.fragment.Fragment;
import wtune.superopt.fragment.FragmentSupport;

import static wtune.superopt.fragment.FragmentSupport.enumFragments;

public class RunTemplateExample implements Runner {
  private int numOps;
  private boolean noPrune;

  @Override
  public void prepare(String[] argStrings) throws Exception {
    final Args args = Args.parse(argStrings, 1);
    numOps = args.getOptional("n", "ops", int.class, 4);
    noPrune = args.getOptional("P", "no-prune", boolean.class, false);
  }

  @Override
  public void run() throws Exception {
    int count = 0;
    for (Fragment template : FragmentSupport.enumFragments(numOps, noPrune ? 0 : 1)) {
      System.out.println(template);
      ++count;
    }
    System.out.println("Total template at max size " + numOps + ": " + count);
  }
}
