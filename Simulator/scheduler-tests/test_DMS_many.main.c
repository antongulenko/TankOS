
#include "../common.h"

#define NUM_JOBS 12

volatile unsigned long jobCounters[NUM_JOBS];
volatile unsigned long main_counter = 0;

Process jobs[NUM_JOBS];
Process main_thread;

void MyPeriodicJob(volatile unsigned long *counter) {
	(*counter)++;
}

void before_scheduler() {
	main_thread = getCurrentProcess();
	for (int i = 0; i < NUM_JOBS; i++) {
		jobs[i] = createPeriodicJob2(MyPeriodicJob, 10, (void*) (jobCounters + i));
	}
}

int main() {
	// This will continue as rr-thread.
	while (1) {
		main_counter++;
	}
}
