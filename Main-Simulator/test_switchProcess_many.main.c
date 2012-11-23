
#include <kernel_base.h>

// This is a manual test. NUM_PROCESSES processes are created and will pass the execution
// on to each other. if USE_RANDOM is defined, the next process is determined by rand(), else
// each process calls its successor. Each time a process is switched to, it increments its
// slot in the counters[]-array. The debugger must be used to intercept execution and inspect
// the contents of counters[]. In the USE_RANDOM case, there must be some random numbers there,
// without USE_RANDOM, there should be one/two different numbers filling the array.

// If this is not defined, the processes will call each other in a "circle"
#define USE_RANDOM

#define NUM_PROCESSES 20

#ifdef USE_RANDOM
#define SEED_DATA 28485
#endif

unsigned long counters[NUM_PROCESSES];
Process processes[NUM_PROCESSES];

void processEntry(unsigned long *testMyCounter) {
	while (1) {
		(*testMyCounter)++;
		switchProcess(processes[
			#ifdef USE_RANDOM
				rand()
			#else
				(index + 1)
			#endif
			% NUM_PROCESSES]);
	}
}

void before_scheduler() {
	#ifdef USE_RANDOM
	// Seed random numbers and act as every other process
	srand(SEED_DATA);
	#endif
	
	processes[0] = getCurrentProcess();
	for (int i = 1; i < NUM_PROCESSES; i++) {
		processes[i] = createProcess2(processEntry, counters + i);
	}
}

int main(void) {
	processEntry(counters + 0);
}
