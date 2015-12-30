#include <unity.h>
#include <mocks/port.h>
#include <devices/motor_step.h>
#include <devices/motor_smooth.h>
#include <mocks/delay.h>

ticks_t TICKS = 1000;
Pin dir, step, enable;
StepMotor motor;

#define STEPS_AFTER_1 1
#define STEPS_AFTER_6 2
#define STEPS_AFTER_26 6
#define STEPS_AFTER_1500 675
#define STEPS_FOR_MAX 2300

void setUp() {
    init_fake_port();
    dir = testPin1;
    step = testPin2;
    enable = testPin3;
    setupStepMotors(TICKS);
}

static void createMotor2(StepMotorFlags flags, BOOL enablePin) {
    Pin ePin = enablePin ? enable : Invalid(Pin);
    motor = newStepMotor(step, dir, ePin, 200, flags);
    TEST_ASSERT_TRUE_MESSAGE(IsValid(motor), "StepMotor invalid after create");
    TEST_ASSERT_TRUE_MESSAGE(stepMotorValid(motor), "StepMotor not valid after create");

    pos_t pos = stepMotorPosition(motor);
    TEST_ASSERT_EQUAL_MESSAGE(0, pos, "StepMotor not at position 0 after create");
    TEST_ASSERT_EQUAL_MESSAGE(TICKS / 200 * 600, stepMotorGetMaxSpeed(motor), "Step motor does not have correct frequency");

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
    createMotor2(StepMotorNormal, FALSE);
}

void test_occupied_pin() {
    occupyPin(dir, 22);
    motor = newStepMotor(step, dir, enable, 200, StepMotorNormal);
    TEST_ASSERT_FALSE_MESSAGE(IsValid(motor), "motor should not be valid");
    TEST_ASSERT_FALSE_MESSAGE(stepMotorValid(motor), "motor should not be valid");
    TEST_ASSERT_EQUAL_MESSAGE(PinNoOccupation, pinOccupation(step), "invalid motor still occupied pin!");
    TEST_ASSERT_EQUAL_MESSAGE(22, pinOccupation(dir), "invalid motor still occupied pin!");
    TEST_ASSERT_EQUAL_MESSAGE(PinNoOccupation, pinOccupation(enable), "invalid motor still occupied pin!");
}

void test_set_frequency() {
    createMotor();
    speed_t max = TICKS / 200 * 600;
    BOOL res = stepMotorSetMaxSpeed(motor, max);
    TEST_ASSERT_TRUE_MESSAGE(res, "frequency not set correctly");
    TEST_ASSERT_EQUAL_MESSAGE(max, stepMotorGetMaxSpeed(motor), "Step motor does not have correct frequency");

    res = stepMotorSetMaxSpeed(motor, max / 3);
    TEST_ASSERT_TRUE_MESSAGE(res, "frequency not set correctly");
    TEST_ASSERT_EQUAL_MESSAGE(max / 3, stepMotorGetMaxSpeed(motor), "Step motor does not have correct frequency");

    res = stepMotorSetMaxSpeed(motor, max + 50);
    TEST_ASSERT_FALSE_MESSAGE(res, "frequency should not be set correctly");
    TEST_ASSERT_EQUAL_MESSAGE(max, stepMotorGetMaxSpeed(motor), "Step motor does not have correct frequency");
}

void dosteps(int num) {
    while (num-- > 0) {
        motor_step_tick();
    }
}

void checkPins(int LINE, BOOL dirUp, BOOL enableUp) {
    UNITY_TEST_ASSERT_EQUAL_INT((dirUp), (isPinOutputHigh(dir)), LINE, "wrong dir pin");
    UNITY_TEST_ASSERT_EQUAL_INT((enableUp), (isPinOutputHigh(enable)), LINE, "wrong enable pin");
    //TEST_ASSERT_EQUAL_MESSAGE(dirUp, isPinOutputHigh(dir), "wrong direction pin set");
    //TEST_ASSERT_EQUAL_MESSAGE(enableUp, isPinOutputHigh(enable), "wrong enable pin set");
}

