#include "../common.h"

#define NUM_PROCESSES 14

volatile unsigned long counters[NUM_PROCESSES];
Thread threads[NUM_PROCESSES];

void processEntry(volatile unsigned long *testMyCounter) {
	while (1) {
		(*testMyCounter)++;
	}
}

void before_scheduler() {
	threads[0] = getCurrentThread();
	for (int i = 1; i < NUM_PROCESSES; i++) {
		threads[i] = newThread(PrioNormal, createProcess2(processEntry, (void*) (counters + i)));
	}
}

int main(void) {
	processEntry(counters + 0);
}
