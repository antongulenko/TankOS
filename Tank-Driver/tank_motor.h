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

extern Timer timer0A, timer0B, timer2A, timer2B;

extern Motor leftBaseMotor, rightBaseMotor;
extern SmoothMotor leftMotor, rightMotor;

#endif /* TANK_MOTOR_H_ */
