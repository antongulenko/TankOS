/*
 * millisecond_clock.h
 *
 * Created: 21.04.2012 15:03:19
 *  Author: Anton
 */ 

#ifndef MILLISECOND_CLOCK_H_
#define MILLISECOND_CLOCK_H_

#include "../anton_std.h"

#ifdef _KERNEL_
	// This just defines the variable; it has to be incremented from some timer module in the kernel.
	uint32_t volatile milliseconds_running = 0;
#else
	// This is a global variable (and not a function) for simplicity, but should not be written!
	extern volatile uint32_t milliseconds_running;
#endif

// Retrieve the 4-byte value atomically. No danger, that the value is modified while part of it has already been loaded.
uint32_t get_milliseconds_running();

#endif /* MILLISECOND_CLOCK_H_ */