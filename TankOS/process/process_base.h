/*
 * Created: 03.02.2012 16:37:49
 *  Author: Anton
 */

#ifndef PROCESS_BASE_API_H_
#define PROCESS_BASE_API_H_

// The API in this header is implemented in:
// - process/avr/
// - native_simulation/

#include <tank_os_common.h>

DEFINE_HANDLE(ProcessBase);

// Default stack size for newly created processes, if not otherwise given. Also stack size for autom. created main-process.
// This should only be modified by kernel-modules during initialization.
extern uint16_t __default_stack_size;

// The processArgument is optional. See createProcess2. Work around the compiler (ignore it),
// if you do define the parameter and it complains, that the signature does not match this one.
typedef void (*ProcessEntryPoint)(/* void *processArgument */);

// Returns the currently active Process.
ProcessBase getCurrentProcessBase();

// Create a process with a given stack-size allocated for the execution inside the process.
// The value is given in bytes.
// additionalMemory bytes will be allocated per process-control-structure for application-usage.
// The getProcessMemory() function returns a pointer to this additional memory block.
ProcessBase createProcessBase(ProcessEntryPoint entryPoint, void *processArgument, uint16_t stackSize);

// his does not free the stack of the process!
ProcessBase destroyProcessBase(ProcessBase process);

// Switch context to newProcess.
// This call will only return, if another Process switches back to the current Process.
// This should not be used, if a dedicated scheduler is used, the result can be undefined.
void switchProcessBase(ProcessBase newProcess);

// Associate one pointer to the ProcessBase in order to extend the ProcessBase functionality.
void setProcessBaseExtra(ProcessBase process, void *extra);
void *getProcessBaseExtra(ProcessBase process);

// Helper method for processes/process.c. Called immediately after creating a ProcessBase, returns the
// address of the stack allocated for the process.
void *getProcessBaseStackTop(ProcessBase process, uint16_t stackSize);
void *getStackPointer(ProcessBase process);

// Function for functionless processes. Infinitely sets the processor in idle-mode.
void ProcessGraveyard();

#endif /* PROCESS_BASE_API_H_ */
