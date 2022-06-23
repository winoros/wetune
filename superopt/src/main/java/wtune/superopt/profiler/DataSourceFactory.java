package wtune.superopt.profiler;

import wtune.common.datasource.DbSupport;

import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

public class DataSourceFactory {
  private static final DataSourceFactory INSTANCE = new DataSourceFactory();

  private final Map<String, DataSource> dataSources = new HashMap<>();

  private DataSourceFactory() {}

  public static DataSourceFactory instance() {
    return INSTANCE;
  }

  public synchronized DataSource mk(Properties props) {
    return dataSources.computeIfAbsent(
        props.getProperty("jdbcUrl"), ignored -> DbSupport.makeDataSource(props));
  }
}
