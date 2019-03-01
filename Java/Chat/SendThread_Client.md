# SendThread_Client
public class SendThread extends Thread {

    private Socket socket;

    @Override
    public void run() {
        super.run();
        try {
            BufferedReader buf = new BufferedReader(new InputStreamReader(System._in_));
            PrintWriter sendWriter = new PrintWriter(socket.getOutputStream());

            String sendString;

            while (true) {
                sendString = buf.readLine();

                if (sendString.equals(“exit”)) {
                    break;
                }

                sendWriter.println(sendString);
                sendWriter.flush();
            }

            sendWriter.close();
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
