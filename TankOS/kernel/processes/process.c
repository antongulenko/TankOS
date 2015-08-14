/*
 * Created: 15.02.2012 20:22:31
 *  Author: Anton
 */

#include "process.h"

uint16_t __default_stack_size = 512;
uint16_t __nextProcessNumber = 0;

typedef struct _Process {
    ProcessBase base;
	uint16_t processNumber;
	uint16_t stackSize;
    void *extra;

	// The pointer to the stack-buffer for this process. Needed for destroyProcess().
	void *stackTop;
} *_Process;

#define PROCESS Get(struct _Process, process)

static _Process internalCreateProcess(ProcessBase base, void *processArgument, uint16_t stackSize, void *stackTop) {
    _Process process = malloc(sizeof(struct _Process));
    if (!process) return NULL;
	process->processNumber = __nextProcessNumber++;
	process->stackSize = stackSize;
	process->stackTop = stackTop;
    process->extra = NULL;
    process->base = base;
    setProcessBaseExtra(base, (void*) process);
    return process;
}

Process createProcess3(ProcessEntryPoint entryPoint, void *processArgument, uint16_t stackSize) {
	ProcessBase base = createProcessBase(entryPoint, processArgument, stackSize);
    if (!IsValid(base)) return Invalid(Process);
    _Process process = internalCreateProcess(base, processArgument, stackSize, getProcessBaseStackTop(base, stackSize));
    if (!process) {
        destroyProcessBase(base);
        return Invalid(Process);
    }
	return As(Process, process);
}

Process createProcess2(ProcessEntryPoint entryPoint, void *processArgument) {
	return createProcess3(entryPoint, processArgument, __default_stack_size);
}

Process createProcess(ProcessEntryPoint entryPoint) {
	return createProcess2(entryPoint, NULL);
}

Process destroyProcess(Process process) {
    if (IsValid(process)) {
        if (Equal(process, getCurrentProcess())) return process;
        _Process p = PROCESS;
        if (p->processNumber != 0 && p->stackTop) { // Dont free intial stack.
            free(p->stackTop);
        }
        destroyProcessBase(p->base); // Ignore result
        free(p);
    }
    return Invalid(Process);
}

Process getCurrentProcess() {
    ProcessBase base = getCurrentProcessBase();
    if (!IsValid(base)) return Invalid(Process);
    return As(Process, getProcessBaseExtra(base));
}

uint16_t getProcessStackSize(Process process) {
    if (!IsValid(process)) return 0;
	return PROCESS->stackSize;
}

uint16_t getFreeProcessStackSize(Process process) {
    if (!IsValid(process)) return 0;
	return (uint16_t) (PROCESS->stackTop - getStackPointer(PROCESS->base));
}

uint16_t getProcessNumber(Process process) {
    if (!IsValid(process)) return 0;
	return PROCESS->processNumber;
}

void setProcessExtra(Process process, void *extra) {
    if (!IsValid(process)) return;
    PROCESS->extra = extra;
}

void *getProcessExtra(Process process) {
    if (!IsValid(process)) return NULL;
    return PROCESS->extra;
}

void switchProcess(Process process) {
    if (!IsValid(process)) return;
    switchProcessBase(PROCESS->base);
}

ProcessBase getProcessBase(Process process) {
    if (!IsValid(process)) return Invalid(ProcessBase);
    return PROCESS->base;
}

// This should be called as late as possible, but before starting any scheduler.
void init_processes() {
    __nextProcessNumber = 0;
    ProcessBase base = getCurrentProcessBase();
    if (!IsValid(base)) return;
    // TODO MALLOC_END is platform specific
    internalCreateProcess(base, NULL, __default_stack_size, (void*) MALLOC_END);
}
