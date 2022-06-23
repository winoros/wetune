package wtune.superopt.runner;

public interface Runner {
  void prepare(String[] argStrings) throws Exception;

  void run() throws Exception;

  default void stop() throws Exception {}
}
