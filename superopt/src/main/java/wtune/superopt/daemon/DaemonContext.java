package wtune.superopt.daemon;

import wtune.sql.ast.SqlNode;
import wtune.stmt.App;
import wtune.stmt.Statement;

import java.lang.System.Logger;

public interface DaemonContext {
  Logger LOG = System.getLogger("WeTune");

  App appOf(String contextName);

  Registration registrationOf(String contextName);

  SqlNode optimize(Statement stmt);

  void run();

  void stop();
}
