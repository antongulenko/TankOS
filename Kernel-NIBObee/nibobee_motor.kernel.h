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
	INIT_MOTOR(LeftMotor, MOTOR_NORMAL, PinD6, Timer1A)
	INIT_MOTOR(RightMotor, MOTOR_NORMAL, PinD7, Timer1B)
}
KERNEL_INIT(init_nibobee_motors)

#endif /* NIBOBEE_MOTOR_H_ */