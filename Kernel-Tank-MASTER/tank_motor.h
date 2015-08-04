/*
 * tank_motor.h
 *
 * Created: 28.04.2012 00:47:33
 *  Author: Anton
 */

#ifndef TANK_MOTOR_H_
#define TANK_MOTOR_H_

#include <devices/motor.h>
#include <devices/motor_smooth.h>

DEFINE_MOTOR(LeftMotorBase)
DEFINE_MOTOR(RightMotorBase)
DEFINE_SMOOTH_MOTOR(LeftMotor)
DEFINE_SMOOTH_MOTOR(RightMotor)

#endif /* TANK_MOTOR_H_ */
