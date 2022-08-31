package wtune.common.datasource;

import wtune.common.io.FileUtils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtils {
  private static Connection conn;

  public static Connection connection() {
    try {
      if (conn == null || conn.isClosed())
        synchronized (DbUtils.class) {
          Class.forName("org.sqlite.JDBC");
          if (conn == null || conn.isClosed())
            conn = DriverManager.getConnection("jdbc:sqlite://" + FileUtils.dbPath());
        }

      return conn;

    } catch (SQLException | ClassNotFoundException ex) {
      throw new RuntimeException(ex);
    }
  }
}
