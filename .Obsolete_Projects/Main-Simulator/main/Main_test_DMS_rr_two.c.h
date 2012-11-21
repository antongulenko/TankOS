
volatile long long counter = 0;
volatile long long main_counter = 0;

void MyPeriodicJob() {
	counter++;
}

void before_scheduler() {
	createPeriodicJob(&MyPeriodicJob, 50, 0);
}

int main() {
	// This will continue as rr-thread.
	while (1) {
		main_counter++;
	}
}
