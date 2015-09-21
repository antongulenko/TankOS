/*
 * Created: 28.04.2012 11:01:19
 *  Author: Anton
 */

#include <platform/kernel_init.h>
#include <platform/Avr/m1284P/timer.h>
#include <platform/Avr/m1284P/analog.h>
#include "tank_motor.h"

Timer timer0A, timer0B;
Motor leftBaseMotor, rightBaseMotor;
SmoothMotor leftMotor, rightMotor;

AnalogInput leftMotorCurrent, rightMotorCurrent;

static void enable_smooth_motor_interrupt() {
    TIMSK3 |= _BV(OCIE3B);
}

static void init_tank_motor_timers() {
    TCCR0A = _BV(WGM00); // Phase-correct PWM to 0xFF
    TCCR0A |= _BV(COM0A1) | _BV(COM0B1) ; // Clear while up-counting, set while down-counting
    TCCR0B = _BV(CS01); // Prescaler: 8
}

// Motor left = Motor 1
// Motor right = Motor 2

static void init_tank_driver_motors() {
    init_tank_motor_timers();
    enable_smooth_motor_interrupt();

    // Analog inputs:
    leftMotorCurrent = newAnalogInput_m1284P(2); // Pin A2
    rightMotorCurrent = newAnalogInput_m1284P(1); // Pin A1

    timer0A = newTimer_m1284P(0, TIMER_A, TRUE);
    timer0B = newTimer_m1284P(0, TIMER_B, TRUE);

    // No exact conversion, because we have the full voltage range!
	#define TANK_MOTOR MotorNormal

    leftBaseMotor = newMotor2dir(TANK_MOTOR, timer0A, pinA0, pinB0);
    rightBaseMotor = newMotor2dir(TANK_MOTOR, timer0B, pinD6, pinD7);
    leftMotor = newNormalSmoothMotor(leftBaseMotor);
    rightMotor = newNormalSmoothMotor(rightBaseMotor);

    // == Motor adjustment step ==
    // Resolution is 16 bit (65535), one adjustment each millisecond
    // -> acceleration from min to max in 500 ms.
    #define MOTOR_STEP (65535 / 500)
    smoothMotorSetStep(leftMotor, MOTOR_STEP);
    smoothMotorSetStep(rightMotor, MOTOR_STEP);
}
KERNEL_INIT(init_tank_driver_motors)
