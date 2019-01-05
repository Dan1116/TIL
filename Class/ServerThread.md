# ServerThread
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;

public class ServerThread extends Thread {

    private Socket socket;

    @Override
    public void run() {
        super.run();
        try {
            BufferedReader buf = new BufferedReader(new InputStreamReader(socket.getInputStream()));

            String text;

            while (true) {
                text = buf.readLine();

                if (text == null) {
                    System._out_.println(“나갔습니다”);
                    break;
                }
            }

            socket.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    void setSocket(Socket sockets) {
        socket = sockets;
    }
}

