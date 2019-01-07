# ChatServer_
import java.io.IOException;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;

public class ChatServer {

    static ArrayList<PrintWriter> _chatRoom_;

    public static void main(String[] args) throws IOException {

        _chatRoom_= new ArrayList<>();

        ServerSocket ss = new ServerSocket(6000);

        while (true) {
            Socket cs = ss.accept();
            ServerThread st = new ServerThread();
            st.setSocket(cs);
            _chatRoom_.add(new PrintWriter(cs.getOutputStream()));
            st.start();
        }
    }
}
