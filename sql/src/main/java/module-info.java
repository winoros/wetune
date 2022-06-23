module wtune.sql {
  exports wtune.sql;
  exports wtune.sql.util;
  exports wtune.sql.support.action;
  exports wtune.sql.support.locator;
  exports wtune.sql.support.resolution;
  exports wtune.sql.schema;
  exports wtune.sql.plan;
  exports wtune.sql.ast;
  exports wtune.sql.ast.constants;

  requires wtune.common;
  requires org.antlr.antlr4.runtime;
  requires org.apache.commons.lang3;
  requires com.google.common;
  requires trove4j;
}
