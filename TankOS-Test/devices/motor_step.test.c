#include <unity.h>
#include <mocks/port.h>
#include <devices/motor_step.h>

#define TURN 200
#define TICKS 100

Pin dir, step, enable;
StepMotor motor;

void setUp() {
    init_fake_port();
    dir = testPin1;
    step = testPin2;
    enable = testPin3;
    motor_step_ticks_per_second = TICKS;
}

static void createMotor2(StepMotorFlags flags, BOOL enablePin) {
    Pin ePin = enablePin ? enable : Invalid(Pin);
    motor = newStepMotor(step, dir, ePin, TURN, flags);
    TEST_ASSERT_TRUE_MESSAGE(IsValid(motor), "StepMotor invalid after create");
    TEST_ASSERT_TRUE_MESSAGE(stepMotorValid(motor), "StepMotor not valid after create");

    pos_t pos = stepMotorPosition(motor);
    TEST_ASSERT_EQUAL_MESSAGE(0, pos, "StepMotor not at position 0 after create");
    deg_t deg = stepMotorAngle(motor);
    TEST_ASSERT_EQUAL_MESSAGE(0, deg, "StepMotor not at angle 0 after create");
    TEST_ASSERT_EQUAL_MESSAGE(100, stepMotorGetMaxFrequency(motor), "Step motor does not have correct frequency");

    TEST_ASSERT_EQUAL_MESSAGE(PinStepMotor, pinOccupation(step), "Did not occupy step pin");
    TEST_ASSERT_EQUAL_MESSAGE(PinStepMotor, pinOccupation(step), "Did not occupy dir pin");
    if (enablePin)
        TEST_ASSERT_EQUAL_MESSAGE(PinStepMotor, pinOccupation(enable), "Did not occupy step pin");
}

static void createMotor() {
    createMotor2(StepMotorNormal, TRUE);
}

// Hack to check that list is empty
extern void *_step_motors;

void tearDown() {
    motor = destroyStepMotor(motor);
    TEST_ASSERT_FALSE_MESSAGE(stepMotorValid(motor), "StepMotor still valid after destroy");
    TEST_ASSERT_FALSE_MESSAGE(IsValid(motor), "StepMotor not Invalid after destroy");

    TEST_ASSERT_NULL_MESSAGE(_step_motors, "StepMotor list not empty after destroy");

    destroy_fake_port();
}

void test_init() {
    createMotor();
}

void test_init_no_enable() {
    createMotor(StepMotorNormal, FALSE);
}

void test_occupied_pin() {
    occupyPinDirectly(dir, 22, EmptyConfigData);
    motor = newStepMotor(step, dir, enable, TURN, StepMotorNormal);
    TEST_ASSERT_FALSE_MESSAGE(IsValid(motor), "motor should not be valid");
    TEST_ASSERT_FALSE_MESSAGE(stepMotorValid(motor), "motor should not be valid");
    TEST_ASSERT_EQUAL_MESSAGE(PinNoOccupation, pinOccupation(step), "invalid motor still occupied pin!");
    TEST_ASSERT_EQUAL_MESSAGE(22, pinOccupation(dir), "invalid motor still occupied pin!");
    TEST_ASSERT_EQUAL_MESSAGE(PinNoOccupation, pinOccupation(enable), "invalid motor still occupied pin!");
}

void test_set_frequency() {
    createMotor();
    BOOL res = stepMotorSetMaxFrequency(motor, 50);
    TEST_ASSERT_TRUE_MESSAGE(res, "frequency not set correctly");
    TEST_ASSERT_EQUAL_MESSAGE(50, stepMotorGetMaxFrequency(motor), "Step motor does not have correct frequency");

    res = stepMotorSetMaxFrequency(motor, 22);
    TEST_ASSERT_TRUE_MESSAGE(res, "frequency not set correctly");
    TEST_ASSERT_EQUAL_MESSAGE(100 / 4, stepMotorGetMaxFrequency(motor), "Step motor does not have correct frequency");

    res = stepMotorSetMaxFrequency(motor, 150);
    TEST_ASSERT_FALSE_MESSAGE(res, "frequency should not be set correctly");
    TEST_ASSERT_EQUAL_MESSAGE(100, stepMotorGetMaxFrequency(motor), "Step motor does not have correct frequency");
}

void dosteps(int num) {
    while (num-- > 0) {
        motor_step_tick();
    }
}

void checkPins(BOOL dirUp, BOOL enableUp) {
    TEST_ASSERT_EQUAL_MESSAGE(dirUp, isPinOutputHigh(dir), "wrong direction pin set");
    TEST_ASSERT_EQUAL_MESSAGE(enableUp, isPinOutputHigh(enable), "wrong enable pin set");
}

