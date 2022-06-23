package wtune.superopt.runner;

import me.tongfei.progressbar.ProgressBar;
import org.apache.commons.lang3.tuple.Pair;
import wtune.common.utils.Args;
import wtune.common.utils.IOSupport;
import wtune.superopt.constraint.ConstraintSupport;
import wtune.superopt.constraint.EnumerationMetrics;
import wtune.superopt.fragment.Fragment;
import wtune.superopt.fragment.FragmentSupport;
import wtune.superopt.fragment.FragmentSupportSPES;
import wtune.superopt.fragment.SymbolNaming;
import wtune.superopt.substitution.Substitution;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

import static java.lang.Integer.parseInt;
import static wtune.common.utils.ListSupport.map;
import static wtune.superopt.constraint.ConstraintSupport.enumConstraints;
import static wtune.superopt.constraint.ConstraintSupport.enumConstraintsSPES;
import static wtune.superopt.fragment.FragmentSupport.enumFragments;
import static wtune.superopt.fragment.FragmentSupportSPES.enumFragmentsSPES;

public class EnumRule implements Runner {
  private final Lock outLock = new ReentrantLock();
  private final Lock errLock = new ReentrantLock();

  private Path success, failure, err, checkpoint;
  private Path prevFailure, prevCheckpoint;
  private boolean useSpes;
  private int verbosity;
  private long timeout;
  private int parallelism;
  private int iBegin, jBegin;
  private int numWorker, workerIndex;
  private ExecutorService threadPool;
  private Pair<Fragment, Fragment> target;
  private ProgressBar progressBar;
  private CountDownLatch latch;
  private int iEnd, jEnd;

  private final AtomicInteger numSkipped = new AtomicInteger(0);

  @Override
  public void prepare(String[] argStrings) throws Exception {
    final Args args = Args.parse(argStrings, 1);
    final String target = args.getOptional("target", String.class, null);
    if (target != null) {
      try {
        final String[] targetFields = target.split("\\|");
        final Fragment source = Fragment.parse(targetFields[0], null);
        final Fragment destination = Fragment.parse(targetFields[1], null);
        this.target = Pair.of(source, destination);
        return;

      } catch (Throwable ex) {
        throw new IllegalArgumentException("invalid target: " + target, ex);
      }
    }

    final String partition = args.getOptional("partition", String.class, "1/0");
    final String[] partitionFields = partition.split("/");
    verbosity = args.getOptional("v", "verbose", int.class, 0);
    timeout = args.getOptional("timeout", long.class, 240000L);
    parallelism = args.getOptional("parallelism", int.class, 1);
    useSpes = args.getOptional("useSpes", boolean.class, false);

    if (timeout <= 0) throw new IllegalArgumentException("invalid timeout: " + timeout);
    if (parallelism <= 0) throw new IllegalArgumentException("invalid parallelism: " + parallelism);
    if (partitionFields.length != 2)
      throw new IllegalArgumentException("invalid partition: " + partition);
    try {
      numWorker = Integer.parseInt(partitionFields[0]);
      workerIndex = Integer.parseInt(partitionFields[1]);
    } catch (NumberFormatException ex) {
      throw new IllegalArgumentException("invalid partition: " + partition);
    }

    final Path dataDir = RunnerSupport.dataDir();
    final String subDirName = LocalDateTime.now().format(DateTimeFormatter.ofPattern("MMddHHmmss"));
    final String dirName = args.getOptional("D", "dir", String.class, "enumeration");
    final Path dir = dataDir.resolve(dirName).resolve("run" + subDirName + "_" + workerIndex);

    if (!Files.exists(dir)) Files.createDirectories(dir);

    success = dir.resolve("success.txt");
    failure = dir.resolve("failure.txt");
    err = dir.resolve("err.txt");
    checkpoint = dir.resolve("checkpoint.txt");

    final String prevCheckpointFile = args.getOptional("checkpoint", String.class, null);
    prevCheckpoint = prevCheckpointFile == null ? null : dataDir.resolve(prevCheckpointFile);

    final String prevFailureFile = args.getOptional("failure", String.class, null);
    prevFailure = prevFailureFile == null ? null : dataDir.resolve(prevFailureFile);

    final String from = args.getOptional("from", String.class, "0,0");
    final String[] split = from.split(",");
    iBegin = parseInt(split[0]);
    jBegin = parseInt(split[1]);
  }

