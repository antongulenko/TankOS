/*
 * base.kernel
 *
 * Created: 02.05.2012 15:26:45
 *  Author: Anton
 */ 

#ifndef _BASE_KERNEL_
#define _BASE_KERNEL_

// Regular header-files
#include "../kernel.h"
#include <avr/wdt.h>

#define TWI_Slave
#define TWI_BIT_RATE_VALUE 17
#define TWI_PRESCALER_MASK 0
#include "../twi.kernel.h"
// => Bit rate value 17 and prescaler zero results in the maximum communication frequency of 400 KHz

#ifdef USE_SCHEDULER
	// Full fledged scheduler:
	#include "scheduler.kernel.h"
#else
	// Alternative - Simple timer, that increases milliseconds_running.
	#include "timer.kernel.h"
	#include <kernel/simple_timer.kernel.h>
	#define INITIALIZE_SCHEDULER
#endif

// This function can be implemented in user code to have some initialization-code 
// before the timer starts running.
void before_timer() __attribute__((weak));
void before_timer() {}

// TODO put some common init-parts into the AntonLib-kernel
void init_kernel() {
	// Power saving settings
	ACSR |= _BV(ACD); // Turn off Analog Comparator - not needed
	PRR0 |= _BV(PRTIM0) | _BV(PRTIM2); // Turn off unused timers
	
	// WDT-configuration -- resets after 4s (alt.: 8S, 2S, 1S, 500MS, ...)
	// wdt_enable(WDTO_4S);
	
	// BOD - TODO configure?
	
	// Final initialization-sequence
	// AFTER other modules modified __default_stack_size and 
	// __main_process_additional_memory
	INITIALIZE_SCHEDULER
	before_timer(); // AFTER all other initialization and BEFORE starting the scheduler
	start_timer();
}
KERNEL_INIT(init_kernel)

#endif