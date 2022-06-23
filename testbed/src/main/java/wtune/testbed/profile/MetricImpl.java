package wtune.testbed.profile;

import gnu.trove.list.TLongList;
import gnu.trove.list.array.TLongArrayList;

public class MetricImpl implements Metric {
  private final TLongList records;
  private boolean sorted;

  public MetricImpl(int expectedSize) {
    this.records = new TLongArrayList(expectedSize);
    this.sorted = false;
  }

  @Override
  public void addRecord(long latency) {
    records.add(latency);
    sorted = false;
  }

  @Override
  public long atPercentile(double percentile) {
    if (percentile < 0.0 || percentile > 1.0) throw new IllegalArgumentException();
    if (records.isEmpty()) return -1L;
    if (!sorted) records.sort();
    return records.get((int) (percentile * records.size()));
  }
}
