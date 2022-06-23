package wtune.testbed.profile;

public interface Metric {
  void addRecord(long latency);

  long atPercentile(double percentile);

  static Metric mk(int nExpectedRecords) {
    return new MetricImpl(nExpectedRecords);
  }
}
