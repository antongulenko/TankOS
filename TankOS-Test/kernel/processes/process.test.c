
#include <mocks/process.h>
#include <kernel/processes/process.h>
#include <unity.h>

void doDestroy(Process p);

void setUp() {
    __default_stack_size = 300;
    init_native_simulation();
    init_mock_process();
    init_processes();
}

void tearDown() {
    doDestroy(getCurrentProcess());
    destroy_mock_process();
}

void someEntryFunction() {}
void someParamedEntryFunction(void *param) {}
void *someProcessParameter = (void*) 0xbb;

void compareProcess(Process p, MockProcess m) {
    TEST_ASSERT_TRUE_MESSAGE(IsValid(p), "Process is not valid.");
    TEST_ASSERT_TRUE_MESSAGE(IsValid(getProcessBase(p)), "ProcessBase is not valid.");
    TEST_ASSERT_NOT_NULL_MESSAGE(m, "MockProcess is NULL");
    TEST_ASSERT_FALSE_MESSAGE(m->destroyed, "Process already destroyed...");
    TEST_ASSERT_EQUAL_MESSAGE(m, getMockProcess(getProcessBase(p)), "Wrong result from getProcessBase.");
    TEST_ASSERT_EQUAL_MESSAGE(__default_stack_size, getProcessStackSize(p), "Wrong stack size.");
    TEST_ASSERT_EQUAL_MESSAGE(m->stackSize, getProcessStackSize(p), "Wrong result from getProcessStackSize.");
    TEST_ASSERT_EQUAL_MESSAGE(m->extra, p.pointer, "Wrong Process pointer.");
    if (Equal(getProcessBase(p), mainProcess)) {
        TEST_ASSERT_EQUAL_MESSAGE(mainMockProcessFunc, m->entryPoint, "Wrong main Process entry point.");
        TEST_ASSERT_EQUAL_MESSAGE(mainMockProcessArgs, m->processArgument, "Wrong main Process parameters.");
    } else {
        if (m->entryPoint == &someEntryFunction) {
            TEST_ASSERT_EQUAL_MESSAGE(NULL, m->processArgument, "Wrong Process parameters.");
        } else if (m->entryPoint == &someParamedEntryFunction) {
            TEST_ASSERT_EQUAL_MESSAGE(someProcessParameter, m->processArgument, "Wrong Process parameters.");
        } else {
            TEST_FAIL_MESSAGE("Wrong process entry point function.");
        }
    }
}

void doDestroy(Process p) {
    ProcessBase base = getProcessBase(p);
    MockProcess mock = getMockProcess(base);
    Process destroyed = destroyProcess(p);
    if (Equal(base, currentProcess)) {
        TEST_ASSERT_TRUE_MESSAGE(IsValid(destroyed), "current process should not be destroyed.");
        TEST_ASSERT_FALSE_MESSAGE(mock->destroyed, "current process should not be destroyed.");
    } else {
        TEST_ASSERT_FALSE_MESSAGE(IsValid(destroyed), "destroyed process still valid.");
        TEST_ASSERT_TRUE_MESSAGE(mock->destroyed, "process was not destroyed.");
    }
}

void test_getCurrentProcess() {
    compareProcess(getCurrentProcess(), getMockProcess(mainProcess));
}

void test_createProcess() {
    Process p = createProcess(&someEntryFunction);
    compareProcess(p, getMockProcess(getProcessBase(p)));
    doDestroy(p);
}

void test_createProcess2() {
    Process p = createProcess2(&someParamedEntryFunction, someProcessParameter);
    compareProcess(p, getMockProcess(getProcessBase(p)));
    doDestroy(p);
}

void test_createProcess3() {
    Process p = createProcess3(&someParamedEntryFunction, someProcessParameter, __default_stack_size);
    compareProcess(p, getMockProcess(getProcessBase(p)));
    doDestroy(p);
}

void test_processExtra() {
    void *extra = (void*) 0x3d;
    setProcessExtra(getCurrentProcess(), extra);
    TEST_ASSERT_EQUAL_MESSAGE(extra, getProcessExtra(getCurrentProcess()), "wrong extra pointer returned!");
    TEST_ASSERT_TRUE_MESSAGE(Equal(getCurrentProcess(), As(Process, getProcessBaseExtra(currentProcess))), "processbase-extra changed by setProcessExtra.");
}

void test_processNumber() {
    Process p1 = createProcess(someEntryFunction);
    Process p2 = createProcess(someEntryFunction);
    Process p3 = createProcess(someEntryFunction);

    TEST_ASSERT_EQUAL(0, getProcessNumber(getCurrentProcess()));
    TEST_ASSERT_EQUAL(1, getProcessNumber(p1));
    TEST_ASSERT_EQUAL(2, getProcessNumber(p2));
    TEST_ASSERT_EQUAL(3, getProcessNumber(p3));

    doDestroy(p1);
    doDestroy(p2);
    doDestroy(p3);
}

void test_switchProcess() {
    Process p = createProcess(someEntryFunction);
    Process previous = getCurrentProcess();
    TEST_ASSERT_FALSE_MESSAGE(Equal(p, getCurrentProcess()), "new process already set to current process??");
    switchProcess(p);
    TEST_ASSERT_TRUE_MESSAGE(Equal(p, getCurrentProcess()), "process not switched.");
    switchProcess(previous);
    TEST_ASSERT_TRUE_MESSAGE(Equal(previous, getCurrentProcess()), "process not switched back.");
}
