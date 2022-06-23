package wtune.testbed.util;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;

public interface MathHelper {
  int[] POW_10 = {
    1, 10, 100, 1_000, 10_000, 100_000, 1_000_000, 10_000_000, 100_000_000, 1_000_000_000,
  };

  int[][] POW_10_FACTOR = {
    {1, 1},
    {2, 5},
    {10, 10},
    {25, 40},
    {100, 100},
    {250, 400},
    {1000, 1000},
    {2500, 4000},
    {10000, 10000},
    {25000, 40000}
  };

  static int pow2(int exp) {
    if (exp >= 31 || exp < 0) throw new IllegalArgumentException();
    return 1 << exp;
  }

  static int pow10(int exp) {
    if (exp >= 10) throw new IllegalArgumentException();
    return POW_10[exp];
  }

  static int[] pow10Factor(int power) {
    if (power >= 10) throw new IllegalArgumentException();
    return POW_10_FACTOR[power];
  }

  static int base10(int power) {
    return Arrays.binarySearch(POW_10, power);
  }

  static int ceilingBase10(int i) {
    final int base = base10(i);
    if (base < 0) return -(base + 1);
    else return base;
  }

  static boolean isPow2(int i) {
    return ((i - 1) & i) == 0;
  }

  static boolean isPow10(int i) {
    return base10(i) >= 0;
  }

  static int ceilingPow2(int v) {
    v--;
    v |= v >> 1;
    v |= v >> 2;
    v |= v >> 4;
    v |= v >> 8;
    v |= v >> 16;
    v++;
    return v;
  }

  static int hash(int x) {
    // https://stackoverflow.com/a/12996028
    x = ((x >>> 16) ^ x) * 0x45d9f3b;
    x = ((x >>> 16) ^ x) * 0x45d9f3b;
    x = (x >>> 16) ^ x;
    return x;
  }

  static int unHash(int x) {
    // https://stackoverflow.com/a/12996028
    x = ((x >>> 16) ^ x) * 0x119de1f3;
    x = ((x >>> 16) ^ x) * 0x119de1f3;
    x = (x >>> 16) ^ x;
    return x;
  }

  static boolean isIntegral(Number n) {
    return n instanceof Long
        || n instanceof Integer
        || n instanceof Short
        || n instanceof Byte
        || n instanceof BigInteger;
  }

  static boolean isFraction(Number n) {
    return n instanceof Double || n instanceof Float || n instanceof BigDecimal;
  }

  static Number inverse(Number n) {
    if (isFraction(n)) return -n.doubleValue();
    if (isIntegral(n)) return -n.intValue();
    return null;
  }

  static Number add(Number n0, Number n1) {
    if (isFraction(n0) || isFraction(n1)) return n0.doubleValue() + n1.doubleValue();
    if (isIntegral(n0) && isIntegral(n1)) return n0.intValue() + n1.intValue();
    return null;
  }

  static Number sub(Number n0, Number n1) {
    if (isFraction(n0) || isFraction(n1)) return n0.doubleValue() - n1.doubleValue();
    if (isIntegral(n0) && isIntegral(n1)) return n0.intValue() - n1.intValue();
    return null;
  }

  static Number mul(Number n0, Number n1) {
    if (isFraction(n0) || isFraction(n1)) return n0.doubleValue() * n1.doubleValue();
    if (isIntegral(n0) && isIntegral(n1)) return n0.intValue() * n1.intValue();
    return null;
  }

  static Number div(Number n0, Number n1) {
    if (isFraction(n0) || isFraction(n1)) return n0.doubleValue() / n1.doubleValue();
    if (isIntegral(n0) && isIntegral(n1)) return n0.intValue() / n1.intValue();
    return null;
  }
}
