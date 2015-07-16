/*
 * Created: 15.02.2012 20:22:43
 *  Author: Anton
 */

#ifndef PROCESS_EXT_H_
#define PROCESS_EXT_H_

// This header has additional API-functions for Processes. To implement them, some
// additional memory is required for each process-instance.
// The functions in this header only work for processes created with
// createProcess() etc. implemented in process_ext.kernel

#include "process_base.h"

// Return the number of bytes available on the stack for process.
uint8_t getProcessStackSize(Process process);

// Return, how many bytes are left on the allocated stack for the process.
// The value is calculated from the last process-context-snapshot, so the
// value will not be correct if the process is currently running!
uint16_t getFreeProcessStackSize(Process process);

// Return the unique id of process. These ids are assigned sequentially, starting from zero.
// The ids are not reused and a 16-bit overflow is not detected.
uint16_t getProcessNumber(Process process);

// Free the process memory. This includes the stack and the additional application memory.
// This function does nothing, if the process is the currently
// running process, since it's stack is currently in use.
void freeProcess(Process process);

#endif /* PROCESS_EXT_H_ */
