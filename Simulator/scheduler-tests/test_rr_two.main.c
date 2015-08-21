#include <kernel_base.h>

// Test description: let program run for some time, then pause it and check, that both counters differ by 1 or 0.

volatile unsigned long mainCounter = 0;
volatile unsigned long newCounter = 0;

Process mainProcess;
Thread otherProcess;

void newProcessEntry() {
	while (1) {
		newCounter++;
	}
}

void before_scheduler() {
	mainProcess = getCurrentProcess();
	otherProcess = newThread(PrioNormal, createProcess(&newProcessEntry));
}

int main(void) {
	while (1) {
		mainCounter++;
	}
}
