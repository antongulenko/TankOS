
#include <kernel_base.h>

#define NUM_THREADS 12
#define NUM_JOBS 12

volatile unsigned long threadCounters[NUM_THREADS];
Thread threads[NUM_THREADS];

volatile unsigned long jobCounters[NUM_THREADS];
Process jobs[NUM_JOBS];

void threadEntry(volatile unsigned long *testMyCounter) {
	while (1) {
		(*testMyCounter)++;
	}
}

void MyPeriodicJob(volatile unsigned long *testMyCounter) {
	(*testMyCounter)++;
}

void before_scheduler() {
	threads[0] = getCurrentThread();
	for (int i = 1; i < NUM_THREADS; i++) {
		threads[i] = createThread3(threadEntry, PrioNormal, (void*) (threadCounters + i));
	}
	for (int i = 0; i < NUM_JOBS; i++) {
		createPeriodicJob2(MyPeriodicJob, 50, (void*) (jobCounters + i));
	}
}

int main() {
	threadEntry(threadCounters + 0);
}
