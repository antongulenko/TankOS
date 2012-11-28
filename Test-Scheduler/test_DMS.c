
#include "tests.h"
#include <util/atomic.h>

void test_DMS_jobsIncrementCounters_22ms() {
	Process jobs[NUM_JOBS];
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		for (int i = 0; i < NUM_JOBS; i++) {
			jobs[i] = createPeriodicJob2(IncrementCounter, 5, (void*) (jobCounters + i));
			TEST_ASSERT(IsValid(jobs[i]));
		}
	}		
	wait_milliseconds(20);
	for (int i = 0; i < NUM_JOBS; i++) {
		TEST_ASSERT_EQUAL_UINT32(4, jobCounters[i]);
	}
	for (int i = 0; i < NUM_JOBS; i++) {
		freeJob(jobs[i]);
	}
}

void test_DMS_jobsStopIncrementing() {
	Process jobs[NUM_JOBS];
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		for (int i = 0; i < NUM_JOBS; i++) {
			jobs[i] = createPeriodicJob2(IncrementCounter, 5, (void*) (jobCounters + i));
			TEST_ASSERT(IsValid(jobs[i]));
		}
	}
	wait_milliseconds(2);
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		for (int i = 0; i < NUM_JOBS; i++) {
			freeJob(jobs[i]);
		}
	}		
	wait_milliseconds(7);
	for (int i = 0; i < NUM_JOBS; i++) {
		TEST_ASSERT_EQUAL_UINT32(0, jobCounters[i]);
	}
}
