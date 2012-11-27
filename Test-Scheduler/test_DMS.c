
#include <unity.h>
#include <kernel_base.h>
#include "tests.h"

void test_DMS_jobsIncrementCounters_22ms() {
	Process jobs[NUM_JOBS];
	for (int i = 0; i < NUM_JOBS; i++) {
		jobs[i] = createPeriodicJob2(IncrementCounter, 5, (void*) (jobCounters + i));
		TEST_ASSERT(IsValid(jobs[i]));
	}
	wait_milliseconds(22);
	for (int i = 0; i < NUM_JOBS; i++) {
		TEST_ASSERT_EQUAL_UINT32(4, jobCounters[i]);
	}
	for (int i = 0; i < NUM_JOBS; i++) {
		freeJob(jobs[i]);
	}
}

void test_DMS_jobsStopIncrementing() {
	Process jobs[NUM_JOBS];
	for (int i = 0; i < NUM_JOBS; i++) {
		jobs[i] = createPeriodicJob2(IncrementCounter, 5, (void*) (jobCounters + i));
		TEST_ASSERT(IsValid(jobs[i]));
	}
	wait_milliseconds(2);
	for (int i = 0; i < NUM_JOBS; i++) {
		freeJob(jobs[i]);
	}
	wait_milliseconds(7);
	for (int i = 0; i < NUM_JOBS; i++) {
		TEST_ASSERT_EQUAL_UINT32(0, jobCounters[i]);
	}
}
