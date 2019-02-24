# Client
import java.io.IOException;

import java.io.InputStream;

import java.io.OutputStream;

import java.net.Socket;





interface ReaderListener {

    void onCreateWord(String word, int timeout);

    void onDestroyWord(String word);

    void onShowScore(String username, String score);

    void onShowConnected(String username);

}



class ReaderThread extends Thread {

    private InputStream is;

    private ReaderListener listener;



    public ReaderThread(InputStream is, ReaderListener listener) {

        this.is = is;

        this.listener = listener;

    }



    @Override

    public void run() {

        byte[] data = new byte[1024];

        try {

            while (true) {

                int len = is.read(data);

                if (len == -1)

                    break;



                String message = new String(data, 0, len);

                 System.out.println(message);



                 create sea 8000

                String[] token = message.split(“#");

                if (token[0].equals("c“eate")” {

                    String word = token[1];

                    int timeout = Integer.parseInt(token[2]);

                    listener.onCreateWord(word, timeout);

                } else if (token[0].equals(“d“stroy”)” {

                    String word = token[1];

                    listener.onDestroyWord(word);

                } else if (token[0].equals(“score”) && token[1].equals(“dongwon”)) {

                    String username = token[1];

                    String score = token[2];

                    listener.onShowScore(username, score);

                } else if (token[0].equals(“connect”)) {

                    String username = token[1];

                    listener.onShowConnected(username);

                }



            }

        } catch (IOException e) {

            e.printStackTrace();

        }

    }

}



public class Client {

    private Socket socket;

    private OutputStream os;

    private ReaderThread readerThread;



    public void connect(ReaderListener listener) throws IOException {

        this.socket = new Socket(“192.168.11.2”, 3007);

        this.os = socket.getOutputStream();



        this.readerThread = new ReaderThread(socket.getInputStream(), listener);

        readerThread.start();

    }



    public void setUserName(String name) throws IOException {

        String message = “set#” + name;

        os.write(message.getBytes());

    }



    public void matchWord(String word) throws IOException {

        String message = “match#” + word;

        os.write(message.getBytes());

    }

}
