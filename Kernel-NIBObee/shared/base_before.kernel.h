/*
 * base.kernel
 *
 * Created: 02.05.2012 15:26:45
 *  Author: Anton
 */ 

#ifndef _BASE_BEFORE_KERNEL_
#define _BASE_BEFORE_KERNEL_

// Regular header-files
#include <kernel/kernel_init.h>
#include "../kernel.h"
#include <avr/wdt.h>

// TWI -- basic definitions
#define TWI_BIT_RATE_VALUE 17 // Maximal TWI-frequency
// #define TWI_BIT_RATE_VALUE 100 // Medium TWI-frequency
// #define TWI_BIT_RATE_VALUE 250 // Minimal TWI-frequency
#define TWI_PRESCALER_MASK 0
#define TWI_Buffer_Size 255
// => Bit rate value 17 and prescaler zero results in the 
// maximum communication frequency of 400 KHz
// No more TWI-stuff is included here, rest is configured in the actual kernel-file.

// Timer and scheduler
#include "timer.kernel.h"
#define CLOCKISR CLOCKISR_A // for timer_base.kernel.h
#define TIMER_INTERRUPT_A // for base_after.kernel.h
#include <kernel/timer_base.kernel.h>
#ifdef USE_SCHEDULER
	// Full fledged scheduler:
	#include "scheduler.kernel.h" // This defines INITIALIZE_SCHEDULER
#else
	// Alternative - Simple timer, that increases milliseconds_running.
	#include <kernel/simple_timer.kernel.h>
	#define INITIALIZE_SCHEDULER // Empty definition for base_after.kernel.h
#endif

// TODO the simple atomic mutex is the only functional mutex implementation.
#include <kernel/processes/mutex/atomic_mutex.kernel.h>

// Let processor idle after main ends.
#include <kernel/sleep_after_main.kernel.h>

// Initialize ADC
#include <kernel/devices/analog_m1284P.kernel.h>

#endif