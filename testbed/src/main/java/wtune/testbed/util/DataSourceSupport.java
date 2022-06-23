package wtune.testbed.util;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import javax.sql.DataSource;
import java.util.Properties;

import static wtune.common.datasource.DbSupport.*;

public interface DataSourceSupport {
  static DataSource makeDataSource(Properties dbProps) {
    final HikariConfig config = new HikariConfig();
    config.setJdbcUrl(dbProps.getProperty("jdbcUrl"));
    config.setUsername(dbProps.getProperty("username"));
    config.setPassword(dbProps.getProperty("password"));
    config.setMaximumPoolSize(2);
    return new HikariDataSource(config);
  }

  static Properties pgProps(String db) {
    final Properties props = new Properties();
    props.setProperty("dbType", PostgreSQL);
    props.setProperty("jdbcUrl", "jdbc:postgresql://10.0.0.103:5432/" + db);
    props.setProperty("username", "root");
    props.setProperty("password", "admin");
    return props;
  }

  static Properties mysqlProps(String db) {
    final Properties props = new Properties();
    props.setProperty("dbType", MySQL);
    props.setProperty(
        "jdbcUrl", "jdbc:mysql://10.0.0.103:3306/" + db + "?rewriteBatchedStatements=true");
    props.setProperty("username", "root");
    props.setProperty("password", "admin");
    return props;
  }

  static Properties sqlserverProps(String db) {
    final Properties props = new Properties();
    props.setProperty("dbType", SQLServer);
    props.setProperty(
        "jdbcUrl", "jdbc:sqlserver://10.0.0.103:1433;DatabaseName=" + db);
    props.setProperty("username", "SA");
    props.setProperty("password", "mssql2019Admin");
    return props;
  }

  static Properties mysqlPropsCalciteWrap(String db) {
    final Properties props = new Properties();
    props.setProperty("dbType", MySQL);
    props.setProperty("jdbcUrl", "jdbc:log4jdbc:mysql://10.0.0.103:3306/" + db);
    props.setProperty("username", "root");
    props.setProperty("password", "admin");
    return props;
  }

  static Properties pgPropsCalciteWrap(String db) {
    final Properties props = new Properties();
    props.setProperty("dbType", PostgreSQL);
    props.setProperty("jdbcUrl", "jdbc:log4jdbc:postgresql://10.0.0.103:5432/" + db);
    props.setProperty("username", "root");
    props.setProperty("password", "admin");
    return props;
  }
}
