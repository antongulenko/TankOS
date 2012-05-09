/*
 * nibobee_motor.h
 *
 * Created: 28.04.2012 00:47:33
 *  Author: Anton
 */ 

#ifndef NIBOBEE_MOTOR_H_
#define NIBOBEE_MOTOR_H_

#include <kernel/devices/timer_m1284P.h>
#include <kernel/devices/motor.h>
#include <kernel/devices/motor_smooth.h>

DEFINE_MOTOR(LeftMotorBase)
DEFINE_MOTOR(RightMotorBase)
DEFINE_SMOOTH_MOTOR(LeftMotor)
DEFINE_SMOOTH_MOTOR(RightMotor)

#endif /* NIBOBEE_MOTOR_H_ */