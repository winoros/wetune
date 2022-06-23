package wtune.superopt.daemon;

import wtune.stmt.App;
import wtune.stmt.Statement;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;

public class PacketHandler {
  private final DaemonContext ctx;

  public PacketHandler(DaemonContext ctx) {
    this.ctx = ctx;
  }

  public void handle(byte[] packet) {
    try (final DataInputStream stream = new DataInputStream(new ByteArrayInputStream(packet))) {
      final String contextName = stream.readUTF();
      final String sql = stream.readUTF();

      final App app = ctx.appOf(contextName);
      final Registration registration = ctx.registrationOf(contextName);

      final Statement stmt = Statement.mk(app.name(), sql, null);
      if (!registration.contains(stmt)) registration.register(stmt, ctx.optimize(stmt));

    } catch (IOException ex) {
      throw new RuntimeException(ex);
    }
  }
}
