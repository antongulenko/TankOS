#include "example.h"
#include <platform/kernel_init.h>
#include <platform/platform_Avr/avr_atmega1284p/port.h>
#include <timer.h>

struct TankArm tank_arm;

void setupTankArmMotor(uint16_t max_frequency) {
	setGenericTimerFrequency(max_frequency);
    setupStepMotors(max_frequency);
}

static inline void init_tank_arm_motor() {
	setupTankArmMotor(6000);
    StepMotorFlags flags = StepMotorInverseEnable;

    // flags |= StepMotorInverseStep;
    stepMotorPulse = StepMotorPulse10us;

    tank_arm.motor = newStepMotor(pinB0, pinB1, pinB2, 400, flags);
    enableGenericTimerInterrupt_A(); // Step motor interrupt
}

static inline void init_tank_arm_sensors() {
	tank_arm.front = newHallSensor(1, 3, pinB3);
	tank_arm.back = newHallSensor(1, 4, pinB4);
	tank_arm.encoder = newEncoder(1, 5, 6, pinB5, pinB6);
}

static void init_tank_arm() {
    init_tank_arm_sensors();
    init_tank_arm_motor();
    tank_arm.calibrationDir = MotorForward;
    if (!tankArmInitialize(&tank_arm))
    	destroyTankArm(&tank_arm);
}
KERNEL_INIT(init_tank_arm)
