#include "example.h"
#include <platform/kernel_init.h>
#include <platform/platform_Avr/port.h>
#include <timer.h>

struct TankArm tank_joint;
struct TankArm tank_socket;

void setupTankArmMotor(uint16_t max_frequency) {
	setGenericTimerFrequency(max_frequency);
    setupStepMotors(max_frequency);
}

static inline void init_tank_arm_motor() {
	setupTankArmMotor(2000);
    StepMotorFlags flags = StepMotorInverseEnable;

    tank_socket.motor = newStepMotor(pinB0, pinB1, pinB2, 400, flags);
    tank_joint.motor = newStepMotor(pinA0, pinA1, pinA2, 400, flags);
    enableGenericTimerInterrupt_A(); // Step motor interrupt
}

static inline void init_tank_arm_sensors() {
	tank_socket.front = newHallSensor(1, 4, pinB4, TRUE);
	tank_socket.back = newHallSensor(1, 3, pinB3, TRUE);
	tank_socket.encoder = newEncoder(1, 5, 6, pinB5, pinB6);

    tank_joint.front = newHallSensor(0, 4, pinA4, TRUE);
    tank_joint.back = newHallSensor(0, 3, pinA3, TRUE);
    tank_joint.encoder = newEncoder(0, 5, 6, pinA5, pinA6);
}

static void init_tank_arm() {
    init_tank_arm_sensors();
    init_tank_arm_motor();
    if (!tankArmInitialize(&tank_socket))
        destroyTankArm(&tank_socket);
    if (!tankArmInitialize(&tank_joint))
    	destroyTankArm(&tank_joint);
}
KERNEL_INIT(init_tank_arm)
