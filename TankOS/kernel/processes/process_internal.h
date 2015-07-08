/*
 * process_internal.h
 *
 * Created: 03.02.2012 16:47:05
 *  Author: Anton
 */ 

#ifndef PROCESS_INTERNAL_H_
#define PROCESS_INTERNAL_H_

#include <tank_os_common.h>
#include "process_base.h"

extern uint16_t __default_stack_size;
extern uint8_t __main_process_additional_memory;

// Process Control Block structure
// This really just holds the context-data, no organization-data.
typedef struct {
	void *stackPointer; // one-word stack-pointer
	// The rest of the context will simply be pushed on the stack.
	// The stack-pointer is therefore enough to restore the context.
} PCB, *PPCB;

// The currently active process. Will be set to the first process before entering main(). Can be safely cast to PPCB.
extern Process __current_process;

// How the program counter (PC) is handled: 
// 1. context-switch after interrupt: before executing the ISR, the current PC is pushed onto
//		the current stack. Now the context is changed (including the stack-pointer) -> the reti-
//		instruction will pop the PC from the changed stack and return there.
// 2. manual context-switch: the PC will also be the last thing pushed onto the stack by the
//		caller-context of the switchProcess-function. Therefore, the rest of the context is pushed
//		directly on top of the PC. After restoring the context, a simple ret-instruction has to
//		be executed to pop the PC from the new stack.

// Store current context in oldProcess, restore newProcess afterwards.
// This only returns, if another process switches the context back to oldProcess.
void switchContext(PPCB oldProcess, PPCB newProcess);

// This is the number of bytes pushed by the PushProcessContext() macro
#define CONTEXT_STACK_SIZE 34

// The number of bytes initially pushed on the stack of a newly created process.
#define INITIAL_STACK_SIZE (CONTEXT_STACK_SIZE + 4)

// This macro pushes the current context onto the stack.
// Interrupts are disabled at the beginning of this macro and NOT re-enabled!
// The stack-pointer must be stored afterwards.
#define PushProcessContext()								\
asm volatile (												\
	"push r0				\n" /* Push r0 */				\
	"in r0, __SREG__		\n" /* Read status-register */	\
	"cli					\n" /* Disable interrupts */	\
	"push r0				\n" /* Push status-register */	\
	"in r0, __RAMPZ__		\n" /* Read Z extension */		\
	"push r0				\n" /* Push Z extension */		\
	"push r1				\n" /* Push other registers */	\
	"clr r1				\n"								\
	"push r2			\n"								\
	"push r3			\n"								\
	"push r4			\n"								\
	"push r5			\n"								\
	"push r6			\n"								\
	"push r7			\n"								\
	"push r8			\n"								\
	"push r9			\n"								\
	"push r10			\n"								\
	"push r11			\n"								\
	"push r12			\n"								\
	"push r13			\n"								\
	"push r14			\n"								\
	"push r15			\n"								\
	"push r16			\n"								\
	"push r17			\n"								\
	"push r18			\n"								\
	"push r19			\n"								\
	"push r20			\n"								\
	"push r21			\n"								\
	"push r22			\n"								\
	"push r23			\n"								\
	"push r24			\n"								\
	"push r25			\n"								\
	"push r26			\n"								\
	"push r27			\n"								\
	"push r28			\n"								\
	"push r29			\n"								\
	"push r30			\n"								\
	"push r31			\n"								\
);

// This macro has to be called after the context has been pushed onto the stack.
// The argument for this structure is the pointer to the PCB and is stored in the X-register (r26 + r27)
#define StoreContextStack()												\
asm volatile (															\
	"in r0, __SP_L__			\n"	/* Store stack-pointer into PCB */	\
	"st X+, r0					\n"										\
	"in r0, __SP_H__			\n"										\
	"st X+, r0					\n"										\
);

// This macro restores the stack-pointer for a new context.
// The argument for this structure is the pointer to the PCB and is stored in the X-register (r26 + r27)
#define RestoreContextStack()																	\
asm volatile(																					\
									/* Load first two bytes of PCB-structure. */				\
									/* These are the high and low byte of the stack-pointer */	\
	"ld r0, X+					\n"	/* Restore the stack-pointer */								\
	"out __SP_L__, r0			\n"																\
	"ld r0, X+					\n"																\
	"out __SP_H__, r0			\n"																\
);

// This macro must be called after the stack-pointer has been set up correctly for the new context.
// This will re-enable interrupts, if they were enabled in the restored context.
#define PopProcessContext()											\
asm volatile(														\
	"pop r31			\n" /* Pop general purpose registers */	\
	"pop r30			\n"										\
	"pop r29			\n"										\
	"pop r28			\n"										\
	"pop r27			\n"										\
	"pop r26			\n"										\
	"pop r25			\n"										\
	"pop r24			\n"										\
	"pop r23			\n"										\
	"pop r22			\n"										\
	"pop r21			\n"										\
	"pop r20			\n"										\
	"pop r19			\n"										\
	"pop r18			\n"										\
	"pop r17			\n"										\
	"pop r16			\n"										\
	"pop r15			\n"										\
	"pop r14			\n"										\
	"pop r13			\n"										\
	"pop r12			\n"										\
	"pop r11			\n"										\
	"pop r10			\n"										\
	"pop r9				\n"										\
	"pop r8				\n"										\
	"pop r7				\n"										\
	"pop r6				\n"										\
	"pop r5				\n"										\
	"pop r4				\n"										\
	"pop r3				\n"										\
	"pop r2				\n"										\
	"pop r1				\n"										\
																\
	"pop r0						\n" /* Pop Z-extension */										\
	"out __RAMPZ__, r0			\n" /* Restore Z-extension */									\
	"pop r0						\n" /* Pop status-register */									\
	"out __SREG__, r0			\n" /* Restore status-register */								\
									/* Interrupts will stay disabled for one more instruction */\
	"pop r0						\n" /* Pop r0 */												\
);

// Function for functionless processes. Infinitely sets the processor in idle-mode.
void ProcessGraveyard();

// Initialization function, should be called once from a kernel-module, right before
// interrupts are enabled.
void init_process();

#endif /* PROCESS_INTERNAL_H_ */