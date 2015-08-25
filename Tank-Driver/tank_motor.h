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

// Indexed by TankMotorNum enum values
#define TANK_MOTORS ((SmoothMotor[]) { leftMotor, rightMotor })
#define TANK_BASE_MOTORS ((Motor[]) { leftBaseMotor, rightBaseMotor })

typedef enum {
    MOTOR_LEFT, MOTOR_RIGHT
} TankMotorNum;

#endif /* TANK_MOTOR_H_ */
