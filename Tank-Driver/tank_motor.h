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
#include <platform/Avr/analog.h>
#include <timer.h>

extern Timer timer0A, timer0B;

extern Motor leftBaseMotor, rightBaseMotor;
extern SmoothMotor leftMotor, rightMotor;

extern AnalogInput leftMotorCurrent, rightMotorCurrent;
extern AnalogInput batteryVoltage; // Not really related to motors

// Indexed by TankMotorNum enum values
#define TANK_MOTORS ((SmoothMotor[]) { leftMotor, rightMotor })
#define TANK_BASE_MOTORS ((Motor[]) { leftBaseMotor, rightBaseMotor })

typedef enum {
    MOTOR_LEFT, MOTOR_RIGHT
} TankMotorNum;

#endif /* TANK_MOTOR_H_ */
