#ifdef Main_test_rr_many

#define NUM_PROCESSES 20

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
		threads[i] = createThread3(processEntry, PrioHigh, (void*) (counters + i));
	}
}

int main(void) {
	processEntry(counters + 0);
}

#endif