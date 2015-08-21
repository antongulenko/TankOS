
#include "scheduler.h"
#include <unity.h>
#include <stdio.h>
#include <string.h>

ProcessBase expected_schedule[EXPECTED_SCHEDULE_SIZE];
unsigned int expected_schedule_length;

void init_test_scheduler() {
    memset(&expected_schedule, 0, sizeof(expected_schedule));
    expected_schedule_length = 0;
}

void expect_schedule(ProcessBase process) {
    if (expected_schedule_length >= EXPECTED_SCHEDULE_SIZE)
        TEST_FAIL_MESSAGE("Too many expected scheduled processes");
    expected_schedule[expected_schedule_length] = process;
    expected_schedule_length++;
}

void run_scheduler_test(ProcessBase (*schedule)(BOOL fromTimer), BOOL fromTimer) {
    for (int i = 0; i < expected_schedule_length; i++) {
        ProcessBase scheduled = schedule(fromTimer);
        ProcessBase expected = expected_schedule[i];
        char message[] = "Wrong process scheduled on quantum nr. XXX";
        snprintf(message, strlen(message), "Wrong process scheduled on quantum nr. %i", i);
        TEST_ASSERT_EQUAL_PTR_MESSAGE(expected.pointer, scheduled.pointer, message);
    }
}
