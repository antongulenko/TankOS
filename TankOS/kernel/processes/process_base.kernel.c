/*
 * Created: 03.02.2012 16:50:36
 *  Author: Anton
 */

#include <kernel/kernel_init.h>
#include <misc/idle.h>

#include "process_base.h"
#include "process_internal.h"
#include "scheduler_internal.h"

Process __current_process = ConstantInvalid(Process);

// Default stack size for newly created processes, if not otherwise given. Also stack size for autom. created main-process.
// This should only be modified by kernel-modules during initialization.
uint16_t __default_stack_size = 512;

// Additional memory reserved when automatically creating the main-process.
// This should only be modified by kernel-modules during initialization.
uint8_t __main_process_additional_memory = 0;

static Process initializeProcessInternal(uint8_t additionalMemory, void *stackPointer) {
	PPCB process = (PPCB) calloc(1, sizeof(PCB) + additionalMemory);
	if (!process) { return Invalid(Process); }
	process->stackPointer = stackPointer;
	return As(Process, process);
}

// This is no KERNEL_INIT-function, has to be called explicitly from somewhere else.
void init_process() {
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
	__current_process = initializeProcessInternal(__main_process_additional_memory, NULL);
}
#ifndef SKIP_PROCESS_INIT
KERNEL_INIT(init_process)
#endif

// The address of this function is pushed on the very bottom of the stack of new allocated processes.
// If the actual process-entry-point returns, it will execute a "ret"-instruction, which will branch here.
// The first created process is an exception, as it uses the initial stack; we use gcc's .fini1 section
// to make the main-process end up here as well (see below).
// If a process ends up here without any scheduler set up, nothing will happen anymore.
// The watchdog-timer can detect such a condition.
void ProcessGraveyard() {
	processor_loop_idle();
}

Process createProcess3(ProcessEntryPoint entryPoint, void *parameter, uint16_t stackSize, uint8_t additionalMem) {
	// Allocate stack-memory and set the stack-pointer.
	// The stack-pointer of the new process is the end of the allocated block,
	// because the stack grows in opposite direction as the allocation.
	// 2 and sizeof(PCB) are subtracted because there is an initial context pushed there.
	uint8_t *stackTop = (uint8_t*) calloc(stackSize, sizeof(uint8_t));
	if (!stackTop) { return Invalid(Process); }
	uint8_t *stackBottom = stackTop + stackSize - 1;
	// "Push" the address of the ProcessGraveyard and the actual entryPoint
	*(stackBottom - 0) = LOBYTE((uint16_t) ProcessGraveyard);
	*(stackBottom - 1) = HIBYTE((uint16_t) ProcessGraveyard);
	*(stackBottom - 2) = LOBYTE((uint16_t) entryPoint);
	*(stackBottom - 3) = HIBYTE((uint16_t) entryPoint);

	Process result = initializeProcessInternal(additionalMem, (void*) (stackBottom - INITIAL_STACK_SIZE));
	if (!IsValid(result)) { free(stackTop); return Invalid(Process); }

	// "Push" the process-parameter on r25 and r24, following GCCs calling convention.
	// 6 bytes are pushed on the initial stack below the first register r0
	if (!parameter) parameter = result.pointer;
	*(stackBottom - (6 + 24)) = LOBYTE((uint16_t) parameter);
	*(stackBottom - (6 + 25)) = HIBYTE((uint16_t) parameter);
	return result;
}

Process createProcess2(ProcessEntryPoint entryPoint, void *parameter) {
	return createProcess3(entryPoint, parameter, __default_stack_size, 0);
}

Process createProcess(ProcessEntryPoint entryPoint) {
	return createProcess2(entryPoint, NULL);
}

// This method is naked, so that gcc does not save any registers at the beginning.
// With optimizations, it would suffice to avoid calling other functions in here,
// but without optimizations some register-storing code can only be avoided this way.
void switchContext(PPCB oldProcess, PPCB newProcess) __attribute__((naked));
void switchContext(PPCB oldProcess, PPCB newProcess) {
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

inline Process getCurrentProcess() {
	return (Process) __current_process;
}

void switchProcess(Process newProcess) {
	Process oldCurrentProcess = __current_process;
	__current_process = newProcess;
	switchContext((PPCB) oldCurrentProcess.pointer, (PPCB) newProcess.pointer);
}

void *getProcessMemory(Process proc) {
	return proc.pointer + sizeof(PCB);
}
