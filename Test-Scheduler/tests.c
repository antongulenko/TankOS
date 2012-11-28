
#include "tests.h"
#include <misc/memory.h>

uint16_t availableMemory_before = 0;

volatile unsigned long jobCounters[NUM_JOBS];

void setUp() {
	availableMemory_before = availableDynamicMemory();
	for (int i = 0; i < NUM_JOBS; i++) {
		jobCounters[i] = 0;
	}
}

void tearDown() {
	uint16_t availableMemory_after = availableDynamicMemory();
	TEST_ASSERT_EQUAL_UINT16(availableMemory_before, availableMemory_after);
}

void IncrementCounter(volatile unsigned long *counter) {
	(*counter)++;
}

void IncrementCounterLoop(volatile unsigned long *counter) {
	while (1) (*counter)++;
}
