# ReceiveThread (Server)
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

                if (receiveString == null) {
                    System._out_.println(“연결이 끊겼습니다.”);
                    break;

                } else {
                    System._out_.println(“클라이언트 : “ + receiveString);
                }
            }

            buf.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    void setSocket(Socket sockets) {
        socket = sockets;
    }

}
