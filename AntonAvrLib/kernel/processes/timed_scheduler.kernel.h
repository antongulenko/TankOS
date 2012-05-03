/*
 * timed_scheduler.kernel
 *
 * Created: 21.04.2012 15:30:25
 *  Author: Anton
 */ 

#ifndef TIMED_SCHEDULER_KERNEL_
#define TIMED_SCHEDULER_KERNEL_

// This file requires the makro CLOCKISR to be defined to the isr of the clock, that should be used for the 
// scheduler-timer.
#ifndef CLOCKISR
#error This kernel-module requires CLOCKISR to be defined!
#endif

// Make sure the scheduler-tick is the timer-isr handler.
#include "../millisecond_clock.h"
#define SCHEDULER_TICK_ISR ISR(CLOCKISR, __attribute__((naked)))

// Make sure, that the milliseconds-number is updated in the schedule-routine.
// This kind of 'plugs together' the millisecond_clock and scheduler kernel-modules. A little bit hacky.
#define SCHEDULER_TICK_ISR_CONTEXT_PUSHED milliseconds_running++;

#include "scheduler.kernel.h"

#endif