package wtune.superopt.daemon;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.util.concurrent.BlockingQueue;

public class UDPServer implements Server {
  private final DatagramSocket sock;
  private final BlockingQueue<byte[]> queue;
  private boolean stopped;

  public UDPServer(InetAddress address, int port, BlockingQueue<byte[]> queue)
      throws SocketException {
    this.sock = new DatagramSocket(port, address);
    this.queue = queue;
    this.stopped = false;
  }

  @Override
  public void run() {
    if (stopped) throw new IllegalStateException("server has been stopped");

    final byte[] buffer = new byte[1024 << 5]; // 32KB

    while (!stopped) {
      final DatagramPacket packet = new DatagramPacket(buffer, buffer.length);
      try {
        sock.receive(packet);
        final DataInputStream stream = new DataInputStream(new ByteArrayInputStream(buffer));
        if (stream.readByte() != 0x19 || stream.readByte() != 0x19) continue; // magic number check

        final int length = stream.readInt();
        final byte[] newBuffer = new byte[length];
        final int nBytesRead = stream.read(newBuffer);

        assert nBytesRead == length;
        queue.put(newBuffer);

      } catch (Exception ignored) {
      }
    }
  }

  @Override
  public void stop() {
    if (stopped) return;
    stopped = true;
    sock.close();
  }

  @Override
  public byte[] poll() throws InterruptedException {
    return queue.take();
  }
}
