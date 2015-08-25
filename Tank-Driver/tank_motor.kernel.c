/*
 * Created: 28.04.2012 11:01:19
 *  Author: Anton
 */

#include <kernel/kernel_init.h>
#include <m1284P/timer.h>
#include "tank_motor.h"

Timer timer0A, timer0B, timer2A, timer2B;
Motor leftBaseMotor, rightBaseMotor;
SmoothMotor leftMotor, rightMotor;

static void enable_smooth_motor_interrupt() {
    TIMSK3 |= _BV(OCIE3B);
}

static void init_tank_motor_timers() {
    TCCR0A = _BV(WGM00) | _BV(WGM01); // Fast PWM
    TCCR0A |= _BV(COM0A1) | _BV(COM0B1) ; // Set at bottom, clear at compare-match
    TCCR0B = _BV(WGM02) | _BV(CS00); // No prescaling

    TCCR2A = _BV(WGM20) | _BV(WGM21); // Fast PWM
    TCCR2A |= _BV(COM2A1) | _BV(COM2B1); // Set at bottom, clear at compare-match
    TCCR2B = _BV(WGM22) | _BV(CS20); // No prescaling
}

static void init_tank_driver_motors() {
    init_tank_motor_timers();
    enable_smooth_motor_interrupt();

	// No exact conversion, because we have the full voltage range!
	#define TANK_MOTOR MotorNormal

    timer0A = newTimer_m1284P(0, TIMER_A, TRUE);
    timer0B = newTimer_m1284P(0, TIMER_B, TRUE);
    timer2A = newTimer_m1284P(2, TIMER_A, TRUE);
    timer2B = newTimer_m1284P(2, TIMER_B, TRUE);

    leftBaseMotor = newMotor2speed(TANK_MOTOR, timer0A, timer0B);
    rightBaseMotor = newMotor2speed(TANK_MOTOR, timer2A, timer2B);
    leftMotor = newSmoothMotor(leftBaseMotor);
    rightMotor = newSmoothMotor(rightBaseMotor);

    // == Motor adjustment step ==
    // Resolution is 16 bit (65535), one adjustment each millisecond
    // -> acceleration from min to max in 500 ms.
    setAdjustmentStep(65535 / 500);
}
KERNEL_INIT(init_tank_driver_motors)
