# Runnable인터페이스를 구현한 것과 Thread클래스를 상속받는 것의 차이
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

 Thread를 만드는 방법 - Java
### // 1. Thread를 상속 받아서 만든다. (Subclassing)
 class MyThread extends Thread {
   @Override
   public void run() {
     for (int i = 0; i < 10; ++i) {
       System.out.println("Thread run - " + i);
     }
   }
 }

 class MyThread2 extends Thread {
   @Override
   public void run() {
     for (int i = 0; i < 10; ++i) {
       System.out.println("Thread2 run - " + i);
     }
   }
 }

### // 2. 전략 패턴(Strategy Pattern)
  => 변하는 정책을 인터페이스 기반의 클래스로 뽑아내는 설계 방법
               (Runnable)
class MyRun implements Runnable {
  @Override
  public void run() {
    for (int i = 0; i < 10; ++i) {
      System.out.println("Thread run - " + i);
    }
  }
}

class MyRun2 implements Runnable {
  @Override
  public void run() {
    for (int i = 0; i < 10; ++i) {
      System.out.println("Thread2 run - " + i);
    }
  }
}

public class Sample {
  public static void main(String[] args) throws Exception {
     Thread thread = new Thread(new MyRun());
     thread.start();

     thread.join();
###     // 3. 자바는 익명의 클래스를 만들 수 있다.
     Thread thread = new Thread(new Runnable(){
     @Override
     public void run() {
      ...
     }
     });

###     // 4. Functional Interface는 람다로 사용할 수 있다.
    Thread thread = new Thread(() -> {
       ...
    });

    thread.start();
    thread.join();

###     // 5. Thread Pool에 적용해서 사용하기 위해서는
        Runnable 인터페이스 기반으로만 사용이 가능하다.
    ExecutorService threadPool = Executors.newFixedThreadPool(10);
    threadPool.submit(() -> {
       ...
    });
  }
}