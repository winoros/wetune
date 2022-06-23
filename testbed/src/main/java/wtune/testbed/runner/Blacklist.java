package wtune.testbed.runner;

import wtune.stmt.Statement;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import static wtune.testbed.runner.GenerateTableData.*;

class Blacklist {
  private final Map<String, Set<String>> blacklists;

  Blacklist() {
    this.blacklists = new HashMap<>();
    this.blacklists.put(BASE, new HashSet<>());
    this.blacklists.put(ZIPF, new HashSet<>());
    this.blacklists.put(LARGE, new HashSet<>());
    this.blacklists.put(LARGE_ZIPF, new HashSet<>());
  }

  boolean isBlocked(String tag, Statement stmt) {
    return blacklists.get(tag).contains(stmt.toString());
  }

  void block(String tag, String stmtStr) {
    blacklists.get(tag).add(stmtStr);
  }
}
