/*
 * Created: 03.02.2012 16:50:36
 *  Author: Anton
 */

#include <tank_os_common.h>
#include <misc/idle.h>
#include <kernel/processes/process_base.h>
#include "context_switch.h"

// The number of bytes initially pushed on the stack of a newly created process.
#define INITIAL_STACK_SIZE (CONTEXT_STACK_SIZE + 4)

// Process Control Block structure
typedef struct PCB {
	void *stackPointer; // one-word stack-pointer
    void *extra; // one extra pointer for extensions
	// The rest of the context will simply be pushed on the stack.
	// The stack-pointer is therefore enough to restore the context.
} *PCB;

#define PROCESS Get(struct PCB, process)

ProcessBase __current_process = ConstantInvalid(ProcessBase);

static ProcessBase initializeProcessInternal(void *stackPointer) {
	PCB process = malloc(sizeof(struct PCB));
	if (!process) { return Invalid(ProcessBase); }
	process->stackPointer = stackPointer;
    process->extra = NULL;
	return As(ProcessBase, process);
}

void init_avr_process_base() {
	// Initialize the malloc-tunables. This tells malloc to ignore the stack-pointer when
	// allocating memory (otherwise it would attempt to detect heap-stack-collisions).
	// When using multiple processes, we have multiple stacks and this collision-detection
	// is therefore not usable. Malloc can use the whole heap, except for the stack of the
	// first running process, which is at the end of the usable RAM.
	// As expected, you really have to think about what stack sizes you choose...
	__malloc_heap_end = (void*) (RAMEND - __default_stack_size);
	__malloc_margin = 0;

	// The stack-pointer is left to zero, because this process-structure will be stored
	// into, before it will be restored again.
	__current_process = initializeProcessInternal(NULL);
}

// The address of this function is pushed on the very bottom of the stack of new allocated processes.
// If the actual process-entry-point returns, it will execute a "ret"-instruction, which will branch here.
// The first created process is an exception, as it uses the initial stack; we use gcc's .fini1 section
// to make the main-process end up here as well (see below).
// If a process ends up here without any scheduler set up, nothing will happen anymore.
// The watchdog-timer can detect such a condition.
void ProcessGraveyard() {
	processor_loop_idle();
}

ProcessBase createProcessBase(ProcessEntryPoint entryPoint, void *parameter, uint16_t stackSize) {
	// Allocate stack-memory and set the stack-pointer.
	// The stack-pointer of the new process is the end of the allocated block,
	// because the stack grows in opposite direction as the allocation.
	// 2 and sizeof(struct PCB) are subtracted because there is an initial context pushed there.
	uint8_t *stackTop = (uint8_t*) calloc(stackSize, sizeof(uint8_t));
	if (!stackTop) { return Invalid(ProcessBase); }
	uint8_t *stackBottom = stackTop + stackSize - 1;
	// "Push" the address of the ProcessGraveyard and the actual entryPoint
	*(stackBottom - 0) = LOBYTE((uint16_t) ProcessGraveyard);
	*(stackBottom - 1) = HIBYTE((uint16_t) ProcessGraveyard);
	*(stackBottom - 2) = LOBYTE((uint16_t) entryPoint);
	*(stackBottom - 3) = HIBYTE((uint16_t) entryPoint);

	ProcessBase result = initializeProcessInternal((void*) (stackBottom - INITIAL_STACK_SIZE));
	if (!IsValid(result)) { free(stackTop); return Invalid(ProcessBase); }

	// "Push" the process-parameter on r25 and r24, following GCCs calling convention.
	// 6 bytes are pushed on the initial stack below the first register r0
	if (!parameter) parameter = result.pointer;
	*(stackBottom - (6 + 24)) = LOBYTE((uint16_t) parameter);
	*(stackBottom - (6 + 25)) = HIBYTE((uint16_t) parameter);
	return result;
}

ProcessBase destroyProcessBase(ProcessBase process) {
    if (IsValid(process)) {
        free(PROCESS);
    }
    return Invalid(ProcessBase);
}

void *getProcessBaseStackTop(ProcessBase process, uint16_t stackSize) {
    // A little hacky, but at least no magic numbers here.
    return PROCESS->stackPointer + INITIAL_STACK_SIZE - stackSize + 1;
}

void *getStackPointer(ProcessBase process) {
    return PROCESS->stackPointer;
}

// With optimizations, it would suffice to avoid calling other functions in here,
// but without optimizations some register-storing code can only be avoided this way.
static void switchContext(PCB oldProcess, PCB newProcess) __attribute__((naked));
static void switchContext(PCB oldProcess, PCB newProcess) {
	PushProcessContext()
	asm volatile("movw r26, r24"); // Place oldProcess in the X-register
	StoreContextStack()
	asm volatile("movw r26, r22"); // Place newProcess in the X-register
	RestoreContextStack()
	PopProcessContext()

	sei();
	// Enable interrupts here, since we don't have the reti-instruction at the end.
	// Most likely interrupts would be disabled otherwise, since the status-register is stored in the
	// timer-ISR, while interrupts are still disabled.

	asm volatile("ret");
}

inline ProcessBase getCurrentProcessBase() {
	return (ProcessBase) __current_process;
}

void switchProcessBase(ProcessBase newProcess) {
	ProcessBase oldCurrentProcess = __current_process;
	__current_process = newProcess;
	switchContext(Get(struct PCB, oldCurrentProcess), Get(struct PCB, newProcess));
}

void setProcessBaseExtra(ProcessBase process, void *extra) {
    if (!IsValid(process)) return;
    PROCESS->extra = extra;
}

void *getProcessBaseExtra(ProcessBase process) {
    if (!IsValid(process)) return NULL;
    return PROCESS->extra;
}
