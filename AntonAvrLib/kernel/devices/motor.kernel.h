/*
 * motor.kernel
 *
 * Created: 22.04.2012 15:38:29
 *  Author: Anton
 */ 

#ifndef _MOTOR_KERNEL_
#define _MOTOR_KERNEL_

#include "../kernel_init.h"
#include "motor.h"

void initMotor(PMotor motor) {
	// Configure the timer. These are configurations,
	// that should work fine for motors, but might also be changed elsewhere.
	setTimerClockSelect(motor->pwmTimer->timer, prescale_1);
	setWaveformGenerationMode(motor->pwmTimer->timer, pwm_phase_correct);
	
	setCompareMatchOutputMode(motor->pwmTimer, clear_on_match);
	setTimerCompareValue(motor->pwmTimer, motor->minValue);
	
	setPinOutput(motor->direction);
	if (!(motor->flags & MOTOR_TWO_DIR_PINS))
		setPinOne(motor->direction);
}

void initMotor2Pins(PMotor2Pins motor) {
	initMotor((PMotor) motor);
	setPinOutput(motor->direction2);
	setPinZero(motor->motor.direction);
	setPinZero(motor->direction2);
}

#endif