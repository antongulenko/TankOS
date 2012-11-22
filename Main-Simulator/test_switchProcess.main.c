
#include <kernel_base.h>

// Test description: let program run for some time, then pause it and check, that both counters differ by 1 or 0.

long long mainCounter = 0;
long long newCounter = 0;

Process mainProcess;
Process newProcess;

void newProcessEntry() {
	while (1) {
		newCounter++;
		switchProcess(mainProcess);
	}		
}

void before_scheduler() {
	mainProcess = getCurrentProcess();
	newProcess = createProcess(&newProcessEntry);
}

int main(void) {
	while (1) {
		mainCounter++;
		switchProcess(newProcess);
	}		
}
