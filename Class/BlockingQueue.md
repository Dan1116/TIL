# BlockingQueue
 Concurrent Package
  => 더그 리 교수

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

class Producer extends Thread {
    private final BlockingQueue<String> queue;

    Producer(BlockingQueue<String> queue) {
        this.queue = queue;
    }

    @Override
    public void run() {
        for (int i = 0; i < 100; ) {
            try {
                queue.put(“hello - “ + i);
                System._out_.println(“Prod - “ + i);
                i++;
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}

class Consumer extends Thread {
    private final BlockingQueue<String> queue;

    Consumer(BlockingQueue<String> queue) {
        this.queue = queue;
    }

    @Override
    public void run() {
        for (int i = 0; i < 100; ++i) {
            try {
                String e = queue.take();
                System._out_.println(“Consume - “ + e);
            } catch (InterruptedException e1) {
                e1.printStackTrace();
            }
        }
    }
}

 Queue
  => BlockingQueue
public class Main {
    public static void main(String[] args) throws Exception {
        BlockingQueue<String> queue = new ArrayBlockingQueue<String>(5);
        Thread[] threads = new Thread[] {
                new Producer(queue),
                new Producer(queue),
                new Producer(queue),
                new Producer(queue),
                new Consumer(queue),
                new Consumer(queue),
                new Consumer(queue),
                new Consumer(queue),
        };

        for (Thread thread : threads) {
            thread.start();
        }

        for (Thread thread : threads) {
            thread.join();
        }
    }
}


/*
 Java 에서는 Mutex를 별도의 객체로 제공하지 않는다.
  => 모든 객체는 Mutex가 될 수 있다.
import java.util.concurrent.atomic.AtomicInteger;

 CAS(Atomic Operations)
class FooThread extends Thread {
     static int n = 0;
    static AtomicInteger n = new AtomicInteger(0);
    static final Object mutex = new Object();

    @Override
    public void run() {
        for (int i = 0; i < 1000000; ++i) {
            n.incrementAndGet();
        }
    }
}

/*
class FooThread extends Thread {
    static int n = 0;
    static final Object mutex = new Object();

    @Override
    public void run() {
        for (int i = 0; i < 1000000; ++i) {
            synchronized (mutex) {
                n++;
            }
        }
    }
}


public class Main {
    public static void main(String[] args) throws Exception {
        Thread[] threads = new Thread[]{
                new FooThread(),
                new FooThread(),
        };

        for (int i = 0; i < 2; ++i) {
            threads[i].start();
        }

        for (int i = 0; i < 2; ++i) {
            threads[i].join();
        }

        System.out.println(FooThread.n);
    }
}
*/

#include <unistd.h>

#include <pthread.h>
#include <stdio.h>

/ Thread::run()/
**void** **foo(**void* *p) {
		**for** (**int** i = 0; i < 10; ++i) {
				printf(“foo\n”);
				usleep(1000 * 500);
		}
		**return** 0;
}

**int** main() {
		pthread_t thread;	

		/ Thread::start();/
		pthread_create(&thread, **NULL**, &foo, **NULL**);

		**for** (**int** i = 0; i < 10; ++i) {
			printf(“main…\n”);
			usleep(1000 * 500);
		}

		pthread_join(thread, **NULL**);
}


#include <pthread.h>
#include <unistd.h>

#include <stdio.h>

#include <atomic>

/ int n = 0;/
std::atomic<**int**> n;

/ CPU/
/  => ALU/
/      Register: eax, ebx, ecx …/

/ Memory/

/ ++n/
/   mov eax, [n]/
/   inc eax/
/   mov [n], eax/

/ T1          T2/
/  100/
/  101        100/
/  101        101/
/             101/

/ Race Condition(경쟁 조건)/
/ => n의 값을 변경하는 연산이 원자적이지 않다./

/ 경쟁 조건이 발생하지 않도록, 임계 영역에 대해서/
/ 상호 배제를 해주어야 한다./
/  임계 영역(Critical Section)/
/  상호 배제(Mutual Exclusion)/
/   : 하나의 스레드만 접근할 수 있도록 만들어 주는 것ㅐ/

/ 경쟁 조건이 발생하였을 때, 정수의 연산만 존재한다면, 뮤텍스보다는/
/ 다른 방법을 쓰는 것이 좋다./
/  => 원자적 연산(CPU 명령)/

pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;

**void*** foo(**void** *p) {
	**for** (**int** i = 0; i < 1000000; ++i) {
		/ pthread_mutex_lock(&lock);/
		n++;
		/ pthread_mutex_unlock(&lock);/
	}
	
	**return** 0;
}


**int** main() {
	pthread_t thread[2];

	**for** (**int** i = 0; i < 2; ++i) {
		pthread_create(&thread[i], **NULL**, &foo, **NULL**);
	}

	**for** (**int** i = 0; i < 2; ++i) {
		pthread_join(thread[i], **NULL**);
	}

	printf(“n: %d\n”, n.load());
}

#include <pthread.h>
#include <unistd.h>

#include <stdio.h>

**int** n = 0;

/ CPU/
/  => ALU/
/      Register: eax, ebx, ecx …/

/ Memory/

/ ++n/
/   mov eax, [n]/
/   inc eax/
/   mov [n], eax/

/ T1          T2/
/  100/
/  101        100/
/  101        101/
/             101/

/ Race Condition(경쟁 조건)/
/ => n의 값을 변경하는 연산이 원자적이지 않다./

/ 경쟁 조건이 발생하지 않도록, 임계 영역에 대해서/
/ 상호 배제를 해주어야 한다./
/  임계 영역(Critical Section)/
/  상호 배제(Mutual Exclusion)/
/   : 하나의 스레드만 접근할 수 있도록 만들어 주는 것ㅐ/

/ 경쟁 조건이 발생하였을 때, 정수의 연산만 존재한다면, 뮤텍스보다는/
/ 다른 방법을 쓰는 것이 좋다./
/  => 원자적 연산(CPU 명령)/

pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;

**void*** foo(**void** *p) {
	**for** (**int** i = 0; i < 1000000; ++i) {
		pthread_mutex_lock(&lock);
		n++;
		pthread_mutex_unlock(&lock);
	}
	
	**return** 0;
}


**int** main() {
	pthread_t thread[2];

	**for** (**int** i = 0; i < 2; ++i) {
		pthread_create(&thread[i], **NULL**, &foo, **NULL**);
	}

	**for** (**int** i = 0; i < 2; ++i) {
		pthread_join(thread[i], **NULL**);
	}

	printf(“n: %d\n”, n);
}


