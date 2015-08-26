/*
 * Created: 11.02.2012 12:10:15
 *  Author: Anton
 */

#ifndef SCHEDULER_H_
#define SCHEDULER_H_

#include <platform/process.h>

// This can be invoked to switch to the next process chosen by the scheduler.
void schedule_next();

// Put the processor in sleeping-mode, until the current quantum has expired.
// This call will return as soon as the current process is scheduled again.
// During the current quantum, no other processes will be running. This is used to ensure
// correct semantics when using multiple scheduler-algorithms together, like DMS and RR.
void yield_quantum();

// Should be called in regular intervals. Will switch the Process to the next scheduled one.
void scheduler_interrupt();

// This function must be providede by other modules.
// The parameter will be TRUE if the timer-ISR called the scheduler, and FALSE, if
// another process did so ('voluntarily').
extern ProcessBase schedule(BOOL invokedFromTimer);

#endif /* SCHEDULER_H_ */
