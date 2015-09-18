
#include "kernel.h"
#include <stdio.h>
#include <devices/motor_step.h>

StepMotor tank_arm_step_motor;

int main() {
	// setTimerValue(millisecond_timer_B, (uint16_t) (F_CPU / 1000 / 8));

    tank_arm_step_motor = newStepMotor(pinB0, pinB1, pinB2, 200, StepMotorInverseEnable);

    if (!IsValid(tank_arm_step_motor)) {
        printf("BAD\n");
    } else {
        TIMSK3 |= _BV(OCIE3B); // Enable timer interrupt
        printf("E\n");
    }
}