  @Override
  public void run() throws Exception {
    if (target != null) fromTarget();
    else if (prevFailure != null) fromFailures();
    else fromEnumeration();
  }

  @Override
  public void stop() {
    final EnumerationMetrics metric = ConstraintSupport.getEnumerationMetric();
    final Integer enumPairs = metric.numEnumeratorInvocations.value();
    final Integer enumSets = metric.numEnumeratedConstraintSets.value();
    final Integer numProver = metric.numProverInvocations.value();
    System.out.println();
    System.out.println("===== Statistics =====");
    System.out.println("# of enumerated pairs: " + enumPairs);
    System.out.println("# of skipped pairs: " + numSkipped.get());
    System.out.println("# of enumerated constraint sets" + enumSets);
    System.out.println("  average: " + enumSets / enumPairs + " sets per pair");
    System.out.println("# of verifier invocation: " + numProver);
    System.out.print("# of EQ from verifier: " + metric.numEq.value());
    System.out.println(", " + metric.elapsedEq.value() + "ms");
    System.out.print("# of NEQ from verifier: " + metric.numNeq.value());
    System.out.println(", " + metric.elapsedNeq.value() + "ms");
    System.out.print("# of UNKNOWN from verifier: " + metric.numUnknown.value());
    System.out.println(", " + metric.elapsedUnknown.value() + "ms");
    System.out.println("# of EQ from cache: " + metric.numCacheHitEq.value());
    System.out.println("# of NEQ from cache: " + metric.numCacheHitNeq.value());
    System.out.println();
  }

  private void fromEnumeration() throws IOException, InterruptedException {
    final List<Fragment> templates = useSpes ? enumFragmentsSPES() : enumFragments();
    final int numTemplates = templates.size();
    setLastOwnedPair(numTemplates);

    int[] completed = null;
    if (prevCheckpoint != null) {
      final List<String> lines = Files.readAllLines(prevCheckpoint);
      if (verbosity >= 3) System.out.println("Continue from checkpoint: " + prevCheckpoint);

      completed = new int[lines.size()];
      int i = 0;
      for (String line : lines) {
        final String[] fields = line.split(",");
        final int x = Integer.parseInt(fields[0]);
        final int y = Integer.parseInt(fields[1]);
        completed[i++] = ordinal(numTemplates, x, y);
      }
      Arrays.sort(completed);
      Files.copy(prevCheckpoint, checkpoint);
    }

    final int totalPairs = (numTemplates * (numTemplates + 1)) >> 1;
    final int myPairs = totalPairs / numWorker + (totalPairs % numWorker > workerIndex ? 1 : 0);

    latch = new CountDownLatch(myPairs);
    threadPool = Executors.newFixedThreadPool(parallelism);

    try (final ProgressBar pb = new ProgressBar("Candidates", myPairs)) {
      progressBar = pb;

      for (int i = 0; i < numTemplates; ++i) {
        for (int j = i; j < numTemplates; ++j) {
          final int ordinal = ordinal(numTemplates, i, j);
          if (isCompleted(completed, ordinal)) continue;
          if (!isOwned(ordinal)) continue;
          if (i < iBegin || (i == iBegin && j < jBegin)) continue;

          final Fragment f0 = templates.get(i), f1 = templates.get(j);

          if (verbosity >= 4) {
            System.out.printf("%d,%d\n", i, j);
            System.out.println(f0);
            System.out.println(f1);
          }

          final int x = i, y = j;
          threadPool.submit(() -> enumerate(f0, f1, x, y));
        }
      }

      latch.await();
      threadPool.shutdown();
    }
  }