void test_step() {
    createMotor();
    stepMotorStep(motor, 10, MotorForward);
    checkPins(TRUE, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(0, stepMotorPosition(motor), "motor wrong position");
    dosteps(1);
    TEST_ASSERT_EQUAL_MESSAGE(1, stepMotorPosition(motor), "motor wrong position");
    dosteps(8);
    TEST_ASSERT_EQUAL_MESSAGE(9, stepMotorPosition(motor), "motor wrong position");
    dosteps(5);
    TEST_ASSERT_EQUAL_MESSAGE(10, stepMotorPosition(motor), "motor wrong position");
    dosteps(5);
    TEST_ASSERT_EQUAL_MESSAGE(10, stepMotorPosition(motor), "motor wrong position");
}

void test_turn() {
    createMotor();
    stepMotorTurn(motor, 15, MotorForward); // 15 degrees = 8 steps
    checkPins(TRUE, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(0, stepMotorPosition(motor), "motor wrong position");
    dosteps(3);
    TEST_ASSERT_EQUAL_MESSAGE(3, stepMotorPosition(motor), "motor wrong position");
    dosteps(25);
    TEST_ASSERT_EQUAL_MESSAGE(8, stepMotorPosition(motor), "motor wrong position");
}

void test_rotate() {
    createMotor();
    stepMotorRotate(motor, MotorForward);
    checkPins(TRUE, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(0, stepMotorPosition(motor), "motor wrong position");
    dosteps(3);
    TEST_ASSERT_EQUAL_MESSAGE(3, stepMotorPosition(motor), "motor wrong position");
    dosteps(150);
    TEST_ASSERT_EQUAL_MESSAGE(153, stepMotorPosition(motor), "motor wrong position");
}

void test_stop() {
    createMotor();
    stepMotorStop(motor);
    checkPins(TRUE, FALSE);
    TEST_ASSERT_EQUAL_MESSAGE(0, stepMotorPosition(motor), "motor wrong position");
    dosteps(30);
    TEST_ASSERT_EQUAL_MESSAGE(0, stepMotorPosition(motor), "motor wrong position");
}

void test_rotate_stop() {
    createMotor();
    stepMotorRotate(motor, MotorForward);
    dosteps(30);
    stepMotorStop(motor);
    checkPins(TRUE, FALSE);
    TEST_ASSERT_EQUAL_MESSAGE(30, stepMotorPosition(motor), "motor wrong position");
    dosteps(150);
    TEST_ASSERT_EQUAL_MESSAGE(30, stepMotorPosition(motor), "motor wrong position");
}

void test_rotate_overflow() {
    createMotor();
    stepMotorRotate(motor, MotorForward);
    dosteps(300);
    checkPins(TRUE, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(100, stepMotorPosition(motor), "motor wrong position");
}

void test_rotate_back() {
    createMotor();
    stepMotorRotate(motor, MotorForward);
    checkPins(TRUE, TRUE);
    dosteps(30);
    stepMotorRotate(motor, MotorBackward);
    checkPins(FALSE, TRUE);
    dosteps(100);
    TEST_ASSERT_EQUAL_MESSAGE(131, stepMotorPosition(motor), "motor wrong position");
}

void test_step_inverse_dir() {
    createMotor2(StepMotorInverseDir, TRUE);
    stepMotorRotate(motor, MotorForward);
    checkPins(FALSE, TRUE);
    dosteps(30);
    TEST_ASSERT_EQUAL_MESSAGE(30, stepMotorPosition(motor), "motor wrong position");
}

void test_step_inverse_enable() {
    createMotor2(StepMotorInverseEnable, TRUE);
    stepMotorRotate(motor, MotorForward);
    checkPins(TRUE, FALSE);
    stepMotorStop(motor);
    checkPins(TRUE, TRUE);
}

void test_step_inverse_both() {
    createMotor2(StepMotorInverseEnable | StepMotorInverseDir, TRUE);
    stepMotorRotate(motor, MotorForward);
    checkPins(FALSE, FALSE);
    stepMotorStop(motor);
    checkPins(FALSE, TRUE);
}

void test_change_frequency_step() {
    createMotor();
    stepMotorSetMaxFrequency(motor, 50);
    stepMotorRotate(motor, MotorForward);
    dosteps(3);
    TEST_ASSERT_EQUAL_MESSAGE(2, stepMotorPosition(motor), "motor wrong position");
    dosteps(4);
    TEST_ASSERT_EQUAL_MESSAGE(4, stepMotorPosition(motor), "motor wrong position");
    dosteps(150);
    TEST_ASSERT_EQUAL_MESSAGE(79, stepMotorPosition(motor), "motor wrong position");
}
