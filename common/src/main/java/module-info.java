module wtune.common {
  exports wtune.common.utils;
  exports wtune.common.tree;
  exports wtune.common.field;
  exports wtune.common.datasource;
  exports wtune.common.io;

  requires com.google.common;
  requires org.apache.commons.lang3;
  requires annotations;
  requires trove4j;
  requires com.zaxxer.hikari;
  requires java.sql;
}
