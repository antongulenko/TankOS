/*
 * Created: 28.04.2012 11:01:19
 *  Author: Anton
 */

#include <platform/kernel_init.h>
#include <platform/platform_Avr/avr_atmega1284p/timer.h>
#include <platform/platform_Avr/avr_atmega1284p/analog.h>
#include "tank_motor.h"

Timer timer0A, timer0B;
Motor leftBaseMotor, rightBaseMotor; // left motor = Motor 1, right motor = Motor 2
SmoothMotor leftMotor, rightMotor;

AnalogInput leftMotorCurrent, rightMotorCurrent;
AnalogInput batteryVoltage;

static void init_tank_driver_analog_input() {
    leftMotorCurrent = newAnalogInput_m1284P(2); // Pin A2
    rightMotorCurrent = newAnalogInput_m1284P(1); // Pin A1
    batteryVoltage = newAnalogInput_m1284P(3); // Pin A3

    // Enable regular reads of analog inputs
    setGenericTimerFrequency(100); // 10 conversion cycles per second
    enableGenericTimerInterrupt_A(); // Analog Input timer interrupt
}

static void init_tank_driver_motor_timers() {
    TCCR0A = _BV(WGM00); // Phase-correct PWM to 0xFF
    TCCR0A |= _BV(COM0A1) | _BV(COM0B1) ; // Clear while up-counting, set while down-counting
    TCCR0B = _BV(CS01); // Prescaler: 8

    timer0A = newTimer_m1284P(0, TIMER_A, TRUE);
    timer0B = newTimer_m1284P(0, TIMER_B, TRUE);
}

static void init_tank_driver_motors() {
    // No exact conversion, because we have the full voltage range
	#define TANK_MOTOR MotorNormal

    leftBaseMotor = newMotor2dir(TANK_MOTOR, timer0A, pinA0, pinB0);
    rightBaseMotor = newMotor2dir(TANK_MOTOR, timer0B, pinD6, pinD7);
    leftMotor = newNormalSmoothMotor(leftBaseMotor);
    rightMotor = newNormalSmoothMotor(rightBaseMotor);

    // == Motor adjustment step ==
    // Resolution is 16 bit (65535), one adjustment each millisecond
    // -> acceleration from min to max in 200 ms.
    #define MOTOR_STEP (65535 / 150)
    smoothMotorSetStep(leftMotor, MOTOR_STEP);
    smoothMotorSetStep(rightMotor, MOTOR_STEP);

    enableMillisecondTimerInterrupt_B(); // Smooth motor interrupt
}

static void init_tank_driver() {
    init_tank_driver_analog_input();
    init_tank_driver_motor_timers();
    init_tank_driver_motors();
}
KERNEL_INIT(init_tank_driver)