  private void fromFailures() throws IOException, InterruptedException {
    final List<String> failures = Files.readAllLines(prevFailure);

    latch = new CountDownLatch(failures.size());
    threadPool = Executors.newFixedThreadPool(parallelism);

    try (final ProgressBar pb = new ProgressBar("Candidates", failures.size())) {
      progressBar = pb;

      for (String failure : failures) {
        final String[] fields = failure.split("\\|");
        final Fragment f0 = Fragment.parse(fields[0], null);
        final Fragment f1 = Fragment.parse(fields[1], null);
        threadPool.submit(() -> enumerate(f0, f1, -1, -1));
      }

      latch.await();
      threadPool.shutdown();
    }
  }

  private void fromTarget() {
    try {
      final SymbolNaming naming = SymbolNaming.mk();
      final Fragment source = target.getLeft();
      final Fragment destination = target.getRight();
      naming.name(source.symbols());
      naming.name(destination.symbols());
      System.out.println(source.stringify(naming));
      System.out.println(destination.stringify(naming));

      final List<Substitution> rules =
          enumConstraints(target.getLeft(), target.getRight(), timeout);

      if (rules == null) {
        System.out.println("==> Skipped.");
        return;
      }

      System.out.printf("==> %d Rules:\n", rules.size());
      for (Substitution rule : rules) System.out.println(rule);
      System.out.println("Metrics: ");
      System.out.println(ConstraintSupport.getEnumerationMetric());

    } catch (Throwable ex) {
      System.out.println("==> Exception!");
      ex.printStackTrace(System.out);
    }
  }

  private int ordinal(int total, int i, int j) {
    assert i <= j;
    return ((total * 2) - i + 1) * i / 2 + j - i;
  }

  private boolean isCompleted(int[] completed, int ordinal) {
    return completed != null && Arrays.binarySearch(completed, ordinal) >= 0;
  }

  private boolean isOwned(int ordinal) {
    return ordinal % numWorker == workerIndex;
  }

  private void setLastOwnedPair(int total) {
    for (int i = total - 1; i >= 0; --i) {
      for (int j = total - 1; j >= i; --j) {
        if (isOwned(ordinal(total, i, j))) {
          iEnd = i; jEnd = j;
          return;
        }
      }
    }
    assert false;
  }

  private boolean isLastPair(int i, int j) {
    return i == iEnd && j == jEnd;
  }

  private void enumerate(Fragment f0_, Fragment f1_, int i, int j) {
    enumerate0(f0_, f1_, i, j);
    if (progressBar != null) progressBar.step();
    if (latch != null) latch.countDown();
  }

  private void enumerate0(Fragment f0_, Fragment f1_, int i, int j) {
    boolean outLocked = false, errLocked = false;
    final Fragment f0 = f0_;
    final Fragment f1;
    if (f0_ != f1_) f1 = f1_;
    else {
      f1 = f1_.copy();
      FragmentSupport.setupFragment(f1);
    }

    try {
      final List<Substitution> rules =
          !useSpes ? enumConstraints(f0, f1, timeout) : enumConstraintsSPES(f0, f1, timeout);
      if (rules == null) {
        numSkipped.incrementAndGet();
        return;
      }

      final List<String> serializedRules = map(rules, Substitution::toString);

      outLock.lock();
      outLocked = true;

      if (verbosity >= 4) {
        System.out.println("Current Metrics ==>");
        System.out.println(ConstraintSupport.getEnumerationMetric());
        System.out.println("<==");
      }

      IOSupport.appendTo(success, out -> serializedRules.forEach(out::println));
      if (i >= 0 && j >= 0) IOSupport.appendTo(checkpoint, out -> out.printf("%d,%d\n", i, j));

    } catch (Throwable ex) {
      errLock.lock();
      errLocked = true;

      IOSupport.appendTo(
          err,
          err -> {
            err.print(f0);
            err.print('|');
            err.println(f1);
            ex.printStackTrace(err);
            err.println("====");
          });

      IOSupport.appendTo(
          failure,
          err -> {
            err.print(f0);
            err.print('|');
            err.println(f1);
          });

    } finally {
      if (i >= 0 && j >= 0 && isLastPair(i, j))
        IOSupport.appendTo(checkpoint, out -> out.printf("finished\n"));
      if (outLocked) outLock.unlock();
      if (errLocked) errLock.unlock();
    }
  }
}
