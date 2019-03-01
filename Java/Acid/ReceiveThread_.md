# ReceiveThread_
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;

public class ReceiveThread extends Thread {

    private Socket socket;

    @Override
    public void run() {
        super.run();

        try {
            BufferedReader buf = new BufferedReader(new InputStreamReader(socket.getInputStream()));

            String receiveText;

            while (true) {
                receiveText = buf.readLine();

                System._out_.println(receiveText);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    void setSocket(Socket sockets) {
        socket = sockets;
    }
}
