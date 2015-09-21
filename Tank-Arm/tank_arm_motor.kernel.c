#include "tank_arm_motor.h"
#include <platform/kernel_init.h>
#include <platform/Avr/m1284P/port.h>

StepMotor tank_arm_step_motor;

static void enable_step_motor_interrupt() {
    TIMSK3 |= _BV(OCIE3B);
}

static void init_arm_motor() {
    // setTimerValue(millisecond_timer_B, (uint16_t) (F_CPU / 1000 / 8));
    enable_step_motor_interrupt();
    setupStepMotors(1000, 500); // Millisecond-interrupt, top-speed within half a second
    tank_arm_step_motor = newStepMotor(pinB0, pinB1, pinB2, 200, StepMotorInverseEnable);
}
KERNEL_INIT(init_arm_motor)
