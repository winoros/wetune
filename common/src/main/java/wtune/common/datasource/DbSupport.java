package wtune.common.datasource;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import javax.sql.DataSource;
import java.util.Properties;

public interface DbSupport {
  String MySQL = "mysql";
  String PostgreSQL = "postgresql";
  String SQLServer = "sqlserver";

  static DataSource makeDataSource(Properties dbProps) {
    final HikariConfig config = new HikariConfig();
    config.setJdbcUrl(dbProps.getProperty("jdbcUrl"));
    config.setUsername(dbProps.getProperty("username"));
    config.setPassword(dbProps.getProperty("password"));
    return new HikariDataSource(config);
  }

  static Properties dbProps(String dbType, String dbName) {
    return switch (dbType) {
      case MySQL -> DbSupport.mysqlProps(dbName);
      case PostgreSQL -> DbSupport.pgProps(dbName);
      case SQLServer -> DbSupport.sqlserverProps(dbName);
      default -> throw new IllegalArgumentException("unknown db type");
    };
  }

  static Properties dbPropsCalciteWrap(String dbType, String dbName) {
    return switch (dbType) {
      case MySQL -> DbSupport.mysqlPropsCalciteWrap(dbName);
      case PostgreSQL -> DbSupport.pgPropsCalciteWrap(dbName);
      default -> throw new IllegalArgumentException("unknown db type");
    };
  }

  private static Properties pgProps(String db) {
    final Properties props = new Properties();
    props.setProperty("dbType", PostgreSQL);
    props.setProperty("jdbcUrl", "jdbc:postgresql://127.0.0.1:5432/" + db);
    props.setProperty("username", "root");
    props.setProperty("password", "admin");
    return props;
  }

  private static Properties mysqlProps(String db) {
    final Properties props = new Properties();
    props.setProperty("dbType", MySQL);
    props.setProperty(
            "jdbcUrl", "jdbc:mysql://127.0.0.1:3306/" + db + "?rewriteBatchedStatements=true");
    props.setProperty("username", "root");
    props.setProperty("password", "admin");
    return props;
  }

  private static Properties sqlserverProps(String db) {
    final Properties props = new Properties();
    props.setProperty("dbType", SQLServer);
    props.setProperty(
            "jdbcUrl", "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=" + db);
    props.setProperty("username", "SA");
    props.setProperty("password", "mssql2019Admin");
    return props;
  }

  private static Properties mysqlPropsCalciteWrap(String db) {
    final Properties props = new Properties();
    props.setProperty("dbType", MySQL);
    props.setProperty("jdbcUrl", "jdbc:log4jdbc:mysql://127.0.0.1:3306/" + db);
    props.setProperty("username", "root");
    props.setProperty("password", "admin");
    return props;
  }

  private static Properties pgPropsCalciteWrap(String db) {
    final Properties props = new Properties();
    props.setProperty("dbType", PostgreSQL);
    props.setProperty("jdbcUrl", "jdbc:log4jdbc:postgresql://127.0.0.1:5432/" + db);
    props.setProperty("username", "root");
    props.setProperty("password", "admin");
    return props;
  }
}
