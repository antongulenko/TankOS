#include "example.h"
#include <platform/kernel_init.h>
#include <platform/platform_Avr/port.h>
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

    tank_arm.motor = newStepMotor(pinA0, pinA1, pinA2, 400, flags);
    enableGenericTimerInterrupt_A(); // Step motor interrupt
}

static inline void init_tank_arm_sensors() {
	tank_arm.front = newHallSensor(0, 4, pinA4);
	tank_arm.back = newHallSensor(0, 3, pinA3);
	tank_arm.encoder = newEncoder(0, 5, 6, pinA5, pinA6);
}

static void init_tank_arm() {
    init_tank_arm_sensors();
    init_tank_arm_motor();
    tank_arm.calibrationDir = MotorForward;
    if (!tankArmInitialize(&tank_arm))
    	destroyTankArm(&tank_arm);
}
// KERNEL_INIT(init_tank_arm)
