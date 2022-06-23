module wtune.superopt {
  exports wtune.superopt;
  exports wtune.superopt.logic;
  exports wtune.superopt.optimizer;
  exports wtune.superopt.profiler;
  exports wtune.superopt.substitution;
  exports wtune.superopt.uexpr;

  requires com.google.common;
  requires org.apache.commons.lang3;
  requires java.logging;
  requires wtune.common;
  requires wtune.sql;
  requires wtune.stmt;
  requires wtune.spes;
  requires java.sql;
  requires org.postgresql.jdbc;
  requires com.zaxxer.hikari;
  requires progressbar;
  requires trove4j;
  requires z3;
  requires com.microsoft.sqlserver.jdbc;
  requires calcite.core;
  requires mysql.connector.java;
}
