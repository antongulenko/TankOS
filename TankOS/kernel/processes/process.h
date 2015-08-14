/*
 * Created: 03.02.2012 16:37:49
 *  Author: Anton
 */

#ifndef PROCESS_API_H_
#define PROCESS_API_H_

#include <tank_os_common.h>
#include "process_base.h"

DEFINE_HANDLE(Process);

// Returns the currently active Process.
Process getCurrentProcess();

// Create a Process. It will not be executed or scheduled.
// The running Process can switch the context to another Process.
// This allows 'cooperative' multi-tasking.
// Invalid(Process) is returned, if not enough memory could be allocated to create the process.
// The macro DEFAULT_STACK_SIZE determines the stack size, which processes created here will have.
// It also determines the stack size of the first main-process. If not defined beforehand,
// it will be defined as 512 by default.
Process createProcess(ProcessEntryPoint entryPoint);

// The processArgument pointer will be passed as argument when the process starts.
// The process-entry-point does not have to define the parameter.
// If it does not define it, and processArgument is given, it will be ignored.
// If it defines it, and processArgument is not given (or is given as NULL), it will
// receive a pointer to the process itself.
Process createProcess2(ProcessEntryPoint entryPoint, void *processArgument);

// Create a process with a given stack-size allocated for the execution inside the process.
// The value is given in bytes.
// additionalMemory bytes will be allocated per process-control-structure for application-usage.
// The getProcessMemory() function returns a pointer to this additional memory block.
Process createProcess3(ProcessEntryPoint entryPoint, void *processArgument, uint16_t stackSize);

// Associate one pointer to the Process in order to extend the Process functionality.
void setProcessExtra(Process process, void *extra);
void *getProcessExtra(Process process);

// Switch context to newProcess.
// This call will only return, if another Process switches back to the current Process.
// This should not be used, if a dedicated scheduler is used, the result can be undefined.
void switchProcess(Process newProcess);

// Return the number of bytes available on the stack for process.
uint8_t getProcessStackSize(Process process);

// Return, how many bytes are left on the allocated stack for the process.
// The value is calculated from the last process-context-snapshot, so the
// value will not be correct if the process is currently running!
uint16_t getFreeProcessStackSize(Process process);

// Return the unique id of process. These ids are assigned sequentially, starting from zero.
// The ids are not reused and a 16-bit overflow is not detected.
uint16_t getProcessNumber(Process process);

ProcessBase getProcessBase(Process process);

// Free the process memory. This includes the stack.
// This function does nothing, if the process is the currently
// running process, since it's stack is currently in use.
Process destroyProcess(Process process);

#endif /* PROCESS_API_H_ */
