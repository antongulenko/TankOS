/*
 * Created: 15.02.2012 20:22:31
 *  Author: Anton
 */

// This kernel module includes the module process.kernel.c, so these two modules
// must not be linked together!

#include "process_ext.h"
#include "process_internal.h"

uint16_t __nextProcessNumber = 1;

// Additional memory appended to the Process-struct to enable the extended API.
typedef struct {
	uint16_t processNumber;
	uint16_t stackSize;

	// The pointer to the stack-buffer for this process. Needed for freeProcess().
	void *stackTop;
} PCBExt, *PPCBExt;

#define ADDITIONAL_MEMORY sizeof(PCBExt)

// Include the process.kernel module, but rename those functions in it, that are re-implemented
// in this extended module.
// This way, the process_ext.kernel module 'replaces' these functions with the
// extended versions.
#define createProcess createProcessBase
#define createProcess2 createProcessBase2
#define createProcess3 createProcessBase3
#define getProcessMemory getProcessMemoryBase
#define init_process init_process_base
#define SKIP_PROCESS_INIT
#include "process_base.kernel.c"
#undef SKIP_PROCESS_INIT
#undef createProcess
#undef createProcess2
#undef createProcess3
#undef getProcessMemory
#undef init_process

#define ProcMem(proc) ((PPCBExt) getProcessMemoryBase(Cast(Process, proc)))
#define StackPointer(proc) ((uint8_t*) ((PPCB) proc.pointer)->stackPointer)

Process createProcess3(ProcessEntryPoint entryPoint, void *processArgument, uint16_t stackSize, uint8_t additionalMemory) {
	Process proc = createProcessBase3(entryPoint, processArgument, stackSize, sizeof(PCBExt) + additionalMemory);
	if (!IsValid(proc)) return proc;
	PPCBExt ext = ProcMem(proc);
	ext->processNumber = __nextProcessNumber++;
	ext->stackSize = stackSize;
	ext->stackTop = StackPointer(proc) + INITIAL_STACK_SIZE - stackSize + 1; // A little hacky, but at least no magic numbers here.
	return proc;
}

Process createProcess2(ProcessEntryPoint entryPoint, void *processArgument) {
	return createProcess3(entryPoint, processArgument, __default_stack_size, 0);
}

Process createProcess(ProcessEntryPoint entryPoint) {
	return createProcess2(entryPoint, NULL);
}

void freeProcess(Process process) {
	if (Equal(process, getCurrentProcess())) return;
	PPCBExt pcb = ProcMem(process);
	if (pcb->processNumber != 0) { // Dont free intial stack.
		free(pcb->stackTop);
	}
	free(process.pointer);
}

uint8_t getProcessStackSize(Process process) {
	return ProcMem(process)->stackSize;
}

uint16_t getFreeProcessStackSize(Process process) {
	PPCBExt pcb = ProcMem(process);
	return (uint16_t) ((uint8_t*) pcb->stackTop - StackPointer(process));
}

uint16_t getProcessNumber(Process process) {
	return ProcMem(process)->processNumber;
}

void *getProcessMemory(Process proc) {
	return ((void*) ProcMem(proc)) + ADDITIONAL_MEMORY;
}

// Initialize the API in this header.
// This is not a KERNEL_INIT-function and has to be called explicitly. This includes initialization
// for the basic process-module.
// This should be called as late as possible, but before starting any scheduler.
void init_process() {
	// Incrementing this variable must be done before the process.kernel init-routine.
	// Other kernels would need to define a KERNEL_INIT function, but here we can just do it before the base-function.
	__main_process_additional_memory += ADDITIONAL_MEMORY;
	init_process_base();
	PPCBExt initialProcess = ProcMem(__current_process);
	initialProcess->processNumber = 0;
	initialProcess->stackSize = __default_stack_size;
	initialProcess->stackTop = __malloc_heap_end;
}
KERNEL_INIT(init_process)
