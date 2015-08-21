
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
    Process p = Cast(Process, thread);
    ProcessBase b = getProcessBase(p);
    return getMockProcess(b);
}

void run_rr_schedule_test() {
    run_scheduler_test(rr_schedule, FALSE);
    run_scheduler_test(rr_schedule, TRUE);
}

void test_rr_main_process() {
    Thread t = getCurrentThread();
    TEST_ASSERT_EQUAL_MESSAGE(PrioNormal, getThreadPriority(t), "Main thread has wrong priority");
}

void test_createThread() {
    Thread t = createThread(ThreadEntry);
    TEST_ASSERT_EQUAL_MESSAGE(PrioNormal, getThreadPriority(t), "createThread made wrong priority");
    MockProcess m = mockProcess(t);
    TEST_ASSERT_EQUAL_MESSAGE(ThreadEntry, m->entryPoint, "createThread made wrong entry point");
    TEST_ASSERT_NULL_MESSAGE(m->processArgument, "createThread made wrong thread argument");
}

void test_createThread2() {
    Thread t = createThread2(ThreadEntry, PrioHigh);
    TEST_ASSERT_EQUAL_MESSAGE(PrioHigh, getThreadPriority(t), "createThread2 made wrong priority");
    MockProcess m = mockProcess(t);
    TEST_ASSERT_EQUAL_MESSAGE(ThreadEntry, m->entryPoint, "createThread2 made wrong entry point");
    TEST_ASSERT_NULL_MESSAGE(m->processArgument, "createThread2 made wrong thread argument");
}

void test_createThread3() {
    Thread t = createThread3(ThreadEntry, PrioLow, (void*) 123);
    TEST_ASSERT_EQUAL_MESSAGE(PrioLow, getThreadPriority(t), "createThread3 made wrong priority");
    MockProcess m = mockProcess(t);
    TEST_ASSERT_EQUAL_MESSAGE(ThreadEntry, m->entryPoint, "createThread3 made wrong entry point");
    TEST_ASSERT_EQUAL_MESSAGE(123, m->processArgument, "createThread3 made wrong thread argument");
}

void test_createThread4() {
    Thread t = createThread4(ThreadEntry, PrioHighest, (void*) 123, 1000);
    TEST_ASSERT_EQUAL_MESSAGE(PrioHighest, getThreadPriority(t), "createThread4 made wrong priority");
    MockProcess m = mockProcess(t);
    TEST_ASSERT_EQUAL_MESSAGE(ThreadEntry, m->entryPoint, "createThread4 made wrong entry point");
    TEST_ASSERT_EQUAL_MESSAGE(123, m->processArgument, "createThread4 made wrong thread argument");
    TEST_ASSERT_EQUAL_MESSAGE(1000, m->stackSize, "createThread4 made wrong stackSize");
}

void test_rr_schedule_single() {
    ProcessBase current = getCurrentProcessBase();
    expect_schedule(current);
    expect_schedule(current);
    expect_schedule(current);
    run_rr_schedule_test();
}

void test_rr_schedule_higher_prio() {
    Thread higherThread = createThread2(ThreadEntry, PrioAboveNormal);
    ProcessBase higher = getProcessBase(Cast(Process, higherThread));
    expect_schedule(higher);
    expect_schedule(higher);
    expect_schedule(higher);
    run_rr_schedule_test();
}

void test_rr_schedule_higher_prio2() {
    createThread2(ThreadEntry, PrioAboveNormal);
    createThread2(ThreadEntry, PrioBelowNormal);
    createThread2(ThreadEntry, PrioHigh);
    createThread2(ThreadEntry, PrioLowest);
    Thread higherThread = createThread2(ThreadEntry, PrioHighest);
    ProcessBase higher = getProcessBase(Cast(Process, higherThread));
    expect_schedule(higher);
    expect_schedule(higher);
    expect_schedule(higher);
    run_rr_schedule_test();
}

void test_rr_schedule_lower_prio() {
    createThread2(ThreadEntry, PrioBelowNormal);
    ProcessBase current = getCurrentProcessBase();
    expect_schedule(current);
    expect_schedule(current);
    expect_schedule(current);
    run_rr_schedule_test();
}

void test_rr_schedule_three_equal() {
    ProcessBase p1 = getCurrentProcessBase();
    Thread t2 = createThread(ThreadEntry);
    Thread t3 = createThread(ThreadEntry);
    ProcessBase p2 = getProcessBase(Cast(Process, t2));
    ProcessBase p3 = getProcessBase(Cast(Process, t3));
    ProcessBase sched[] = { p3, p2, p1, p3, p2, p1, p3, p2, p1, p3, p2, p1 };
    memcpy(expected_schedule, sched, sizeof(sched));
    expected_schedule_length = 12;
    run_rr_schedule_test();
}

void test_rr_add_after_schedule() {
    // First run with two threads
    ProcessBase p1 = getCurrentProcessBase();
    Thread t2 = createThread(ThreadEntry);
    ProcessBase p2 = getProcessBase(Cast(Process, t2));
    ProcessBase sched[] = { p2, p1, p2, p1 };
    memcpy(expected_schedule, sched, sizeof(sched));
    expected_schedule_length = 4;
    run_rr_schedule_test();

    // Then add one additional thread
    Thread t3 = createThread(ThreadEntry);
    ProcessBase p3 = getProcessBase(Cast(Process, t3));
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
    Thread t = createThread(ThreadEntry);
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
    Thread t = createThread2(ThreadEntry, PrioHigh);
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
    Thread t = createThread2(ThreadEntry, PrioLow);
    MockProcess mock = mockProcess(t);
    t = destroyThread(t);
    TEST_ASSERT_FALSE_MESSAGE(IsValid(t), "thread still valid after destroy");
    TEST_ASSERT_TRUE_MESSAGE(mock->destroyed, "thread was not destroyed");
    ProcessBase current = getCurrentProcessBase();
    expect_schedule(current);
    expect_schedule(current);
    run_rr_schedule_test();
}
