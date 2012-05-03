/*
 * scheduler_internal.h
 *
 * Created: 17.02.2012 00:12:41
 *  Author: Anton
 */ 

#ifndef SCHEDULER_INTERNAL_H_
#define SCHEDULER_INTERNAL_H_

#include "process.h"

// The scheduler or kernel should implement this function. It is not implemented in scheduler.kernel.
// The parameter will be TRUE if the timer-ISR called the scheduler, and FALSE, if 
// another process did so ('voluntarily').
extern Process schedule(BOOL invokedFromTimer);

// Internal scheduler-routine. Try to schedule a process and set __current_process. Return TRUE, if the
// scheduler returned a valid process and __current_process has changed.
BOOL do_schedule_next(BOOL invokedFromTimer);

// Set processor in idle-state. It will wake up from the next interrupt (of any kind).
void processor_idle();

// Loop infinitely, setting the processor idle. Should be used as a guard, if a certain context
// should never be continued, e.g. when waiting for a timer-interrupt.
// Reason: after waking up from any (non-timer) interrupt, the processor will also continue
// the context, that called processor_idle().
void processor_loop_idle();

#endif /* SCHEDULER_INTERNAL_H_ */