package wtune.testbed.util;

import gnu.trove.list.TDoubleList;
import gnu.trove.list.array.TDoubleArrayList;

import java.util.Arrays;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.TreeMap;

import static java.lang.Math.abs;
import static wtune.testbed.util.MathHelper.hash;
import static wtune.testbed.util.MathHelper.pow10Factor;

public abstract class RandomHelper {
  public static int GLOBAL_SEED = 0x98761234;

  private static final long MULTIPLIER = 0x5DEECE66DL;
  private static final long ADDEND = 0xBL;
  private static final long MASK = (1L << 48) - 1;
  private static final double DOUBLE_UNIT = 0x1.0p-53; // 1.0 / (1L << 53)

  private static int uniform(int seed, int bits) {
    return (int) (((seed * MULTIPLIER + ADDEND) & MASK) >>> (48 - bits));
  }

  public static int uniformRandomInt(int seed) {
    return uniform(hash(seed), 31);
  }

  public static double uniformRandomDouble(int seed) {
    seed = hash(seed);
    return (((long) (uniform(seed, 26)) << 27) + uniform(seed, 27)) * DOUBLE_UNIT;
  }

  public static int randUniqueIntBin(int seed, int index, int bits) {
    // here `seed` needn't to be hash
    if (index < 0 || index > (1 << bits) - 1)
      throw new IllegalArgumentException("impossible to generate unique random integer");

    final int half1 = bits / 2;
    final int half2 = (bits + 1) / 2;
    final int mask1 = (1 << half1) - 1;
    final int mask2 = (1 << half2) - 1;

    for (int round = 0; round < 3; ++round) {
      final int mod = ((index >> half1) << 4) | round;
      index ^= (hash(seed + mod) & mask1);
      index = ((index & mask2) << half1) | ((index >> half2) & mask1);
    }

    return index;
  }

  public static int deRandUniqueIntBin(int seed, int i, int bits) {
    if (i < 0 || i > (1 << bits) - 1)
      throw new IllegalArgumentException("impossible to decode unique random integer");

    // bits = 7
    final int half1 = bits / 2; // 3
    final int half2 = (bits + 1) / 2; // 4
    final int mask1 = (1 << half1) - 1; // 0b0000111
    final int mask2 = (1 << half2) - 1; // 0b0001111

    for (int round = 2; round >= 0; round--) {
      i = ((i & mask1) << half2) | ((i >> half1) & mask2);
      final int mod = (((i & ~mask1) >> half1) << 4) | round;
      i ^= hash(seed + mod) & mask1;
    }

    return i;
  }

  public static int randUniqueIntDec(int seed, int index, int digits) {
    // here `seed` needn't be hash
    if (index < 0 || digits > 9 || index >= MathHelper.pow10(digits))
      throw new IllegalArgumentException("impossible to generate unique random integer");

    final int[] factors = pow10Factor(digits);
    final int firstFactor = factors[0], secondFactor = factors[1];

    for (int round = 0; round < 3; ++round) {
      final int left = index / secondFactor;
      final int right = index % secondFactor;
      final int mod = abs(hash(seed + right + round));

      index = firstFactor * right + ((left + mod) % firstFactor);
    }
    return index;
  }

  public static int deRandUniqueIntDec(int seed, int i, int digits) {

    final int[] factors = pow10Factor(digits);
    final int firstFactor = factors[0], secondFactor = factors[1];

    for (int round = 2; round >= 0; --round) {
      final int right = i / firstFactor;
      final int m = abs(hash(seed + right + round)) % firstFactor;
      final int n = i % firstFactor;
      final int left = n >= m ? (n - m) : (firstFactor - m + n);
      i = secondFactor * left + right;
    }

    return i;
  }

  public static RandGen makeUniformRand() {
    return UniformRand.INSTANCE;
  }

  public static RandGen makeZipfRand(double skew) {
    return new ZipfRand(skew);
  }

  private static class UniformRand implements RandGen {
    private static final RandGen INSTANCE = new UniformRand();

    @Override
    public int random(int index) {
      if (index < 0) throw new IllegalArgumentException();
      return randUniqueIntBin(GLOBAL_SEED, index, 31);
    }

    @Override
    public int reverse(int value) {
      return deRandUniqueIntBin(GLOBAL_SEED, value, 31);
    }

    @Override
    public boolean isPrePopulated() {
      return true;
    }

    @Override
    public int range() {
      return Integer.MAX_VALUE;
    }
  }

  private static class ZipfRand implements RandGen {
    private static final double EPSILON = 1E-3;
    private final NavigableMap<Double, Integer> histogram;
    private final int[] cache;

    private ZipfRand(double skew) {
      this.histogram = makeHistogram(skew);
      this.cache = new int[histogram.size()];
      Arrays.fill(cache, -1);
    }

    private static NavigableMap<Double, Integer> makeHistogram(double skew) {
      final NavigableMap<Double, Integer> map = new TreeMap<>();
      final TDoubleList bars = new TDoubleArrayList();
      bars.add(1.0);

      double sum = 1.0;
      for (int i = 2; ; i++) {
        final double e = 1 / Math.pow(i, skew);
        sum += e;
        if (e / sum < EPSILON) break;
        bars.add(e);
      }

      double acc = 0;
      int i = 0;
      for (int bound = bars.size(); i < bound; i++) {
        final double p = bars.get(i) / sum;
        acc += p;
        map.put(acc, i);
      }
      map.put(1.0, i);

      return map;
    }

    @Override
    public int random(int index) {
      final Integer value =
          histogram.ceilingEntry(uniformRandomDouble(GLOBAL_SEED + index)).getValue();
      assert value != null;

      if (cache[value] == -1) cache[value] = index;

      return value;
    }

    @Override
    public int reverse(int value) {
      if (value >= cache.length) throw new NoSuchElementException();

      final int index = cache[value];
      if (index >= 0) return index;

      throw new NoSuchElementException();
    }

    @Override
    public int range() {
      return histogram.size() - 1;
    }

    @Override
    public boolean isPrePopulated() {
      return cache[0] >= 0;
    }
  }
}
