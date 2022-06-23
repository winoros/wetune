package wtune.testbed.population;

import wtune.testbed.common.BatchActuator;
import wtune.testbed.common.BatchActuatorFactory;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.Properties;

import static wtune.common.datasource.DbSupport.makeDataSource;
import static wtune.common.datasource.DbSupport.MySQL;
import static wtune.common.datasource.DbSupport.PostgreSQL;

class BatchActuatorFactoryImpl implements BatchActuatorFactory {
  private final Properties dbProperties;
  private final int batchSize;
  private final String dbType;
  private DataSource dataSource;

  BatchActuatorFactoryImpl(Properties properties, int batchSize) {
    this.dbProperties = properties;
    this.batchSize = batchSize;
    this.dbType = determineDbType(properties.getProperty("jdbcUrl"));
  }

  private DataSource dataSource() {
    if (dataSource == null) dataSource = makeDataSource(dbProperties);
    return dataSource;
  }

  private static String determineDbType(String url) {
    if (url.startsWith("jdbc:mysql")) return MySQL;
    else if (url.startsWith("jdbc:postgresql")) return PostgreSQL;
    else throw new IllegalArgumentException();
  }

  @Override
  public BatchActuator make(String collectionName) {
    try {
      return new PopulationActuator(dbType, dataSource().getConnection(), batchSize);
    } catch (SQLException ex) {
      throw new RuntimeException(ex);
    }
  }
}
