/*
 * Created: 15.02.2012 20:22:31
 *  Author: Anton
 */

#include "process.h"

uint16_t __default_stack_size = 512;
uint16_t __nextProcessNumber = 1;

typedef struct _Process {
    ProcessBase base;
	uint16_t processNumber;
	uint16_t stackSize;
    void *extra;

	// The pointer to the stack-buffer for this process. Needed for destroyProcess().
	void *stackTop;
} *_Process;

#define PROCESS Get(struct _Process, process)

inline _Process toProcess(ProcessBase base) {
    return (_Process) getProcessBaseExtra(base);
}

Process createProcess3(ProcessEntryPoint entryPoint, void *processArgument, uint16_t stackSize) {
	_Process process = malloc(sizeof(struct _Process));
    if (!process) return Invalid(Process);
    ProcessBase base = createProcessBase(entryPoint, processArgument, stackSize);
    if (!IsValid(base)) {
        free(process);
        return Invalid(Process);
    }
    setProcessBaseExtra(base, (void*) process);
	process->processNumber = __nextProcessNumber++;
	process->stackSize = stackSize;
	process->stackTop = getProcessBaseStackTop(base, stackSize);
    process->extra = NULL;
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
    return As(Process, toProcess(getCurrentProcessBase()));
}

uint8_t getProcessStackSize(Process process) {
	return PROCESS->stackSize;
}

uint16_t getFreeProcessStackSize(Process process) {
	return (uint16_t) (PROCESS->stackTop - getStackPointer(PROCESS->base));
}

uint16_t getProcessNumber(Process process) {
	return PROCESS->processNumber;
}

void setProcessExtra(Process process, void *extra) {
    PROCESS->extra = extra;
}

void *getProcessExtra(Process process) {
    return PROCESS->extra;
}

void switchProcess(Process process) {
    switchProcessBase(PROCESS->base);
}

ProcessBase getProcessBase(Process process) {
    return PROCESS->base;
}

// This should be called as late as possible, but before starting any scheduler.
void init_process() {
	_Process initialProcess = toProcess(getCurrentProcessBase());
	initialProcess->processNumber = 0;
	initialProcess->stackSize = __default_stack_size;
	initialProcess->stackTop = (void*) MALLOC_END; // TODO this is platform specific
}
