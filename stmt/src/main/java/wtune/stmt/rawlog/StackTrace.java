package wtune.stmt.rawlog;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class StackTrace {
  private final int id;
  private final List<List<String>> frames;

  public StackTrace(int id) {
    this.id = id;
    this.frames = new ArrayList<>();
  }

  public int id() {
    return id;
  }

  public List<List<String>> frames() {
    return frames;
  }

  public void addFrame(String frame) {
    if (frames.isEmpty()) frames.add(new ArrayList<>());
    frames.get(frames.size() - 1).add(frame);
  }

  public void segment() {
    frames.add(new ArrayList<>());
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    StackTrace that = (StackTrace) o;
    return id == that.id && Objects.equals(frames, that.frames);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id);
  }

  @Override
  public String toString() {
    final StringBuilder builder = new StringBuilder();

    for (int i = 0, bound = frames.size(); i < bound; i++) {
      final List<String> segment = frames.get(i);
      for (String frame : segment) builder.append(frame).append('\n');
      if (i != bound - 1) builder.append("...");
    }

    return builder.toString();
  }
}
