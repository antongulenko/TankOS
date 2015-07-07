/*
 * scheduler_internal.h
 *
 * Created: 17.02.2012 00:12:41
 *  Author: Anton
 */ 

#ifndef SCHEDULER_INTERNAL_H_
#define SCHEDULER_INTERNAL_H_

#include "process_base.h"

// The scheduler or kernel should implement this function. It is not implemented in scheduler.kernel.
// The parameter will be TRUE if the timer-ISR called the scheduler, and FALSE, if 
// another process did so ('voluntarily').
extern Process schedule(BOOL invokedFromTimer);

// Internal scheduler-routine. Try to schedule a process and set __current_process. Return TRUE, if the
// scheduler returned a valid process and __current_process has changed.
BOOL do_schedule_next(BOOL invokedFromTimer);

// This is set to FALSE when the timer-interrupt is triggered, which means that the
// previous quantum is over.
extern volatile BOOL yielding_quantum;

#endif /* SCHEDULER_INTERNAL_H_ */