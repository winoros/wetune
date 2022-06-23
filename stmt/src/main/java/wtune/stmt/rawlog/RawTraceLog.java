package wtune.stmt.rawlog;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Iterator;

public class RawTraceLog implements Iterable<StackTrace>, AutoCloseable {
  private final BufferedReader reader;

  private StackTrace nextStackTrace;
  private String nextLine;

  private RawTraceLog(BufferedReader reader) {
    this.reader = reader;
    try {
      nextLine = reader.readLine();
      forward();
    } catch (IOException ex) {
      throw new UncheckedIOException(ex);
    }
  }

  public static RawTraceLog open(Path path) throws IOException {
    final BufferedReader reader = new BufferedReader(Files.newBufferedReader(path));
    return new RawTraceLog(reader);
  }

  @Override
  public Iterator<StackTrace> iterator() {
    return new Itr();
  }

  @Override
  public void close() {
    try {
      reader.close();
    } catch (IOException ioe) {
      throw new UncheckedIOException(ioe);
    }
  }

  public void skip(int count) {
    try {
      do {
        final char c = nextLine.charAt(0);
        if (c >= '0' && c <= '9') --count;
      } while (count > 0 && (nextLine = reader.readLine()) != null);
    } catch (IOException ioe) {
      throw new UncheckedIOException(ioe);
    }
  }

  private void forward() {
    try {
      int id = -1;

      do {
        try {
          id = Integer.parseInt(nextLine);
          break;
        } catch (NumberFormatException ignored) {
        }
      } while ((nextLine = reader.readLine()) != null);

      if (id == -1) return;
      nextStackTrace = new StackTrace(id);

      while ((nextLine = reader.readLine()) != null) {
        if (nextLine.startsWith("  "))
          if (nextLine.equals("  ...")) nextStackTrace.segment();
          else nextStackTrace.addFrame(nextLine);
        else break;
      }

    } catch (IOException ioe) {
      throw new UncheckedIOException(ioe);
    }
  }

  private class Itr implements Iterator<StackTrace> {

    @Override
    public boolean hasNext() {
      return nextStackTrace != null;
    }

    @Override
    public StackTrace next() {
      final StackTrace ret = nextStackTrace;
      forward();
      return ret;
    }
  }
}
