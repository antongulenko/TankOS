/*
 * motor_smooth_pair.kernel
 *
 * Created: 22.04.2012 15:38:29
 *  Author: Anton
 */

#include "../../tank_os_common.h"
#include "motor_smooth.h"

// This kernel module provides the motor_smooth_tick for 2 motors,
// using a single, abstract, tick-source.
// Requires implementation of smooth_enable_tick(BOOL).
// Used macros:
// - SMOOTH_MOTOR_A, SMOOTH_MOTOR_B -- the motor objects themselves
// This counts as kernel-module, because the tick-sources for the motors
// might also be provided by other modules.

// This must be implemented in yet another kernel-module.
// motor_smooth_pair_tick must be called in a fixed time interval as long as
// enable is true.
void motor_smooth_pair_enable_tick(BOOL enabled);

BOOL motor_A_running = FALSE;
BOOL motor_B_running = FALSE;

PSmoothMotor SmoothMotor1;
PSmoothMotor SmoothMotor2;

static void control_smooth_motor(PSmoothMotor motor, BOOL running) {
	if (motor == SmoothMotor1) {
		motor_A_running = running;
	} else if (motor == SmoothMotor2) {
		motor_B_running = running;
	} else {
		return;
	}
	motor_smooth_pair_enable_tick(motor_A_running || motor_B_running);
}

void motor_smooth_start_tick(PSmoothMotor motor) {
	control_smooth_motor(motor, TRUE);
}

void motor_smooth_stop_tick(PSmoothMotor motor) {
	control_smooth_motor(motor, FALSE);
}

void motor_smooth_pair_tick() {
	if (motor_A_running) motor_smooth_tick(SmoothMotor1);
	if (motor_B_running) motor_smooth_tick(SmoothMotor2);
}
