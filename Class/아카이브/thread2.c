#include <pthread.h>
#include <unistd.h>

#include <stdio.h>

#include <atomic>

// int n = 0;
std::atomic<int> n;

// CPU
//  => ALU
//      Register: eax, ebx, ecx ...

// Memory 

// ++n
//   mov eax, [n]
//   inc eax
//   mov [n], eax

// T1          T2
//  100        
//  101        100
//  101        101
//             101

// Race Condition(경쟁 조건)
// => n의 값을 변경하는 연산이 원자적이지 않다.

// 경쟁 조건이 발생하지 않도록, 임계 영역에 대해서
// 상호 배제를 해주어야 한다.
//  임계 영역(Critical Section)
//  상호 배제(Mutual Exclusion)
//   : 하나의 스레드만 접근할 수 있도록 만들어 주는 것ㅐ

// 경쟁 조건이 발생하였을 때, 정수의 연산만 존재한다면, 뮤텍스보다는
// 다른 방법을 쓰는 것이 좋다.
//  => 원자적 연산(CPU 명령)

pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;

void* foo(void *p) {
	for (int i = 0; i < 1000000; ++i) {
		// pthread_mutex_lock(&lock);
		n++;
		// pthread_mutex_unlock(&lock);
	}
	
	return 0;
}


int main() {
	pthread_t thread[2];

	for (int i = 0; i < 2; ++i) {
		pthread_create(&thread[i], NULL, &foo, NULL);
	}

	for (int i = 0; i < 2; ++i) {
		pthread_join(thread[i], NULL);
	}

	printf("n: %d\n", n.load());
}

