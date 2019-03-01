# Client
public class Client {

    public static void main(String[] args) throws IOException {

        Socket cs = new Socket(“127.0.0.1”, 5000);
        ReceiveThread rt = new ReceiveThread();
        rt.setSocket(cs);
        SendThread st = new SendThread();
        st.setSocket(cs);
        st.start();
        rt.start();
    }
}
