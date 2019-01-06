# ReceiveThread_Client
public class ReceiveThread extends Thread {

    private Socket socket;

    @Override
    public void run() {
        super.run();

        try {
            BufferedReader buf =
                    new BufferedReader(new InputStreamReader(socket.getInputStream()));

            String receiveString;

            while (true) {
                receiveString = buf.readLine();

                if (receiveString.equals(“error”)) {
                    break;
                }

                System._out_.println(“서버 : “ + receiveString);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    void setSocket(Socket sockets) {
        socket = sockets;
    }

}

