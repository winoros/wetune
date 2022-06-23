package wtune.testbed.runner;

import java.nio.file.Path;

public interface Runner {
  void prepare(String[] argStrings) throws Exception;

  void run() throws Exception;

  default void stop() throws Exception {}

  static Path dataDir() {
    return Path.of(System.getProperty("wetune.data_dir", "wtune_data"));
  }
}
