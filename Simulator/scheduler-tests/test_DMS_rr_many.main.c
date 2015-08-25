
#include <kernel_base.h>
#include <kernel/memory.h>

// This is too much to fit into memory, the last created DMS job is not valid.
// Therefore the last jobCounter is not counted up!
#define NUM_THREADS 15
#define NUM_JOBS 15

volatile unsigned long threadCounters[NUM_THREADS];
Thread threads[NUM_THREADS];

volatile unsigned long jobCounters[NUM_JOBS];
Process jobs[NUM_JOBS];

void threadEntry(volatile unsigned long *testMyCounter) {
	while (1) {
		(*testMyCounter)++;
	}
}

void MyPeriodicJob(volatile unsigned long *testMyCounter) {
	(*testMyCounter)++;
}

#pragma GCC diagnostic ignored "-Wunused-variable"

void before_scheduler() {
	threads[0] = getCurrentThread();
	for (int i = 1; i < NUM_THREADS; i++) {
		threads[i] = newThread(PrioNormal, createProcess2(threadEntry, (void*) (threadCounters + i)));
	}
	for (int i = 0; i < NUM_JOBS; i++) {
		jobs[i] = createPeriodicJob2(MyPeriodicJob, 10, (void*) (jobCounters + i));
	}
}

int main() {
	threadEntry(threadCounters + 0);
}
