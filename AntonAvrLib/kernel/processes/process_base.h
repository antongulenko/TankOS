/*
 * process_base.h
 *
 * Created: 03.02.2012 16:37:49
 *  Author: Anton
 */ 

#ifndef PROCESS_API_H_
#define PROCESS_API_H_

#include "../../anton_std.h"

DEFINE_HANDLE(Process);
#define InvalidProcess ((Process) NULL)

// The processArgument is optional. See createProcess2. Work around the compiler (ignore it),
// if you do define the parameter and it complains, that the signature does not match this one.
typedef void ProcessEntryPoint(/* void *processArgument */);

// Returns the currently active Process.
Process getCurrentProcess();

// Create a Process. It will not be executed or scheduled.
// The running Process can switch the context to another Process.
// This allows 'cooperative' multi-tasking.
// InvalidProcess is returned, if not enough memory could be allocated to create the process.
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
// To define the additionalMemory for the first/initial main-process, write a non-zero value
// to __main_process_additional_memory (in process_internal.h) before this kernel module is initialized.
Process createProcess3(ProcessEntryPoint entryPoint, void *processArgument, uint16_t stackSize, uint8_t additionalMemory);

// Return the additional memory associated with proc. If no memory was reserved,
// this should not be used.
void *getProcessMemory(Process proc);

// Switch context to newProcess.
// This call will only return, if another Process switches back to the current Process.
// This should not be used, if a dedicated scheduler is used, the result can be undefined.
void switchProcess(Process newProcess);

#endif /* PROCESS_API_H_ */