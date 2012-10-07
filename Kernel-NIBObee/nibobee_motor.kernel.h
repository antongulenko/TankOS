/*
 * nibobee_motor.kernel
 *
 * Created: 28.04.2012 11:01:19
 *  Author: Anton
 */ 

#ifndef _NIBOBEE_MOTOR_KERNEL_
#define _NIBOBEE_MOTOR_KERNEL_

#include <kernel/kernel_init.h>
#include <kernel/devices/timer_m1284P.kernel.h>
#include <kernel/devices/motor.kernel.h>
#include "nibobee_motor.h"

void init_nibobee_motors() {
	Timer1->flags |= TIMER_RESOLUTION_9bit;
	
	INIT_MOTOR(LeftMotorBase, MOTOR_NORMAL, PinD6, Timer1A)
	INIT_MOTOR(RightMotorBase, MOTOR_INVERSE_DIRECTION, PinD7, Timer1B)
	
	// LeftMotorBase->maxValue = 0x0FFF;
	
	// Don't know why, but the lib does this... Seems to enable internal PullUp.
	// Pins will be controlled by the timer anyways.
	setPinOne(RightMotorBase->pwmTimer->outputComparePin);
	setPinOne(LeftMotorBase->pwmTimer->outputComparePin);
}
KERNEL_INIT(init_nibobee_motors)

#endif /* NIBOBEE_MOTOR_H_ */