package wtune.testbed.profile;

import gnu.trove.list.TIntList;
import gnu.trove.list.array.TIntArrayList;
import wtune.sql.support.resolution.ParamDesc;
import wtune.sql.support.resolution.Params;
import wtune.stmt.Statement;
import wtune.testbed.util.RandomHelper;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.System.Logger.Level;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static java.lang.Math.abs;
import static wtune.sql.support.resolution.Params.PARAMS;

class ProfilerImpl implements Profiler {
  private static final int DEFAULT_PROBING_TIMES = 5;

  private final Statement statement;
  private final ProfileConfig config;
  private final ParamsGen paramsGen;
  private final Executor executor;
  private final Metric metric;

  private boolean probing;
  private boolean recording;
  private long maxProbingElapsed;
  private int probingTimes;

  private int warmupCycles;
  private int profileCycles;

  private TIntList seeds;
  private List<Map<ParamDesc, Object>> params;

  ProfilerImpl(Statement stmt, ProfileConfig config) {
    this.statement = stmt;
    this.config = config;

    final Params params = stmt.ast().context().getAdditionalInfo(PARAMS);
    this.paramsGen = ParamsGen.mk(params, config.generators());
    this.executor =
        config.dryRun()
            ? null
            : config.executorFactory().mk(
                    stmt.ast().toString(), config.useSqlServer(), config.calciteConn());
    this.metric = Metric.mk(config.profileCycles());
    this.warmupCycles = config.warmupCycles();
    this.profileCycles = config.profileCycles();

    this.maxProbingElapsed = 0;
    this.probingTimes = 0;
  }

  @Override
  public Statement statement() {
    return statement;
  }

  @Override
  public TIntList seeds() {
    return seeds;
  }

  @Override
  public Metric metric() {
    return metric;
  }

  @Override
  public ParamsGen paramsGen() {
    return paramsGen;
  }

  @Override
  public void setSeeds(TIntList seeds) {
    this.seeds = seeds;
  }

  @Override
  public boolean prepare() {
    final int paramsCount = config.profileCycles();
    final List<Map<ParamDesc, Object>> params = new ArrayList<>(paramsCount);

    TIntList seeds = this.seeds;
    if (seeds == null) {
      seeds = new TIntArrayList(paramsCount);

      int seed = Math.abs(RandomHelper.uniformRandomInt(config.randomSeed()));
      for (int i = 0; i < paramsCount; ++i) {
        seed = ParamsGen.setEligibleSeed(paramsGen, seed);
        if (seed >= 0)
          if (paramsGen.generateAll()) { // pivot seed has been set
            seeds.add(seed);
            params.add(paramsGen.values());
          } else {
            LOG.log(Level.ERROR, "cannot generate value at seed {0}", seed);
            return false;
          }
        else break;
      }

      if (seeds.isEmpty()) {
        LOG.log(Level.ERROR, "cannot find any eligible seed");
        return false;
      }
    } else {
      for (int i = 0; i < seeds.size(); ++i)
        if (paramsGen.setPivotSeed(seeds.get(i)))
          if (paramsGen.generateAll()) params.add(paramsGen.values());
          else {
            LOG.log(Level.ERROR, "cannot set seed {0}", seeds.get(i));
            return false;
          }
        else {
          LOG.log(Level.ERROR, "cannot generate value at seed {0}", seeds.get(i));
          return false;
        }
    }

    this.seeds = seeds;
    this.params = params;
    return true;
  }

  @Override
  public boolean run() {
    if (config.dryRun()) return true;

    // probe run
    recording = false;
    probing = true;
    for (int i = 0; i < DEFAULT_PROBING_TIMES; ++i) {
      if (!run0(i)) return false;
      probingTimes ++;
      if (maxProbingElapsed > 1_000_000_000L) break;
    }

    adjustNumCycles(); // for those long-running ones (e.g. > 5s), needn't to repeatedly run

    recording = false;
    probing = false;
    System.out.printf(" warmup %d cycles: ", warmupCycles);
    for (int i = 0, bound = warmupCycles; i < bound; ++i) {
      if (i % 5 == 0) System.out.print(" " + i);
      if (!run0(i)) {
        return false;
      }
    }

    recording = true;
    System.out.printf(" profile %d cycles: ", profileCycles);
    for (int i = 0, bound = profileCycles; i < bound; ++i) {
      if (i % 5 == 0) System.out.print(" " + i);
      if (!run0(i)) {
        return false;
      }
    }
    System.out.println();

    return true;
  }

  @Override
  public boolean runOnce() {
    if (config.dryRun()) return true;
    return run0(0);
  }

  @Override
  public void close() {
    if (executor != null) executor.close();
  }

  @Override
  public void saveParams(ObjectOutputStream stream) throws IOException {
    if (stream == null) return;
    stream.writeInt(config.randomSeed());
    stream.writeInt(config.generators().config().randomSeed());
    stream.writeObject(params);
  }

  @Override
  public boolean readParams(ObjectInputStream stream) throws IOException, ClassNotFoundException {
    if (stream == null) return false;
    final int profileSeed = stream.readInt();
    final int populationSeed = stream.readInt();
    if (populationSeed != config.generators().config().randomSeed()
        || profileSeed != config.randomSeed()) return false;

    this.params = (List<Map<ParamDesc, Object>>) stream.readObject();
    return true;
  }

  private boolean run0(int cycle) {
    final Map<ParamDesc, Object> params = this.params.get(cycle % this.params.size());
    if (!executor.installParams(params)) return false;

    final long elapsed = executor.execute();
    if (elapsed < 0) return false;
    executor.endOne();

    if (probing) maxProbingElapsed = Math.max(maxProbingElapsed, elapsed);

    if (recording) metric.addRecord(elapsed);

    return true;
  }

  private void adjustNumCycles() {
    if (maxProbingElapsed >= 5_000_000_000L) { // 10 seconds
      warmupCycles = 0;
      profileCycles = 0;
      metric.addRecord(maxProbingElapsed);
      return;
    }

    final int cycleBudget = (int) (10_000_000_000L / maxProbingElapsed);
    if (cycleBudget <= profileCycles) {
      warmupCycles = 0;
      profileCycles = cycleBudget;
    } else {
      warmupCycles = Math.min(warmupCycles, cycleBudget - profileCycles);
    }
    if (warmupCycles > 0) warmupCycles = Math.max(0, warmupCycles - probingTimes);
    if (profileCycles > 0) profileCycles = Math.max(0, profileCycles - probingTimes);
  }
}
