package wtune.superopt.runner;

import gnu.trove.set.TIntSet;
import wtune.common.utils.Args;
import wtune.sql.plan.PlanContext;
import wtune.superopt.substitution.Substitution;
import wtune.superopt.substitution.SubstitutionSupport;

import java.nio.file.Files;
import java.nio.file.Path;

import static wtune.common.utils.IOSupport.checkFileExists;
import static wtune.sql.plan.PlanSupport.translateAsAst;
import static wtune.superopt.runner.RunnerSupport.parseIndices;

public class InspectRules implements Runner {
  private Path file;
  private TIntSet indices;

  @Override
  public void prepare(String[] argStrings) {
    final Args args = Args.parse(argStrings, 1);
    final String indexRange = args.getOptional("indices", String.class, null);
    final String fileName = args.getOptional("f", "file", String.class, "rules/rules.txt");

    file = RunnerSupport.dataDir().resolve(fileName);
    checkFileExists(file);

    if (indexRange != null) indices = parseIndices(indexRange);
  }

  @Override
  public void run() throws Exception {
    int index = 0;
    for (String line : Files.readAllLines(file)) {
      ++index;
      if (indices == null || indices.contains(index)) {
        final Substitution rule = Substitution.parse(line);
        final var plans = SubstitutionSupport.translateAsPlan(rule);
        final PlanContext source = plans.getLeft(), target = plans.getRight();
        System.out.printf("[%d] %s\n", index, rule);
        System.out.println("q0: " + translateAsAst(source, source.root(), true));
        System.out.println("q1: " + translateAsAst(target, target.root(), true));
      }
    }
  }
}
