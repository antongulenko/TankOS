
#include <unity.h>

void test_DMS_jobsIncrementCounters_22ms();
void test_DMS_jobsStopIncrementing();

#pragma GCC diagnostic ignored "-Wunused-variable"

int main() {
	RUN_TEST(test_DMS_jobsIncrementCounters_22ms, 6);
	RUN_TEST(test_DMS_jobsStopIncrementing, 21);
	
	int fails = Unity.TestFailures;
	int total = Unity.NumberOfTests;
	int success = total - fails;
}
