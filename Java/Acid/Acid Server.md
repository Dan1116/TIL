## Acid Server
import java.io.IOException;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Random;
import java.util.List;
import java.util.ArrayList;
import java.util.Collections;

 ConcurrentModificationException - fail fast
 => 하나의 컬렉션에 두 개 이상의 스레드가 데이터를 넣거나 뺄때 발생하는 문제입니다.
 => Race Condition
 => Mutex

 for (Socket socket : sessions)
 => 향상된 for 구문
 => 향상된 for 구문을 순회하는 도중에, 절대 컬렉션의 크기가 변경되면 안된다.

class WordWriterThread extends Thread {
    private String[] words = {“hello”, “world”, “show”, “me”, “the”, “money”,};
    private List<Socket> sessions;
    private Object lock;

    private Random random = new Random();

    WordWriterThread(List<Socket> sessions, Object lock) {
        this.sessions = sessions;
        this.lock = lock;

        long seed = LocalDateTime._now_().atZone(ZoneId._systemDefault_()).toEpochSecond();
        random.setSeed(seed);
    }

    public String getRandomWord() {
        int index = random.nextInt(words.length);
        return words[index];
    }

    @Override
    public void run() {
        while (true) {
            try {
                Thread._sleep_(500);

                String word = getRandomWord();
                List<Socket> disconnected = new ArrayList<>();
                for (Socket socket : sessions) {
                    try {
                        OutputStream os = socket.getOutputStream();
                        os.write(word.getBytes());
                    } catch (IOException e) {
                         synchronized (lock) {
                           sessions.remove(socket);
                         }
                        disconnected.add(socket);
                    }
                }

                sessions.removeAll(disconnected);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}

 1. 명시적으로 lock을 제공하는 방법
  문제점
   : 실수 가능성이 높다.
     1) lock을 제대로 공유하지 않는 경우
     2) synchronized 구문을 제대로 작성하지 않는 경우
 
 해결방법
 2. collection이 스스로 동기화할 수 있도록하자.
   : Decorator Pattern
   => 실행 중에 기존 객체에 새로운 기능을 추가하는 패턴

public class Server {
    private int port;
    private List<Socket> sessions = new ArrayList<>();
    private Object lock = new Object();

    public Server(int port) {
        this.port = port;

         sessions는 여러 개의 스레드에서 동시에 접근해야 하므로, 스스로 동기화될 수 있어야 한다.
        sessions = Collections._synchronizedList_(sessions);
    }

    public void start() {
        try {
            WordWriterThread thread = new WordWriterThread(sessions, lock);
            thread.start();

            ServerSocket serverSocket = new ServerSocket(port);
            while (true) {
                Socket socket = serverSocket.accept();

                 synchronized (lock) {
                sessions.add(socket);
                 }
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        Server server = new Server(5000);
        server.start();
    }
}

/*
* public class Server { private static Random random = new Random(); static {
* long seed =
* LocalDateTime.now().atZone(ZoneId.systemDefault()).toEpochSecond();
* random.setSeed(seed); }
 *
* public static String getRandomWord(String[] words) { int index =
* random.nextInt(words.length); return words[index]; }
 *
* public static void main(String[] args) throws IOException { ServerSocket
* serverSocket = new ServerSocket(8080); String[] words = { “hello”, “world”,
* “show”, “me”, “the”, “money”, };
 *
* while (true) { Socket socket = serverSocket.accept();
 *
* try (OutputStream os = socket.getOutputStream()) { while (true) { String word
* = getRandomWord(words); os.write(word.getBytes()); Thread.sleep(500); } }
* catch (Exception e) { e.printStackTrace(); } } } }
 */
