# SendThread _Server
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
                sendWriter.println(sendString);
                sendWriter.flush();

                if (sendString.equals(“error”)) {
                    return;
                }
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    void setSocket(Socket sockets) {
        socket = sockets;
    }

}
