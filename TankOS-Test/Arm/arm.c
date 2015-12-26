
#include <devices/motor_step.h>
#include <arm.h>
#include <mocks/port.h>
#include <unity.h>

struct TankArm tank_arm;

void setupTankArmMotor(uint16_t freq) {
	setupStepMotors(freq);
}

void init_test_tank_arm() {
	init_fake_port();

	setupTankArmMotor(1000);
	tank_arm.motor = newStepMotor(testPin1, testPin2, testPin3, 400, StepMotorNormal);

	tank_arm.front = newHallSensor(0, 5, testPin4);
	tank_arm.back = newHallSensor(0, 6, testPin5);
	tank_arm.encoder = newEncoder(0, 7, 8, testPin6, testPin7);

    tank_arm.calibrationDir = MotorForward;

    TEST_ASSERT(hallSensorValid(tank_arm.front));
    TEST_ASSERT(hallSensorValid(tank_arm.back));
    TEST_ASSERT(encoderValid(tank_arm.encoder));
    TEST_ASSERT(stepMotorValid(tank_arm.motor));

    TEST_ASSERT(tankArmInitialize(&tank_arm));
}

void tear_down_test_tank_arm() {
	destroyTankArm(&tank_arm);
	destroy_fake_port();
}
