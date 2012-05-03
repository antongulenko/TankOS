#ifdef Main_test_rr_two

// Test description: let program run for some time, then pause it and check, that both counters differ by 1 or 0.

volatile long long mainCounter = 0;
volatile long long newCounter = 0;

Process mainProcess;
Process newProcess;

void newProcessEntry() {
	while (1) {
		newCounter++;
	}
}

void before_scheduler() {
	mainProcess = getCurrentProcess();
	newProcess = createThread(&newProcessEntry);
}

int main(void) {
	while (1) {
		mainCounter++;
	}
}

#endif