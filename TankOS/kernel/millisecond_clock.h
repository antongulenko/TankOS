/*
 * millisecond_clock.h
 *
 * Created: 21.04.2012 15:03:19
 *  Author: Anton
 */

#ifndef MILLISECOND_CLOCK_H_
#define MILLISECOND_CLOCK_H_

// This module will only work correctly, if either simple_timer.kernel
// or processes/scheduler.kernel is linked.

#include "../tank_os_common.h"

// This is a global variable (and not a function) for simplicity, but should not be written!
extern volatile uint32_t milliseconds_running;

// Retrieve the 4-byte value atomically. No danger, that the value is modified while part of it has already been loaded.
uint32_t get_milliseconds_running();

// This should only be invoked from kernel-modules, once each millisecond.
void millisecond_clock_tick();

// This wait function takes the millisecond-ticks as reference.
void wait_milliseconds(uint32_t ms);

#endif /* MILLISECOND_CLOCK_H_ */