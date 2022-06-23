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
    props.setProperty("jdbcUrl", "jdbc:postgresql://YOUR_IP:PORT/" + db);
    props.setProperty("username", "YOUR_NAME");
    props.setProperty("password", "PASSWD");
    return props;
  }

  private static Properties mysqlProps(String db) {
    final Properties props = new Properties();
    props.setProperty("dbType", MySQL);
    props.setProperty(
        "jdbcUrl", "jdbc:mysql://YOUR_IP:PORT/" + db + "?rewriteBatchedStatements=true");
    props.setProperty("username", "YOUR_NAME");
    props.setProperty("password", "PASSWD");
    return props;
  }

  private static Properties sqlserverProps(String db) {
    final Properties props = new Properties();
    props.setProperty("dbType", SQLServer);
    props.setProperty(
        "jdbcUrl", "jdbc:sqlserver://YOUR_IP:PORT;DatabaseName=" + db);
    props.setProperty("username", "YOUR_NAME");
    props.setProperty("password", "PASSWD");
    return props;
  }

  private static Properties mysqlPropsCalciteWrap(String db) {
    final Properties props = new Properties();
    props.setProperty("dbType", MySQL);
    props.setProperty("jdbcUrl", "jdbc:log4jdbc:mysql://YOUR_IP:PORT/" + db);
    props.setProperty("username", "YOUR_NAME");
    props.setProperty("password", "PASSWD");
    return props;
  }

  private static Properties pgPropsCalciteWrap(String db) {
    final Properties props = new Properties();
    props.setProperty("dbType", PostgreSQL);
    props.setProperty("jdbcUrl", "jdbc:log4jdbc:postgresql://YOUR_IP:PORT/" + db);
    props.setProperty("username", "YOUR_NAME");
    props.setProperty("password", "PASSWD");
    return props;
  }
}
