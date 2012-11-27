
#include <unity.h>

void test_DMS_jobsIncrementCounters_22ms();
void test_DMS_jobsStopIncrementing();

int main() {
	RUN_TEST(test_DMS_jobsIncrementCounters_22ms, 6);
	RUN_TEST(test_DMS_jobsStopIncrementing, 21);
}
