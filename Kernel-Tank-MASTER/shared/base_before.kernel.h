/*
 * base.kernel
 *
 * Created: 02.05.2012 15:26:45
 *  Author: Anton
 */ 

#ifndef _BASE_BEFORE_KERNEL_
#define _BASE_BEFORE_KERNEL_

// Regular header-files
#include "../kernel.h"
#include <avr/wdt.h>

// TWI -- basic definitions
// #define TWI_BIT_RATE_VALUE 17
#define TWI_BIT_RATE_VALUE 100
#define TWI_PRESCALER_MASK 0
#define TWI_Buffer_Size 255
// => Bit rate value 17 and prescaler zero results in the 
// maximum communication frequency of 400 KHz
// No more TWI-stuff is included here, rest is configured in the actual kernel-file.

// Timer and scheduler
#include "timer.kernel.h"
#define CLOCKISR CLOCKISR_A
#include <kernel/timer_base.kernel.h>
#ifdef USE_SCHEDULER
	// Full fledged scheduler:
	#include "scheduler.kernel.h"
#else
	// Alternative - Simple timer, that increases milliseconds_running.
	#include <kernel/simple_timer.kernel.h>
	#define INITIALIZE_SCHEDULER
#endif
#include <kernel/processes/mutex/atomic_mutex.kernel.h>

#endif