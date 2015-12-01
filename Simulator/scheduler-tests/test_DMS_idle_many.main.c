
#include "../common.h"

#define NUM_JOBS 12
volatile unsigned long jobCounters[NUM_JOBS];
Process jobs[NUM_JOBS];

void MyPeriodicJob(volatile unsigned long *counter) {
	(*counter)++;
}

void before_scheduler() {
	for (int i = 0; i < NUM_JOBS; i++) {
		jobs[i] = createPeriodicJob2(MyPeriodicJob, 10, (void*) (jobCounters + i));
	}
}

int main() {
	// Just let the main pass. Will enter ProcessGraveyard.
	// This is not really the idle-thread, but the infinite sleep-loop inside has the same effect.
	// To really get the idle-thread, comment out the rr_captureMainThread() in the kernel-setup.
}
