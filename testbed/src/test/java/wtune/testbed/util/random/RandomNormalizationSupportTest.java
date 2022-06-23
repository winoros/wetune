package wtune.testbed.util.random;

import gnu.trove.set.TIntSet;
import gnu.trove.set.hash.TIntHashSet;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static wtune.testbed.util.RandomHelper.randUniqueIntBin;

public class RandomNormalizationSupportTest {
  @Test
  void testUniqueRandomInt() {
    final TIntSet known = new TIntHashSet(1024);
    boolean duplicated = false;
    for (int i = 0; i < 1024; i++) {
      final int x = randUniqueIntBin(7, i, 10);
      if (!known.add(x)) {
        duplicated = true;
        break;
      }
    }
    assertFalse(duplicated);
    assertThrows(IllegalArgumentException.class, () -> randUniqueIntBin(7, 1024, 10));
  }
}
