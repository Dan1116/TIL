# ChatClient
import java.io.IOException;
import java.net.Socket;

public class ChatClient {

    public static void main(String[] args) throws IOException {

            Socket cs = new Socket(“127.0.0.1”, 6000);

            ReceiveThread rt = new ReceiveThread();
            rt.setSocket(cs);

            SendThread st = new SendThread();
            st.setSocket(cs);

            st.start();
            rt.start();
    }
}
