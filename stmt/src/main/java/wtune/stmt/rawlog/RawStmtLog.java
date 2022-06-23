package wtune.stmt.rawlog;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Iterator;

public class RawStmtLog implements Iterable<RawStmt>, AutoCloseable {
  private final BufferedReader reader;

  private String nextLine;

  private RawStmtLog(BufferedReader reader) {
    this.reader = reader;
    forward();
  }

  public static RawStmtLog open(Path path) throws IOException {
    return new RawStmtLog(Files.newBufferedReader(path));
  }

  private boolean forward() {
    try {
      nextLine = reader.readLine();
      return nextLine != null;
    } catch (IOException e) {
      nextLine = null;
      return false;
    }
  }

  @Override
  public Iterator<RawStmt> iterator() {
    return new Itr();
  }

  @Override
  public void close() {
    try {
      reader.close();
    } catch (IOException ex) {
      throw new UncheckedIOException(ex);
    }
  }

  public void skip(int count) {
    while (count > 0 && forward()) --count;
  }

  private class Itr implements Iterator<RawStmt> {
    @Override
    public boolean hasNext() {
      return nextLine != null;
    }

    @Override
    public RawStmt next() {
      final String line = nextLine;
      final String[] split = line.split(" ", 2);
      final int id = Integer.parseInt(split[0]);
      final String sql = split[1];
      final RawStmt stmt = new RawStmt(id, sql);

      forward();

      return stmt;
    }
  }
}
