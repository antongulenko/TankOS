/*
 * motor_smooth_pair.kernel
 *
 * Created: 22.04.2012 15:38:29
 *  Author: Anton
 */ 

#ifndef _MOTOR_SMOOTH_PAIR_KERNEL_
#define _MOTOR_SMOOTH_PAIR_KERNEL_

// This kernel module provides the motor_smooth_tick for 2 motors,
// using a single, abstract, tick-source.
// Requires implementation of smooth_enable_millisecond_tick(BOOL).
// smooth_millisecond_tick() must be called each millisecond, if enabled.
// Following macro configurations are required:
// - SMOOTH_TICK_FREQ -- in Hz, how often the interrupt will be triggered, if active
// - SMOOTH_MOTOR_A, SMOOTH_MOTOR_B -- the motor objects themselves

#include "../kernel_init.h"
#include "motor_smooth.kernel.h"

// Can be implemented to add a delay when the motor has stopped.
void smooth_motor_stopped(PSmoothMotor motor) __attribute__((weak));
void smooth_motor_stopped(PSmoothMotor motor);

void smooth_enable_millisecond_tick(BOOL enabled);

uint16_t smooth_ticks = 0;
uint16_t target_motor_A = 0;
uint16_t target_motor_B = 0;
BOOL motor_A_running = FALSE;
BOOL motor_B_running = FALSE;

extern void motor_smooth_set_call_frequency(PSmoothMotor motor, uint16_t timesPerSecond) {
	BOOL wasRunning = motor_A_running || motor_B_running;
	if (motor == SMOOTH_MOTOR_A) {
		motor_A_running = timesPerSecond != 0;
		target_motor_A = motor_A_running ? timesPerSecond : SMOOTH_TICK_FREQ / timesPerSecond;
	} else if (motor == SMOOTH_MOTOR_B) {
		motor_B_running = timesPerSecond != 0;
		target_motor_B = motor_B_running ? timesPerSecond : SMOOTH_TICK_FREQ / timesPerSecond;
	} else {
		return;
	}
	BOOL isRunning = motor_A_running || motor_B_running;
	if (wasRunning != isRunning) smooth_enable_millisecond_tick(isRunning);
}

void smooth_millisecond_tick() {
	if (motor_A_running && smooth_ticks % target_motor_A == 0)
		motor_smooth_tick(SMOOTH_MOTOR_A);
	if (motor_B_running && smooth_ticks % target_motor_B == 0)
		motor_smooth_tick(SMOOTH_MOTOR_B);
	
}

#endif
