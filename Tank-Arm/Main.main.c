
#include "kernel.h"
#include <stdio.h>
#include <devices/motor_step.h>
#include <devices/motor_smooth.h>

StepMotor tank_arm_step_motor;

int main() {
	// setTimerValue(millisecond_timer_B, (uint16_t) (F_CPU / 1000 / 8));

    motor_step_ticks_per_second = 1000;
    setAdjustmentStep(motor_step_ticks_per_second / 500);
    tank_arm_step_motor = newStepMotor(pinB0, pinB1, pinB2, 200, StepMotorInverseEnable);

    if (!IsValid(tank_arm_step_motor)) {
        printf("BAD\n");
    } else {
        TIMSK3 |= _BV(OCIE3B); // Enable timer interrupt
        printf("E\n");
    }
}
