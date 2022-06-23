package wtune.superopt.runner;

import wtune.common.utils.Args;
import wtune.common.utils.IOSupport;
import wtune.superopt.substitution.Substitution;
import wtune.superopt.substitution.SubstitutionBank;
import wtune.superopt.substitution.SubstitutionSupport;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;

import static java.nio.file.StandardCopyOption.ATOMIC_MOVE;
import static java.nio.file.StandardCopyOption.REPLACE_EXISTING;
import static wtune.superopt.runner.RunnerSupport.dataDir;

public class ReduceRules implements Runner {
  private Path inFile;
  private Path outFile;
  private Path additionalFile;

  @Override
  public void prepare(String[] argStrings) throws IOException {
    final Args args = Args.parse(argStrings, 1);
    final Path dataDir = dataDir();
    final String inFileName = args.getOptional("R", "rules", String.class, "rules/rules.raw.txt");
    final String outFileName = args.getOptional("o", "output", String.class, "rules/rules.txt");
    final String addFileName = args.getOptional("a", String.class, "rules/rules.test.txt");

    inFile = dataDir.resolve(inFileName);
    outFile = dataDir.resolve(outFileName);
    additionalFile = dataDir.resolve(addFileName);

    if (!Files.exists(inFile)) throw new IllegalArgumentException("no such file: " + inFile);
    if (!Files.exists(additionalFile)) additionalFile = null;
    if (Files.exists(outFile)) {
      final Path filename = outFile.getFileName();
      final Path bakFile = outFile.resolveSibling(filename + ".bak");
      Files.move(outFile, bakFile, REPLACE_EXISTING, ATOMIC_MOVE);
      if (outFile.equals(inFile)) inFile = bakFile;
    }
  }

  @Override
  public void run() throws Exception {
    final SubstitutionBank bank = SubstitutionSupport.loadBank(inFile);
    if (additionalFile != null) {
      final SubstitutionBank rules = SubstitutionSupport.loadBank(additionalFile);
      for (Substitution rule : rules.rules()) bank.add(rule);
    }

    SubstitutionBank reducedBank = bank;

    int pass = 1;
    while (true) {
      final int oldSize = reducedBank.size();
      reducedBank = SubstitutionSupport.reduceBank(reducedBank);
      final int minSize = reducedBank.size();

      System.out.printf("Pass %d: %d -> %d\n", pass++, oldSize, minSize);
      if (minSize == oldSize) break;
    }

    try (final PrintWriter out = IOSupport.newPrintWriter(outFile)) {
      for (Substitution rule : reducedBank.rules()) out.println(rule.canonicalStringify());
    }
  }
}
