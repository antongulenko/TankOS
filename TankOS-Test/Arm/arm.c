
#include <Arm/test_arm.h>
#include <unity.h>

struct TankArm tank_joint;
struct TankArm tank_socket; // Only to satisfy the linker

void setupTankArmMotor(uint16_t freq) {
	setupStepMotors(freq);
}

void init_test_tank_arm() {
    init_fake_port();
    pin = 0xff;

    setupTankArmMotor(400);
    tank_joint.motor = newStepMotor(testPin1, testPin2, testPin3, 400, StepMotorNormal);

    tank_joint.front = newHallSensor(PORT_PIN_CHANGE, FRONT_PIN_CHANGE, testPin4, TRUE);
    tank_joint.back = newHallSensor(PORT_PIN_CHANGE, BACK_PIN_CHANGE, testPin5, TRUE);
    tank_joint.encoder = newEncoder(PORT_PIN_CHANGE, ENC_A_PIN_CHANGE, ENC_B_PIN_CHANGE, testPin6, testPin7);

    TEST_ASSERT(hallSensorValid(tank_joint.front));
    TEST_ASSERT(hallSensorValid(tank_joint.back));
    TEST_ASSERT(encoderValid(tank_joint.encoder));
    TEST_ASSERT(stepMotorValid(tank_joint.motor));

    TEST_ASSERT(tankArmInitialize(&tank_joint));
}

void tear_down_test_tank_arm() {
    destroyTankArm(&tank_joint);
    destroy_fake_port();
}
