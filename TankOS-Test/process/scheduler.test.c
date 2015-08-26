
#include <mocks/process.h>
#include <process/scheduler.h>
#include <unity.h>
#include <kernel/millisecond_clock.h>
#include <mocks/simulation.h>

BOOL returnInvalid = FALSE;
int expected = 0;
int steps = 0;
ProcessBase p1, p2;
void someEntryFunc() {}
BOOL expectedFromInterrupt;

void setUp() {
    returnInvalid = FALSE;
    expectedFromInterrupt = FALSE;
    expected = steps = 0;
    __default_stack_size = 300;
    init_native_simulation();
    init_mock_process();

    p1 = createProcessBase(someEntryFunc, NULL, 0);
    p2 = createProcessBase(someEntryFunc, NULL, 10);
}

void tearDown() {
    destroy_mock_process();

    TEST_ASSERT_EQUAL_MESSAGE(expected, steps, "schedule() was not called often enough");
    TEST_ASSERT_EQUAL_MESSAGE(expected, schedule_history_size, "Unexpected number of scheduled processes.");
    if (expected > 0) {
        ProcessBase expectedHistory[3] = { p1, p2, p1 };
        TEST_ASSERT_EQUAL_INT_ARRAY_MESSAGE(expectedHistory, schedule_history, expected, "Unexpected process scheduled.");
    }

    p1 = destroyProcessBase(p1);
    p2 = destroyProcessBase(p2);
}

ProcessBase schedule(BOOL fromInterrupt) {
    TEST_ASSERT_EQUAL_MESSAGE(expectedFromInterrupt, fromInterrupt, "Unexpected fromInterrupt value.");
    if (returnInvalid) return Invalid(ProcessBase);
    if (steps >= expected) {
        TEST_FAIL_MESSAGE("schedule() invoked too often.");
        return Invalid(ProcessBase);
    }
    steps++;
    if (steps % 2 == 0)
        return p2;
    else
        return p1;
}

void test_schedule_1() {
    expected = 1;
    schedule_next();
    TEST_ASSERT_TRUE_MESSAGE(Equal(p1, currentProcess), "wrong currentProcess");
}

void test_schedule_2() {
    expected = 2;
    schedule_next();
    TEST_ASSERT_TRUE_MESSAGE(Equal(p1, currentProcess), "wrong currentProcess");
    schedule_next();
    TEST_ASSERT_TRUE_MESSAGE(Equal(p2, currentProcess), "wrong currentProcess");
}

void test_schedule_3() {
    expected = 3;
    schedule_next();
    TEST_ASSERT_TRUE_MESSAGE(Equal(p1, currentProcess), "wrong currentProcess");
    schedule_next();
    TEST_ASSERT_TRUE_MESSAGE(Equal(p2, currentProcess), "wrong currentProcess");
    schedule_next();
    TEST_ASSERT_TRUE_MESSAGE(Equal(p1, currentProcess), "wrong currentProcess");
}

void test_invalid_schedule() {
    returnInvalid = TRUE;
    schedule_next();
    TEST_ASSERT_TRUE_MESSAGE(Equal(mainProcess, currentProcess), "invalid process scheduled");
}

extern BOOL yielding_quantum;

void test_interrupt_1() {
    yielding_quantum = TRUE;
    expectedFromInterrupt = TRUE;
    uint32_t millis = get_milliseconds_running();
    expected = 1;
    scheduler_interrupt();
    TEST_ASSERT_EQUAL_MESSAGE(millis + 1, get_milliseconds_running(), "Wrong millis value after scheduler interrupt.");
    TEST_ASSERT_TRUE_MESSAGE(Equal(p1, currentProcess), "wrong currentProcess");
    TEST_ASSERT_FALSE_MESSAGE(yielding_quantum, "yielding_quantum was not reset");
}

void test_interrupt_2() {
    expectedFromInterrupt = TRUE;
    uint32_t millis = get_milliseconds_running();
    expected = 2;
    scheduler_interrupt();
    TEST_ASSERT_EQUAL_MESSAGE(millis + 1, get_milliseconds_running(), "Wrong millis value after scheduler interrupt.");
    TEST_ASSERT_TRUE_MESSAGE(Equal(p1, currentProcess), "wrong currentProcess");
    scheduler_interrupt();
    TEST_ASSERT_EQUAL_MESSAGE(millis + 2, get_milliseconds_running(), "Wrong millis value after scheduler interrupt.");
    TEST_ASSERT_TRUE_MESSAGE(Equal(p2, currentProcess), "wrong currentProcess");
}

void test_interrupt_3() {
    expectedFromInterrupt = TRUE;
    uint32_t millis = get_milliseconds_running();
    expected = 3;
    scheduler_interrupt();
    TEST_ASSERT_EQUAL_MESSAGE(millis + 1, get_milliseconds_running(), "Wrong millis value after scheduler interrupt.");
    TEST_ASSERT_TRUE_MESSAGE(Equal(p1, currentProcess), "wrong currentProcess");
    scheduler_interrupt();
    TEST_ASSERT_EQUAL_MESSAGE(millis + 2, get_milliseconds_running(), "Wrong millis value after scheduler interrupt.");
    TEST_ASSERT_TRUE_MESSAGE(Equal(p2, currentProcess), "wrong currentProcess");
    scheduler_interrupt();
    TEST_ASSERT_EQUAL_MESSAGE(millis + 3, get_milliseconds_running(), "Wrong millis value after scheduler interrupt.");
    TEST_ASSERT_TRUE_MESSAGE(Equal(p1, currentProcess), "wrong currentProcess");
}

void test_invalid_interrupt() {
    expectedFromInterrupt = TRUE;
    returnInvalid = TRUE;
    scheduler_interrupt();
    TEST_ASSERT_TRUE_MESSAGE(Equal(mainProcess, currentProcess), "no new process should have been scheduled");
    TEST_ASSERT_TRUE_MESSAGE(hardware_reset_triggered, "hardware reset not triggered on invalid scheduler interrupt");
}

// TODO test yielding_quantum when processor_loop_idle is simulated.
