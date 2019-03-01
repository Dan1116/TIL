# Server
public class Server {
    public static void main(String[] args) throws IOException {

        ServerSocket ss = new ServerSocket(5000);
        Socket cs = ss.accept();
        ReceiveThread rt = new ReceiveThread();
        rt.setSocket(cs);
        SendThread st = new SendThread();
        st.setSocket(cs);
        rt.start();
        st.start();
    }
}
