package wtune.testbed.profile;

import wtune.stmt.Statement;
import wtune.testbed.population.Generators;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Properties;
import java.util.function.Function;

class ProfileConfigImpl implements ProfileConfig {
  private int warmupCycles, profileCycles;
  private int randomSeed;
  private boolean dryRun;
  private boolean useSqlServer;
  private boolean calciteConn;
  private Generators generators;
  private ExecutorFactory factory;
  private Function<Statement, String> paramSaveFile;

  ProfileConfigImpl(Generators generators) {
    this.warmupCycles = 100;
    this.profileCycles = 100;
    this.randomSeed = 0x98761234;
    this.generators = generators;
    this.factory = (ignored0, ignored1, ignored2) -> new NoOpExecutor();
  }

  @Override
  public int warmupCycles() {
    return warmupCycles;
  }

  @Override
  public int profileCycles() {
    return profileCycles;
  }

  @Override
  public int randomSeed() {
    return randomSeed;
  }

  @Override
  public boolean dryRun() {
    return dryRun;
  }

  @Override
  public boolean useSqlServer() {
    return useSqlServer;
  }

  @Override
  public boolean calciteConn() {
    return calciteConn;
  }

  @Override
  public Generators generators() {
    return generators;
  }

  @Override
  public ExecutorFactory executorFactory() {
    return factory;
  }

  @Override
  public ObjectInputStream saveParamIn(Statement stmt) {
    if (paramSaveFile == null) return null;

    final String fileName = paramSaveFile.apply(stmt);
    try {
      final Path path = Paths.get(fileName);

      if (Files.exists(path)) return new ObjectInputStream(Files.newInputStream(path));
      else return null;

    } catch (IOException ex) {
      return null;
    }
  }

  @Override
  public ObjectOutputStream savedParamOut(Statement stmt) {
    if (paramSaveFile == null) return null;
    final String fileName = paramSaveFile.apply(stmt);
    try {
      final Path path = Paths.get(fileName);
      Files.createDirectories(path.getParent());
      return new ObjectOutputStream(Files.newOutputStream(path));
    } catch (IOException ex) {
      return null;
    }
  }

  @Override
  public void setWarmupCycles(int x) {
    this.warmupCycles = x;
  }

  @Override
  public void setProfileCycles(int x) {
    this.profileCycles = x;
  }

  @Override
  public void setRandomSeed(int x) {
    this.randomSeed = x;
  }

  @Override
  public void setDryRun(boolean dryRun) {
    this.dryRun = dryRun;
  }

  @Override
  public void setUseSqlServer(boolean useSqlServer) {
    this.useSqlServer = useSqlServer;
  }

  @Override
  public void setCalciteConn(boolean calciteConn) {
    this.calciteConn = calciteConn;
  }

  @Override
  public void setGenerators(Generators generators) {
    this.generators = generators;
  }

  @Override
  public void setDbProperties(Properties properties) {
    if (properties == null) this.factory = (ignored0, ignored1, ignored2) -> new NoOpExecutor();
    else this.factory = new ExecutorFactoryImpl(properties);
  }

  @Override
  public void setParamSaveFile(Function<Statement, String> mapFunc) {
    this.paramSaveFile = mapFunc;
  }
}
