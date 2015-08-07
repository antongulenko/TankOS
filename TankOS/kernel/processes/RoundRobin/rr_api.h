/*
 * rr_api.h
 *
 * Created: 21.04.2012 19:05:05
 *  Author: Anton
 */

#ifndef RR_API_H_
#define RR_API_H_

#include <kernel/processes/process.h>

// In this API, Processes are called Threads.
DEFINE_HANDLE(Thread);
typedef void ThreadEntryPoint();

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

Thread createThread(ThreadEntryPoint entry); // uses PrioNormal
Thread createThread2(ThreadEntryPoint entry, ThreadPriority prio);
Thread createThread3(ThreadEntryPoint entry, ThreadPriority prio, void *threadParameter);
Thread createThread4(ThreadEntryPoint entry, ThreadPriority prio, void *threadParameter, uint16_t stackSize);

Thread getCurrentThread();

#endif /* RR_API_H_ */
