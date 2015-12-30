
#include <Arm/test_arm.h>
#include <unity.h>

struct TankArm tank_arm;

void setupTankArmMotor(uint16_t freq) {
	setupStepMotors(freq);
}

void init_test_tank_arm() {
	init_fake_port();

	setupTankArmMotor(400);
	tank_arm.motor = newStepMotor(testPin1, testPin2, testPin3, 400, StepMotorNormal);

	tank_arm.front = newHallSensor(PORT_PIN_CHANGE, FRONT_PIN_CHANGE, testPin4);
	tank_arm.back = newHallSensor(PORT_PIN_CHANGE, BACK_PIN_CHANGE, testPin5);
	tank_arm.encoder = newEncoder(PORT_PIN_CHANGE, ENC_A_PIN_CHANGE, ENC_B_PIN_CHANGE, testPin6, testPin7);

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
