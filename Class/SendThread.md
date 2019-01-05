# SendThread
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;

public class SendThread extends Thread {

    private Socket socket;

    @Override
    public void run() {
        super.run();
        try {
            BufferedReader buf = new BufferedReader(new InputStreamReader(System._in_));

            String sendText;

            while (true) {
                sendText = buf.readLine();

                if (sendText.equals(“exit”)) {
                    break;
                }
            }

            buf.close();
            socket.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    void setSocket(Socket sockets) {
        socket = sockets;
    }
}

