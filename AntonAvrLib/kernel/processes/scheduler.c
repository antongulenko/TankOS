/*
 * scheduler.c
 *
 * Created: 26.04.2012 17:06:02
 *  Author: Anton
 */ 

#include <avr/sleep.h>
#include "../../anton_std.h"
#include "scheduler.h"
#include "scheduler_internal.h"

// This function does not need to be naked or anything, because the process that
// invoked it has saved all its registers, that are important. As this function
// also does not take any arguments, nothing can go wrong here.
// Contrary to the scheduler-timer-isr, this does not make the processor idle, if schedule
// does not return a valid Process.
void schedule_next() {
	Process next = schedule(FALSE);
	// This is actually an invalid condition, but no need for a hardware reset here.
	if (next == InvalidProcess) return;
	switchProcess(next); // Will not return here.
}
