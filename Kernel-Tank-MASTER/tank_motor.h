/*
 * tank_motor.h
 *
 * Created: 28.04.2012 00:47:33
 *  Author: Anton
 */ 

#ifndef TANK_MOTOR_H_
#define TANK_MOTOR_H_

#include <kernel/devices/timer_m1284P.h>
#include <kernel/devices/motor.h>

DEFINE_2DirPins_MOTOR(LeftMotor)
DEFINE_2DirPins_MOTOR(RightMotor)

#endif /* TANK_MOTOR_H_ */