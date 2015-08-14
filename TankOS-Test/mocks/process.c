
#include "process.h"
#include <unity.h>
#include <string.h>

#define MOCK Get(struct MockProcess, process)

ProcessBase mainProcess;
ProcessBase currentProcess;
unsigned int graveyard_entered;
unsigned int schedule_history_size;
ProcessBase schedule_history[MAX_HISTORY_SIZE];

void *mainMockProcessArgs = (void*) 0x4;
void mainMockProcessFunc() {}

void init_mock_process() {
    mainProcess = createProcessBase(&mainMockProcessFunc, mainMockProcessArgs, __default_stack_size);
    currentProcess = mainProcess;
    graveyard_entered = 0;
    schedule_history_size = 0;
    memset(schedule_history, 0, sizeof(schedule_history));
}

void destroy_mock_process() {
    currentProcess = destroyProcessBase(currentProcess);
}

MockProcess getMockProcess(ProcessBase process) {
    return MOCK;
}

ProcessBase getCurrentProcessBase() {
    return currentProcess;
}

ProcessBase createProcessBase(ProcessEntryPoint entryPoint, void *processArgument, uint16_t stackSize) {
    MockProcess process = malloc(sizeof(struct MockProcess));
    if (!process) return Invalid(ProcessBase);
    process->entryPoint = entryPoint;
    process->processArgument = processArgument;
    process->stackSize = stackSize;
    process->destroyed = FALSE;
    process->extra = NULL;
    process->scheduled = 0;
    process->stackTop = malloc(stackSize);
    process->stackPointer = process->stackTop - INITIAL_STACK_SIZE;
    return As(ProcessBase, process);
}

ProcessBase destroyProcessBase(ProcessBase process) {
    TEST_ASSERT_TRUE(IsValid(process));
    MOCK->destroyed = TRUE;
    return Invalid(ProcessBase);
}

void switchProcessBase(ProcessBase process) {
    TEST_ASSERT_TRUE(IsValid(process));
    if (schedule_history_size >= MAX_HISTORY_SIZE) {
        TEST_FAIL_MESSAGE("Schedule history in mock process exceeded reserved size.");
    }
    MOCK->scheduled++;
    schedule_history[schedule_history_size] = process;
    schedule_history_size++;
    currentProcess = process;
}

void setProcessBaseExtra(ProcessBase process, void *extra) {
    TEST_ASSERT_TRUE(IsValid(process));
    MOCK->extra = extra;
}

void *getProcessBaseExtra(ProcessBase process) {
    TEST_ASSERT_TRUE(IsValid(process));
    return MOCK->extra;
}

void *getProcessBaseStackTop(ProcessBase process, uint16_t stackSize) {
    TEST_ASSERT_TRUE(IsValid(process));
    TEST_ASSERT_EQUAL_MESSAGE(MOCK->stackSize, stackSize, "Wrong stackSize passwd into getProcessBaseStackTop");
    return MOCK->stackTop;
}

void *getStackPointer(ProcessBase process) {
    TEST_ASSERT_TRUE(IsValid(process));
    return MOCK->stackPointer;
}

void ProcessGraveyard() {
    graveyard_entered++;
}
