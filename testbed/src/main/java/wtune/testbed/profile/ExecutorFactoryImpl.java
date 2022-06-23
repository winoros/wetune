package wtune.testbed.profile;

import com.zaxxer.hikari.HikariDataSource;
import org.apache.calcite.jdbc.CalciteConnection;
import wtune.common.datasource.DbSupport;
import wtune.testbed.util.StmtSyntaxRewriteHelper;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

class ExecutorFactoryImpl implements ExecutorFactory {
  private final Properties dbProperties;
  private DataSource dataSource;

  ExecutorFactoryImpl(Properties dbProperties) {
    this.dbProperties = dbProperties;
  }

  private Connection connection() throws SQLException{
    if (dataSource == null) dataSource = DbSupport.makeDataSource(dbProperties);
    return dataSource.getConnection();
  }

  private Connection calciteConnection() throws SQLException{
    Properties info = new Properties();
    info.put("model", "inline:{" +
            "  version: '1.0'," +
            "  defaultSchema: '" + "default" + "'," +
            "  schemas: [" +
            "    {" +
            "      name: '" + "default" + "'," +
            "      type: 'custom'," +
            "      factory: 'org.apache.calcite.adapter.jdbc.JdbcSchema$Factory'," +
            "      operand: {" +
            "        jdbcDriver: 'net.sf.log4jdbc.DriverSpy'," +
            "        jdbcUrl:'" + dbProperties.getProperty("jdbcUrl") + "'," +
            "        jdbcUser: '" + dbProperties.getProperty("username") + "'," +
            "        jdbcPassword: '" + dbProperties.getProperty("password") + "'" +
            "      }" +
            "    }" +
            "  ]" +
            "}");

    return DriverManager
            .getConnection("jdbc:calcite:caseSensitive=false", info)
            .unwrap(CalciteConnection.class);
  }

  @Override
  public Executor mk(String sql, boolean useSqlServer, boolean calciteConn) {
    try {
      final Connection conn = calciteConn ? calciteConnection() : connection();

      if (calciteConn) sql = StmtSyntaxRewriteHelper.regexRewriteForCalcite(sql);
      if (useSqlServer) sql = StmtSyntaxRewriteHelper.regexRewriteForSQLServer(sql);

      return new ExecutorImpl(conn, sql);
    } catch (SQLException ex) {
      throw new RuntimeException(ex);
    }
  }

  @Override
  public void close() {
    if (dataSource != null) {
      try {
        dataSource.unwrap(HikariDataSource.class).close();
      } catch (SQLException exception) {
        throw new RuntimeException(exception);
      }
    }
  }
}
