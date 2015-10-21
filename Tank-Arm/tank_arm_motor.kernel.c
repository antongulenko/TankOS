#include "tank_arm_motor.h"
#include <platform/kernel_init.h>
#include <platform/Avr/m1284P/port.h>
#include <timer.h>

StepMotor tank_arm_step_motor;

void setupTankArmMotor(uint16_t max_frequency) {
	setGenericTimerFrequency(max_frequency);
    setupStepMotors(max_frequency, 10);
}

static void init_arm_motor() {
    setupTankArmMotor(2000);
    tank_arm_step_motor = newStepMotor(pinB0, pinB1, pinB2, 200, StepMotorInverseEnable);
    enableGenericTimerInterrupt_A(); // Step motor interrupt
}
KERNEL_INIT(init_arm_motor)