
#include <kernel_base.h>

volatile long long counter = 0;
volatile long long main_counter = 0;

void MyPeriodicJob() {
	counter++;
}

void before_scheduler() {
	createPeriodicJob(MyPeriodicJob, 10);
}

int main() {
	// Just let the main pass. Will enter ProcessGraveyard.
	// This is not really the idle-thread, but the infinite sleep-loop inside has the same effect.
	// To really get the idle-thread, comment out the rr_captureMainThread() in the kernel-setup.
}