void checkMaxSpeed(StepMotor motor) {
    pos_t pos = stepMotorPosition(motor);
    dosteps(10);
    pos_t diff = stepMotorPosition(motor) - pos;
    if (diff < 0) {
        TEST_ASSERT_EQUAL_MESSAGE(-10, diff, "motor did not reach max speed");
    } else {
        TEST_ASSERT_EQUAL_MESSAGE(10, diff, "motor did not reach max speed");
    }
}

void test_step() {
    createMotor();
    stepMotorStep(motor, 5000);
    checkPins(__LINE__, FALSE, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(0, stepMotorPosition(motor), "motor already moved");

    dosteps(1);
    checkPins(__LINE__, TRUE, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(STEPS_AFTER_1, stepMotorPosition(motor), "motor wrong position");
    dosteps(5);
    TEST_ASSERT_EQUAL_MESSAGE(STEPS_AFTER_6, stepMotorPosition(motor), "motor wrong position");
    dosteps(20);
    TEST_ASSERT_EQUAL_MESSAGE(STEPS_AFTER_26, stepMotorPosition(motor), "motor wrong position");

    dosteps(STEPS_FOR_MAX);
    checkMaxSpeed(motor);

    dosteps(5000);
    TEST_ASSERT_EQUAL_MESSAGE(5000, stepMotorPosition(motor), "motor wrong position");
    dosteps(1000);
    TEST_ASSERT_EQUAL_MESSAGE(5000, stepMotorPosition(motor), "motor wrong position");
}

void test_step_slow() {
    createMotor();
    stepMotorStep(motor, 10);
    checkPins(__LINE__, FALSE, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(0, stepMotorPosition(motor), "motor already moved");

    dosteps(1);
    checkPins(__LINE__, TRUE, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(STEPS_AFTER_1, stepMotorPosition(motor), "motor wrong position");
    dosteps(25);
    TEST_ASSERT_EQUAL_MESSAGE(STEPS_AFTER_26, stepMotorPosition(motor), "motor wrong position");

    dosteps(1000);
    TEST_ASSERT_EQUAL_MESSAGE(10, stepMotorPosition(motor), "motor wrong position");
}

void test_step_backward() {
    createMotor();
    stepMotorStep(motor, -5000);
    checkPins(__LINE__, FALSE, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(0, stepMotorPosition(motor), "motor already moved");

    dosteps(1);
    checkPins(__LINE__, FALSE, TRUE); // motor_smooth_tick was called
    TEST_ASSERT_EQUAL_MESSAGE(-1, stepMotorPosition(motor), "motor wrong position");
    dosteps(5);
    TEST_ASSERT_EQUAL_MESSAGE(-2, stepMotorPosition(motor), "motor wrong position");
    dosteps(20);
    TEST_ASSERT_EQUAL_MESSAGE(-6, stepMotorPosition(motor), "motor wrong position");

    dosteps(2200); // Max speed now
    checkMaxSpeed(motor);

    dosteps(5000);
    TEST_ASSERT_EQUAL_MESSAGE(-5000, stepMotorPosition(motor), "motor wrong position");
    dosteps(1000);
    TEST_ASSERT_EQUAL_MESSAGE(-5000, stepMotorPosition(motor), "motor wrong position");
}

void test_rotate() {
    createMotor();
    stepMotorRotate(motor, MotorForward);
    checkPins(__LINE__, FALSE, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(0, stepMotorPosition(motor), "motor wrong position");

    dosteps(1);
    checkPins(__LINE__, TRUE, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(STEPS_AFTER_1, stepMotorPosition(motor), "motor wrong position");
    dosteps(1499);
    TEST_ASSERT_EQUAL_MESSAGE(STEPS_AFTER_1500, stepMotorPosition(motor), "motor wrong position");
    dosteps(STEPS_FOR_MAX - 1500);
    checkMaxSpeed(motor);
}

void test_rotate_backward() {
    createMotor();
    stepMotorRotate(motor, MotorBackward);
    checkPins(__LINE__, FALSE, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(0, stepMotorPosition(motor), "motor wrong position");

    dosteps(1);
    checkPins(__LINE__, FALSE, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(-STEPS_AFTER_1, stepMotorPosition(motor), "motor wrong position");
    dosteps(1499);
    TEST_ASSERT_EQUAL_MESSAGE(-STEPS_AFTER_1500, stepMotorPosition(motor), "motor wrong position");
    dosteps(STEPS_FOR_MAX - 1500);
    checkMaxSpeed(motor);
}

void test_stopped_after_init() {
    createMotor();
    checkPins(__LINE__, FALSE, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(0, stepMotorPosition(motor), "motor wrong position");
    dosteps(30);
    TEST_ASSERT_EQUAL_MESSAGE(0, stepMotorPosition(motor), "motor wrong position");
}

void test_stop() {
    createMotor();
    stepMotorStop(motor);
    checkPins(__LINE__, FALSE, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(0, stepMotorPosition(motor), "motor wrong position");
    dosteps(30);
    TEST_ASSERT_EQUAL_MESSAGE(0, stepMotorPosition(motor), "motor wrong position");
}

void test_rotate_stop() {
    createMotor();
    stepMotorRotate(motor, MotorForward);
    dosteps(100);
    TEST_ASSERT_EQUAL_MESSAGE(22, stepMotorPosition(motor), "motor wrong position");
    stepMotorStop(motor);
    checkPins(__LINE__, TRUE, TRUE);
    dosteps(1000);
    TEST_ASSERT_EQUAL_MESSAGE(44, stepMotorPosition(motor), "motor wrong position");
}

void test_rotate_change() {
    createMotor();
    stepMotorRotate(motor, MotorForward);
    checkPins(__LINE__, FALSE, TRUE);
    dosteps(1000);
    checkPins(__LINE__, TRUE, TRUE);

    stepMotorRotate(motor, MotorBackward);
    dosteps(1001);
    checkPins(__LINE__, TRUE, TRUE);
    dosteps(1); // Down to speed 0
    checkPins(__LINE__, FALSE, TRUE);

    dosteps(1583); // Speed up in reverse direction
    TEST_ASSERT_EQUAL_MESSAGE(0, stepMotorPosition(motor), "motor wrong position");
    dosteps(2000);
    TEST_ASSERT_EQUAL_MESSAGE(-1889, stepMotorPosition(motor), "motor wrong position");
}

void test_step_inverse_dir() {
    createMotor2(StepMotorInverseDir, TRUE);
    stepMotorRotate(motor, MotorForward);
    checkPins(__LINE__, FALSE, TRUE);
    dosteps(27);
    checkPins(__LINE__, FALSE, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(STEPS_AFTER_26, stepMotorPosition(motor), "motor wrong position");
}

void test_disable() {
    createMotor();
    disableStepMotor(motor);
    TEST_ASSERT_EQUAL_MESSAGE(FALSE, stepMotorEnabled(motor), "motor not disabled");
    checkPins(__LINE__, FALSE, FALSE);
    enableStepMotor(motor);
    TEST_ASSERT_EQUAL_MESSAGE(TRUE, stepMotorEnabled(motor), "motor disabled");
    checkPins(__LINE__, FALSE, TRUE);
}

void test_disable_while_step() {
    createMotor();
    stepMotorRotate(motor, MotorForward);
    dosteps(27);
    pos_t pos = stepMotorPosition(motor);
    disableStepMotor(motor);
    TEST_ASSERT_EQUAL_MESSAGE(FALSE, stepMotorEnabled(motor), "motor not disabled");
    checkPins(__LINE__, TRUE, FALSE);
    dosteps(500);
    TEST_ASSERT_EQUAL_MESSAGE(pos, stepMotorPosition(motor), "motor should not move anymore");
}

void test_disable_then_step() {
    createMotor();
    disableStepMotor(motor);
    stepMotorRotate(motor, MotorForward);
    dosteps(27);
    TEST_ASSERT_EQUAL_MESSAGE(STEPS_AFTER_26, stepMotorPosition(motor), "motor should not be disabled anymore");
}

void test_inverse_enable() {
    createMotor2(StepMotorInverseEnable, TRUE);
    stepMotorRotate(motor, MotorForward);
    checkPins(__LINE__, FALSE, FALSE);
    disableStepMotor(motor);
    TEST_ASSERT_EQUAL_MESSAGE(FALSE, stepMotorEnabled(motor), "motor not disabled");
    checkPins(__LINE__, FALSE, TRUE);
    enableStepMotor(motor);
    TEST_ASSERT_EQUAL_MESSAGE(TRUE, stepMotorEnabled(motor), "motor disabled");
    checkPins(__LINE__, FALSE, FALSE);
}

void test_change_max_speed() {
    createMotor();
    stepMotorSetMaxSpeed(motor, 500);
    stepMotorRotate(motor, MotorForward);
    dosteps(1);
    TEST_ASSERT_EQUAL_MESSAGE(STEPS_AFTER_1, stepMotorPosition(motor), "motor wrong position");
    dosteps(5);
    TEST_ASSERT_EQUAL_MESSAGE(STEPS_AFTER_6, stepMotorPosition(motor), "motor wrong position");
    dosteps(20);
    TEST_ASSERT_EQUAL_MESSAGE(STEPS_AFTER_26, stepMotorPosition(motor), "motor wrong position");
    dosteps(STEPS_FOR_MAX);
    pos_t pos = stepMotorPosition(motor);
    dosteps(100);
    TEST_ASSERT_EQUAL_MESSAGE(20, stepMotorPosition(motor) - pos, "motor did not reach max speed");
}

void test_force_stop() {
    createMotor();
    stepMotorRotate(motor, MotorForward);
    dosteps(30);
    pos_t pos = stepMotorPosition(motor);
    stepMotorForceStop(motor);
    checkPins(__LINE__, TRUE, TRUE);
    dosteps(500);
    TEST_ASSERT_EQUAL_MESSAGE(pos, stepMotorPosition(motor), "motor should not move anymore");
}

void test_change_timer_frequency() {
    TICKS = 2000;
    setupStepMotors(TICKS);
    createMotor();
    stepMotorRotate(motor, MotorForward);
    dosteps(1);
    TEST_ASSERT_EQUAL_MESSAGE(1, stepMotorPosition(motor), "motor wrong position");
    dosteps(10);
    TEST_ASSERT_EQUAL_MESSAGE(2, stepMotorPosition(motor), "motor wrong position");
    dosteps(20);
    TEST_ASSERT_EQUAL_MESSAGE(4, stepMotorPosition(motor), "motor wrong position");
    dosteps(1500);
    TEST_ASSERT_EQUAL_MESSAGE(348, stepMotorPosition(motor), "motor wrong position");
    
    dosteps(5000);
    checkMaxSpeed(motor);
    TICKS = 1000;
}

void test_change_timer_frequency_slow_motor_frequency() {
    TICKS = 2000;
    setupStepMotors(TICKS);
    createMotor();
    stepMotorSetMaxSpeed(motor, 500);
    // Numbers from test_change_frequency()
    stepMotorRotate(motor, MotorForward);
    dosteps(1531 * 2); // Takes twice as long due to the increased timer frequency
    TEST_ASSERT_EQUAL_MESSAGE(307, stepMotorPosition(motor), "motor wrong position");
    
    dosteps(5000);
    pos_t pos = stepMotorPosition(motor);
    dosteps(100);
    pos_t diff = stepMotorPosition(motor) - pos;
    TEST_ASSERT_EQUAL_MESSAGE(10, diff, "motor did not reach max speed");
    TICKS = 1000;
}

void test_inverse_long_step() {
    // This tests both StepMotorInverseStep and stepMotorPulse
    createMotor2(StepMotorInverseStep, FALSE);
    stepMotorPulse = StepMotorPulse50us;
    stepMotorStep(motor, 10);
    init_mock_delay();
    dosteps(20);
    TEST_ASSERT_TRUE_MESSAGE(isPinOutputHigh(step), "step pin should be high");
    dosteps(500);
    TEST_ASSERT_EQUAL_MESSAGE(10, DelayUSCalled, "Microsecond delay called wrong number of times");
    TEST_ASSERT_EQUAL_MESSAGE(10 * 50, DelayedUS, "Wrong accumulated microsecond delay");
    TEST_ASSERT_FALSE_MESSAGE(isPinOutputHigh(step), "step pin should be low again");
}
