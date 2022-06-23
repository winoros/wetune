package wtune.testbed.population;

import gnu.trove.map.TObjectIntMap;
import gnu.trove.map.hash.TObjectIntHashMap;
import wtune.testbed.common.BatchActuatorFactory;
import wtune.testbed.util.RandGen;
import wtune.testbed.util.RandomHelper;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.function.Function;
import java.util.function.Supplier;

import static wtune.testbed.util.MathHelper.isPow10;

public class SQLPopulationConfig implements PopulationConfig {
  private static final int DEFAULT_ROW_COUNT = 10000;
  private static final int DEFAULT_BATCH_SIZE = 500;
  private static final BatchActuatorFactory DEFAULT_ACTUATOR =
      ignored -> new EchoActuator(new PrintWriter(System.out));

  private int defaultRowCount = DEFAULT_ROW_COUNT;
  private final TObjectIntMap<String> rowCountMap = new TObjectIntHashMap<>();

  private Supplier<RandGen> defaultRandGen = RandomHelper::makeUniformRand;
  private final Map<String, RandGen> randGenMap = new HashMap<>();

  private BatchActuatorFactory actuatorFactory = DEFAULT_ACTUATOR;
  private Properties dbProperties;
  private Function<String, PrintWriter> dumpDestinations = ignored -> new PrintWriter(System.out);

  private int batchSize = DEFAULT_BATCH_SIZE;
  private Runnable progressCallback = null;
  private boolean needPrePopulation = false;

  private static void checkRowCount(int rowCount) {
    if (!isPow10(rowCount))
      throw new IllegalArgumentException("row count should be either power of 10");
  }

  @Override
  public int randomSeed() {
    return RandomHelper.GLOBAL_SEED;
  }

  @Override
  public void setRandomSeed(int i) {
    RandomHelper.GLOBAL_SEED = i;
  }

  @Override
  public int unitCountOf(String collectionName) {
    if (rowCountMap.containsKey(collectionName)) return rowCountMap.get(collectionName);
    else return defaultRowCount;
  }

  @Override
  public void setUnitCount(String collectionName, int rowCount) {
    checkRowCount(rowCount);
    rowCountMap.put(collectionName, rowCount);
  }

  @Override
  public void setDefaultUnitCount(int defaultRowCount) {
    checkRowCount(defaultRowCount);
    this.defaultRowCount = defaultRowCount;
  }

  @Override
  public RandGen randomGenOf(String collectionName, String elementName) {
    final RandGen customGen = randGenMap.get(collectionName + elementName);
    if (customGen == null) return defaultRandGen.get();
    else return customGen;
  }

  @Override
  public Runnable progressCallback() {
    return progressCallback;
  }

  @Override
  public void setRandGen(String collectionName, String elementName, RandGen randGen) {
    randGenMap.put(collectionName + elementName, randGen);
  }

  @Override
  public void setDefaultRandGen(Supplier<RandGen> defaultRandGen) {
    this.defaultRandGen = defaultRandGen;
  }

  @Override
  public BatchActuatorFactory actuatorFactory() {
    return actuatorFactory;
  }

  @Override
  public boolean needPrePopulation() {
    return needPrePopulation;
  }

  @Override
  public void setNeedPrePopulation(boolean needPrePopulation) {
    this.needPrePopulation = needPrePopulation;
  }

  @Override
  public void setProgressCallback(Runnable progressCallback) {
    this.progressCallback = progressCallback;
  }

  @Override
  public void setDbProperties(Properties dbProperties) {
    this.dbProperties = dbProperties;
    setDryRun(false);
  }

  @Override
  public void setDump(Function<String, PrintWriter> factory) {
    this.dumpDestinations = factory;
    setDryRun(true);
  }

  private void setDryRun(boolean flag) {
    if (flag)
      if (dumpDestinations == null) actuatorFactory = DEFAULT_ACTUATOR;
      else
        actuatorFactory = name -> new EchoActuator(new PrintWriter(dumpDestinations.apply(name)));
    else actuatorFactory = new BatchActuatorFactoryImpl(dbProperties, batchSize);
  }

  @Override
  public void setBatchSize(int batchSize) {
    this.batchSize = batchSize;
  }
}
