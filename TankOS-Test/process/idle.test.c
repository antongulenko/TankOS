
#include <mocks/scheduler.h>
#include <mocks/process.h>
#include <unity.h>
#include <process/idle/scheduler.h>

void setUp() {
    init_mock_process();
    init_processes();
    init_test_scheduler();
    init_idle_scheduler();
}

void tearDown() {
    destroy_mock_process();
}

void run_test_idle_schedule(BOOL fromTimer) {
    ProcessBase idle = idle_schedule(fromTimer);
    expect_schedule(idle);
    expect_schedule(idle);
    expect_schedule(idle);
    expect_schedule(idle);
    run_scheduler_test(idle_schedule, fromTimer);
}

void test_idle_process() {
    ProcessBase idleProcess = idle_schedule(FALSE);
    TEST_ASSERT_FALSE_MESSAGE(Equal(getCurrentProcessBase(), idleProcess), "Idle scheduler returned main process.");
    TEST_ASSERT_TRUE_MESSAGE(IsValid(idleProcess), "Idle process not valid.");
    MockProcess idle = getMockProcess(idleProcess);
    TEST_ASSERT_EQUAL_MESSAGE(ProcessGraveyard, idle->entryPoint, "idle process has wrong entry Point");
    TEST_ASSERT_NULL_MESSAGE(idle->processArgument, "idle process has wrong argument");
}

void test_idle_scheduler() {
    run_test_idle_schedule(FALSE);
}

void test_idle_scheduler_from_timer() {
    run_test_idle_schedule(TRUE);
}
