/*
 * Created: 28.04.2012 11:01:19
 *  Author: Anton
 */

#include <kernel/kernel_init.h>
#include <m1284P/timer.h>
#include "tank_motor.h"

Motor leftBaseMotor, rightBaseMotor;
SmoothMotor leftMotor, rightMotor;

static void init_tank_timers() {

}

static void init_tank_motors() {
    init_tank_timers();

	// No exact conversion, because we have the full voltage range!
	#define TANK_MOTOR MotorNormal

    Timer timer0A = newTimer_m1284P(0, TIMER_A, TRUE);
    Timer timer0B = newTimer_m1284P(0, TIMER_B, TRUE);
    Timer timer2A = newTimer_m1284P(2, TIMER_A, TRUE);
    Timer timer2B = newTimer_m1284P(2, TIMER_B, TRUE);

    leftBaseMotor = newMotor2speed(TANK_MOTOR, timer0A, timer0B);
    leftBaseMotor = newMotor2speed(TANK_MOTOR, timer2A, timer2B);
    leftMotor = newSmoothMotor(leftBaseMotor);
    rightMotor = newSmoothMotor(rightBaseMotor);

    // == Motor adjustment step ==
    // Resolution is 16 bit (65535), one adjustment each millisecond
    // -> acceleration from min to max in 500 ms.
    setAdjustmentStep(130);
}
KERNEL_INIT(init_tank_motors)
