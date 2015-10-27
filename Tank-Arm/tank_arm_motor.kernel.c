#include "tank_arm_motor.h"
#include <platform/kernel_init.h>
#include <platform/Avr/m1284P/port.h>
#include <timer.h>

StepMotor tank_arm_step_motor;

void setupTankArmMotor(uint16_t max_frequency) {
	setGenericTimerFrequency(max_frequency);
    setupStepMotors(max_frequency);
}

static void init_arm_motor() {
    setupTankArmMotor(6000);
    StepMotorFlags flags = StepMotorInverseEnable;

    // flags |= StepMotorInverseStep;
    stepDelay = StepDelay10us;

    tank_arm_step_motor = newStepMotor(pinB0, pinB1, pinB2, 400, flags);
    enableGenericTimerInterrupt_A(); // Step motor interrupt
}
KERNEL_INIT(init_arm_motor)
