/*
 * timer_base.kernel
 *
 * Created: 21.04.2012 15:30:25
 *  Author: Anton
 */ 

#ifndef _TIMER_BASE_KERNEL_
#define _TIMER_BASE_KERNEL_

// This module does preparations to include either
// scheduler.kernel.h or simple_timer.kernel.h, depending
// on whether the scheduler is needed or simply a up-to-date
// milliseconds_running value.

// This file requires the makro CLOCKISR to be defined to the isr of the clock,
// that should be used for the scheduler-timer.
#ifndef CLOCKISR
#error This kernel-module requires CLOCKISR to be defined!
#endif

// Make sure the scheduler-tick is the timer-isr handler.
#include "millisecond_clock.h"
#define TIMER_TICK_ISR_NAKED ISR(CLOCKISR, __attribute__((naked)))
#define TIMER_TICK_ISR ISR(CLOCKISR)

// Can be implemented by the application. Mainly for testing purposes.
void in_timer_tick() __attribute__((weak));
void in_timer_tick() {}

// Make sure, that the milliseconds-number is updated in the timer-routine.
#define TIMER_TICK_ACTION		\
	milliseconds_running++;		\
	in_timer_tick();

#endif