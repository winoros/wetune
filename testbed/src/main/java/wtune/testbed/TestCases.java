package wtune.testbed;

public class TestCases {
  public static class TestCase {
    String app;
    int id;

    public TestCase(String app, int id) {
      this.app = app;
      this.id = id;
    }
  }

  static TestCase[] list =
      new TestCase[] {
        new TestCase("discourse", 3836),
        new TestCase("redmine", 992),
        new TestCase("spree", 712),
        new TestCase("solidus", 743),
        new TestCase("solidus", 469),
        new TestCase("spree", 389),
        new TestCase("redmine", 344),
        new TestCase("eladmin", 103),
        new TestCase("discourse", 3842),
        new TestCase("spree", 379),
        new TestCase("discourse", 5178),
        new TestCase("discourse", 3833),
        new TestCase("discourse", 3825),
        new TestCase("spree", 396),
        new TestCase("eladmin", 105),
        new TestCase("discourse", 1957),
        new TestCase("discourse", 3831),
        new TestCase("spree", 1162),
        new TestCase("discourse", 3840),
        new TestCase("redmine", 1545),
        new TestCase("lobsters", 129),
        new TestCase("discourse", 3829),
        new TestCase("solidus", 126),
        new TestCase("eladmin", 104),
        new TestCase("discourse", 3838),
        new TestCase("redmine", 835),
      };
}
