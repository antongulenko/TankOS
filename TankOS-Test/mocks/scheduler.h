#ifndef _SCHEDULER_MOCKS_TEST_
#define _SCHEDULER_MOCKS_TEST_

#include <process/process_base.h>

void init_test_scheduler();

#define EXPECTED_SCHEDULE_SIZE 500
extern ProcessBase expected_schedule[EXPECTED_SCHEDULE_SIZE];
extern unsigned int expected_schedule_length;

void expect_schedule(ProcessBase process); // Add to expected_schedule

void run_scheduler_test(ProcessBase (*schedule)(BOOL fromTimer), BOOL fromTimer);

#endif
