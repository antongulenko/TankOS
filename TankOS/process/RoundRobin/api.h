/*
 * Created: 21.04.2012 19:05:05
 *  Author: Anton
 */

#ifndef RR_API_H_
#define RR_API_H_

#include <process/process.h>

// In this API, Processes are called Threads.
DEFINE_HANDLE(Thread);

// These are the supported priorities. The number and names are arbitrarily chosen.
typedef enum {
	PrioLowest = 0,
	PrioLow,
	PrioBelowNormal,
	PrioNormal,
	PrioAboveNormal,
	PrioHigh,
	PrioHighest
} ThreadPriority;

// TODO - extend API to suspend and terminate threads.
// TODO - extend API with locks, mutexes etc. Could be another layer operating on an abstract scheduler-API!

// The process parameter must not be used by any other module.
// It is possible to create a thread from a process that has already been running.
Thread newThread(ThreadPriority priority, Process process);

// Will transitively destroy the underlying process. Cannot be used on the currently active thread.
Thread destroyThread(Thread thread);
Process getThreadProcess(Thread thread);

Thread getCurrentThread();
ThreadPriority getThreadPriority(Thread thread);

BOOL suspendThread(Thread thread);
BOOL resumeThread(Thread thread);

#endif /* RR_API_H_ */
