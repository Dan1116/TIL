# ChatServer
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class ChatServer {


    public static void main(String[] args) throws IOException {

        ServerSocket ss = new ServerSocket(6000);

        while (true) {
            Socket cs = ss.accept();
            ServerThread st = new ServerThread();
            st.setSocket(cs);
            st.start();
        }
    }
}
