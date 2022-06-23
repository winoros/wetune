package wtune.sql.parser;

import wtune.common.datasource.DbSupport;
import wtune.sql.ast.SqlNode;
import wtune.sql.mysql.MySQLAstParser;
import wtune.sql.pg.PgAstParser;

import java.util.Properties;

public interface AstParser {
  SqlNode parse(String string);

  default void setProperties(Properties props) {}

  static AstParser ofDb(String dbType) {
    if (DbSupport.MySQL.equals(dbType)) return new MySQLAstParser();
    else if (DbSupport.PostgreSQL.equals(dbType)) return new PgAstParser();
    else throw new IllegalArgumentException();
  }

  static AstParser mysql() {
    return ofDb(DbSupport.MySQL);
  }

  static AstParser postgresql() {
    return ofDb(DbSupport.PostgreSQL);
  }
}
