#ifndef _MOCK_PROCESS_H_
#define _MOCK_PROCESS_H_

#include <process/process_base.h>

typedef struct MockProcess {
    uint16_t stackSize;
    void *processArgument;
    ProcessEntryPoint entryPoint;
    BOOL destroyed;
    void *extra;
    unsigned int scheduled;
    void *stackTop;
    void *stackPointer;
} *MockProcess;

void init_mock_process();
void destroy_mock_process();

ProcessBase mainProcess;
ProcessBase currentProcess;

unsigned int graveyard_entered;

#define MAX_HISTORY_SIZE 50
unsigned int schedule_history_size;
ProcessBase schedule_history[MAX_HISTORY_SIZE];

MockProcess getMockProcess(ProcessBase base);

#define INITIAL_STACK_SIZE 100

extern void *mainMockProcessArgs;
void mainMockProcessFunc();

#endif // _MOCK_PROCESS_H_
