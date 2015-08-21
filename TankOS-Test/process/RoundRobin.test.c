
#include <tank_os_common.h>
#include <mocks/scheduler.h>
#include <mocks/process.h>
#include <unity.h>
#include <process/process.h>
#include <process/RoundRobin/scheduler.h>
#include <string.h>

void ThreadEntry() {}

void setUp() {
    init_mock_process();
    init_test_scheduler();
    init_processes();
    init_round_robin_scheduler();
    rr_captureMainThread(PrioNormal);
}

void tearDown() {
    destroy_mock_process();
}

static MockProcess mockProcess(Thread thread) {
    Process p = getThreadProcess(thread);
    ProcessBase b = getProcessBase(p);
    return getMockProcess(b);
}

void run_rr_schedule_test() {
    run_scheduler_test(rr_schedule, FALSE);
    run_scheduler_test(rr_schedule, TRUE);
}

Thread makeThread(ThreadPriority prio) {
    Thread t = newThread(prio, createProcess(ThreadEntry));
    TEST_ASSERT_TRUE_MESSAGE(IsValid(t), "Thread is not valid");
    TEST_ASSERT_EQUAL_MESSAGE(prio, getThreadPriority(t), "Thread has wrong priority");
    return t;
}

void test_rr_main_process() {
    Thread t = getCurrentThread();
    TEST_ASSERT_EQUAL_MESSAGE(PrioNormal, getThreadPriority(t), "Main thread has wrong priority");
}

void test_rr_schedule_single() {
    ProcessBase current = getCurrentProcessBase();
    expect_schedule(current);
    expect_schedule(current);
    expect_schedule(current);
    run_rr_schedule_test();
}

void test_rr_schedule_higher_prio() {
    Thread higherThread = makeThread(PrioAboveNormal);
    ProcessBase higher = getProcessBase(getThreadProcess(higherThread));
    expect_schedule(higher);
    expect_schedule(higher);
    expect_schedule(higher);
    run_rr_schedule_test();
}

void test_rr_schedule_higher_prio2() {
    makeThread(PrioAboveNormal);
    makeThread(PrioBelowNormal);
    makeThread(PrioHigh);
    makeThread(PrioLowest);
    Thread higherThread = makeThread(PrioHighest);
    ProcessBase higher = getProcessBase(getThreadProcess(higherThread));
    expect_schedule(higher);
    expect_schedule(higher);
    expect_schedule(higher);
    run_rr_schedule_test();
}

void test_rr_schedule_lower_prio() {
    makeThread(PrioBelowNormal);
    ProcessBase current = getCurrentProcessBase();
    expect_schedule(current);
    expect_schedule(current);
    expect_schedule(current);
    run_rr_schedule_test();
}

void test_rr_schedule_three_equal() {
    ProcessBase p1 = getCurrentProcessBase();
    Thread t2 = makeThread(PrioNormal);
    Thread t3 = makeThread(PrioNormal);
    ProcessBase p2 = getProcessBase(getThreadProcess(t2));
    ProcessBase p3 = getProcessBase(getThreadProcess(t3));
    ProcessBase sched[] = { p3, p2, p1, p3, p2, p1, p3, p2, p1, p3, p2, p1 };
    memcpy(expected_schedule, sched, sizeof(sched));
    expected_schedule_length = 12;
    run_rr_schedule_test();
}

void test_rr_add_after_schedule() {
    // First run with two threads
    ProcessBase p1 = getCurrentProcessBase();
    Thread t2 = makeThread(PrioNormal);
    ProcessBase p2 = getProcessBase(getThreadProcess(t2));
    ProcessBase sched[] = { p2, p1, p2, p1 };
    memcpy(expected_schedule, sched, sizeof(sched));
    expected_schedule_length = 4;
    run_rr_schedule_test();

    // Then add one additional thread
    Thread t3 = makeThread(PrioNormal);
    ProcessBase p3 = getProcessBase(getThreadProcess(t3));
    ProcessBase sched2[] = { p3, p2, p1, p3, p2, p1, p3, p2, p1 };
    memcpy(expected_schedule, sched2, sizeof(sched2));
    expected_schedule_length = 9;
    run_rr_schedule_test();
}

void test_destroy_thread_current() {
    MockProcess mock = getMockProcess(getCurrentProcessBase());
    Thread notDestroyed = destroyThread(getCurrentThread());
    TEST_ASSERT_TRUE_MESSAGE(IsValid(notDestroyed), "current thread should not be destroyed");
    TEST_ASSERT_FALSE_MESSAGE(mock->destroyed, "current thread was destroyed");
}

void test_destroy_thread() {
    Thread t = makeThread(PrioNormal);
    MockProcess mock = mockProcess(t);
    t = destroyThread(t);
    TEST_ASSERT_FALSE_MESSAGE(IsValid(t), "thread still valid after destroy");
    TEST_ASSERT_TRUE_MESSAGE(mock->destroyed, "thread was not destroyed");
    ProcessBase current = getCurrentProcessBase();
    expect_schedule(current);
    expect_schedule(current);
    run_rr_schedule_test();
}

void test_destroy_higher_thread() {
    Thread t = makeThread(PrioHigh);
    MockProcess mock = mockProcess(t);
    t = destroyThread(t);
    TEST_ASSERT_FALSE_MESSAGE(IsValid(t), "thread still valid after destroy");
    TEST_ASSERT_TRUE_MESSAGE(mock->destroyed, "thread was not destroyed");
    ProcessBase current = getCurrentProcessBase();
    expect_schedule(current);
    expect_schedule(current);
    run_rr_schedule_test();
}

void test_destroy_lower_thread() {
    Thread t = makeThread(PrioLow);
    MockProcess mock = mockProcess(t);
    t = destroyThread(t);
    TEST_ASSERT_FALSE_MESSAGE(IsValid(t), "thread still valid after destroy");
    TEST_ASSERT_TRUE_MESSAGE(mock->destroyed, "thread was not destroyed");
    ProcessBase current = getCurrentProcessBase();
    expect_schedule(current);
    expect_schedule(current);
    run_rr_schedule_test();
}
