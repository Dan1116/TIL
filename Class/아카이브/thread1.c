#include <unistd.h>

#include <pthread.h>
#include <stdio.h>

// Thread::run()
void *foo(void *p) {
		for (int i = 0; i < 10; ++i) {
				printf("foo\n");
				usleep(1000 * 500);
		}
		return 0;
}

int main() {
		pthread_t thread;	

		// Thread::start();
		pthread_create(&thread, NULL, &foo, NULL);

		for (int i = 0; i < 10; ++i) {
			printf("main...\n");
			usleep(1000 * 500);
		}

		pthread_join(thread, NULL);
}
