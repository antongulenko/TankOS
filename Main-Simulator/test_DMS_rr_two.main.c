
#include <kernel_base.h>

volatile unsigned long counter = 0;
volatile unsigned long main_counter = 0;

Process job;
Process main_thread;

void MyPeriodicJob(volatile long long *counter) {
	(*counter)++;
}

void before_scheduler() {
	main_thread = getCurrentProcess();
	job = createPeriodicJob2(MyPeriodicJob, 10, (void*) &counter);
}

int main() {
	// This will continue as rr-thread.
	while (1) {
		main_counter++;
	}
}
