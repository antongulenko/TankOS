
#include <unity.h>
#include <devices/motor_smooth.h>
#include <mocks/port.h>
#include <devices/timer.h>

uint16_t ocr1, ocr2;
Timer timer1, timer2;
Motor motor1, motor2;
SmoothMotor smooth1, smooth2;

void setUp() {
    ocr1 = ocr2 = 0;
    init_fake_port();
    smooth_motor_default_step = 1;
    timer1 = newPwmTimer(((uint8_t*) &ocr1), TimerResolution16, testPin1);
    timer2 = newPwmTimer(((uint8_t*) &ocr2), TimerResolution16, testPin2);
    motor1 = newMotor(MotorNormal, timer1, testPin3);
    motor2 = newMotor(MotorNormal, timer2, testPin4);
    smooth1 = Invalid(SmoothMotor);
    smooth2 = Invalid(SmoothMotor);
    stopMotor(motor1);
    stopMotor(motor2);
}

void tearDown() {
    smooth1 = destroySmoothMotor(smooth1);
    smooth2 = destroySmoothMotor(smooth2);
    TEST_ASSERT_FALSE_MESSAGE(IsValid(smooth1), "SmoothMotor still valid after destroy");
    TEST_ASSERT_FALSE_MESSAGE(IsValid(smooth2), "SmoothMotor still valid after destroy");
    TEST_ASSERT_FALSE_MESSAGE(smoothMotorValid(smooth1), "SmoothMotor passed validity check after destroy");
    TEST_ASSERT_FALSE_MESSAGE(smoothMotorValid(smooth2), "SmoothMotor passed validity check after destroy");
    motor1 = destroyMotor(motor1);
    motor2 = destroyMotor(motor2);
    timer1 = destroyTimer(timer1);
    timer2 = destroyTimer(timer2);
    destroy_fake_port();
}

SmoothMotor create(Motor motor) {
    SmoothMotor smooth = newNormalSmoothMotor(motor);
    TEST_ASSERT_TRUE_MESSAGE(smoothMotorValid(smooth), "Smooth motor not valid after create");
    return smooth;
}

void createAll() {
    smooth1 = create(motor1);
    smooth2 = create(motor2);
}

void testInit() {
    createAll();
}

void testInvalidInit() {
    SmoothMotor smooth = newNormalSmoothMotor(Invalid(Motor));
    TEST_ASSERT_FALSE_MESSAGE(IsValid(smooth), "Valid SmoothMotor created from invalid Motor");
}

void test_invalid_functions() {
    // No segfaults
    regulateSpeedForward(Invalid(SmoothMotor), 100);
    regulateSpeedBackward(Invalid(SmoothMotor), 100);
    regulateSpeed(Invalid(SmoothMotor), 100, MotorBackward);
    regulateDirSpeed(Invalid(SmoothMotor), -400);
}

void test_regulateSpeedForward() {
    smooth1 = create(motor1);
    smoothMotorSetStep(smooth1, 333); // Reach target speed/dir with one tick
    regulateSpeedForward(smooth1, 333);
    motor_smooth_tick();
    TEST_ASSERT_EQUAL_MESSAGE(333, getSpeed(motor1), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(MotorForward, getDirection(motor1), "Did not reach correct direction");
}

void test_regulateSpeedBackward() {
    smooth1 = create(motor1);
    smoothMotorSetStep(smooth1, 333);
    regulateSpeedBackward(smooth1, 333);
    motor_smooth_tick();
    TEST_ASSERT_EQUAL_MESSAGE(333, getSpeed(motor1), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(MotorBackward, getDirection(motor1), "Did not reach correct direction");
}

void test_regulateSpeed() {
    smooth1 = create(motor1);
    smoothMotorSetStep(smooth1, 333);
    regulateSpeed(smooth1, 333, MotorForward);
    motor_smooth_tick();
    TEST_ASSERT_EQUAL_MESSAGE(333, getSpeed(motor1), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(MotorForward, getDirection(motor1), "Did not reach correct direction");
}

void test_regulateDirSpeed() {
    smooth1 = create(motor1);
    smoothMotorSetStep(smooth1, 333);
    regulateDirSpeed(smooth1, -333);
    motor_smooth_tick();
    TEST_ASSERT_EQUAL_MESSAGE(666, getSpeed(motor1), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(MotorBackward, getDirection(motor1), "Did not reach correct direction");
}

void test_two_motors() {
    createAll();
    smoothMotorSetStep(smooth1, 333);
    smoothMotorSetStep(smooth2, 333);
    regulateSpeedForward(smooth1, 333);
    regulateSpeedBackward(smooth2, 444);
    motor_smooth_tick();
    TEST_ASSERT_EQUAL_MESSAGE(333, getSpeed(motor1), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(444, getSpeed(motor2), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(MotorForward, getDirection(motor1), "Did not reach correct direction");
    TEST_ASSERT_EQUAL_MESSAGE(MotorBackward, getDirection(motor2), "Did not reach correct direction");
}

void test_delete_motor() {
    createAll();
    smoothMotorSetStep(smooth1, 10);
    smoothMotorSetStep(smooth2, 10);
    regulateSpeedForward(smooth1, 333);
    regulateSpeedBackward(smooth2, 333);
    smooth1 = destroySmoothMotor(smooth1);
    motor_smooth_tick();
    TEST_ASSERT_EQUAL_MESSAGE(10, getSpeed(motor1), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(20, getSpeed(motor2), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(MotorForward, getDirection(motor1), "Did not reach correct direction");
    TEST_ASSERT_EQUAL_MESSAGE(MotorBackward, getDirection(motor2), "Did not reach correct direction");
}

void test_delete_running_motor() {
    createAll();
    smoothMotorSetStep(smooth1, 10);
    smoothMotorSetStep(smooth2, 10);
    regulateSpeedForward(smooth1, 333);
    regulateSpeedBackward(smooth2, 333);
    motor_smooth_tick();
    motor_smooth_tick();
    regulateStopMotor(smooth1);
    regulateStopMotor(smooth2);

    smooth1 = destroySmoothMotor(smooth1);
    motor_smooth_tick();
    motor_smooth_tick();
    motor_smooth_tick();

    TEST_ASSERT_EQUAL_MESSAGE(30, getSpeed(motor1), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(0, getSpeed(motor2), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(MotorForward, getDirection(motor1), "Did not reach correct direction");
    TEST_ASSERT_EQUAL_MESSAGE(MotorStopped, getDirection(motor2), "Did not reach correct direction");
}

void test_multiple_ticks() {
    createAll();
    smoothMotorSetStep(smooth1, 300);
    smoothMotorSetStep(smooth2, 300);
    regulateSpeedForward(smooth1, 500);
    regulateSpeedBackward(smooth2, 1000);
    TEST_ASSERT_EQUAL_MESSAGE(300, getSpeed(motor1), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(300, getSpeed(motor2), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(MotorForward, getDirection(motor1), "Did not reach correct direction");
    TEST_ASSERT_EQUAL_MESSAGE(MotorBackward, getDirection(motor2), "Did not reach correct direction");
    motor_smooth_tick();
    TEST_ASSERT_EQUAL_MESSAGE(500, getSpeed(motor1), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(600, getSpeed(motor2), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(MotorForward, getDirection(motor1), "Did not reach correct direction");
    TEST_ASSERT_EQUAL_MESSAGE(MotorBackward, getDirection(motor2), "Did not reach correct direction");
    motor_smooth_tick();
    TEST_ASSERT_EQUAL_MESSAGE(500, getSpeed(motor1), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(900, getSpeed(motor2), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(MotorForward, getDirection(motor1), "Did not reach correct direction");
    TEST_ASSERT_EQUAL_MESSAGE(MotorBackward, getDirection(motor2), "Did not reach correct direction");
    motor_smooth_tick();
    TEST_ASSERT_EQUAL_MESSAGE(500, getSpeed(motor1), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(1000, getSpeed(motor2), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(MotorForward, getDirection(motor1), "Did not reach correct direction");
    TEST_ASSERT_EQUAL_MESSAGE(MotorBackward, getDirection(motor2), "Did not reach correct direction");
    motor_smooth_tick();
    TEST_ASSERT_EQUAL_MESSAGE(500, getSpeed(motor1), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(1000, getSpeed(motor2), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(MotorForward, getDirection(motor1), "Did not reach correct direction");
    TEST_ASSERT_EQUAL_MESSAGE(MotorBackward, getDirection(motor2), "Did not reach correct direction");
}

void test_change_direction() {
    createAll();
    smoothMotorSetStep(smooth1, 300);
    smoothMotorSetStep(smooth2, 300);
    regulateSpeedForward(smooth1, 3000);
    regulateSpeedBackward(smooth2, 1000);
    for (int i = 0; i < 10; i++)
        motor_smooth_tick();
    TEST_ASSERT_EQUAL_MESSAGE(3000, getSpeed(motor1), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(1000, getSpeed(motor2), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(MotorForward, getDirection(motor1), "Did not reach correct direction");
    TEST_ASSERT_EQUAL_MESSAGE(MotorBackward, getDirection(motor2), "Did not reach correct direction");

    regulateSpeedBackward(smooth1, 500);
    regulateSpeedForward(smooth2, 1500);
    for (int i = 0; i < 20; i++)
        motor_smooth_tick();
    TEST_ASSERT_EQUAL_MESSAGE(500, getSpeed(motor1), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(1500, getSpeed(motor2), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(MotorBackward, getDirection(motor1), "Did not reach correct direction");
    TEST_ASSERT_EQUAL_MESSAGE(MotorForward, getDirection(motor2), "Did not reach correct direction");

    regulateStopMotor(smooth1);
    regulateStopMotor(smooth2);
    for (int i = 0; i < 10; i++)
        motor_smooth_tick();
    TEST_ASSERT_EQUAL_MESSAGE(0, getSpeed(motor1), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(0, getSpeed(motor2), "Did not reach correct speed");
    TEST_ASSERT_EQUAL_MESSAGE(MotorStopped, getDirection(motor1), "Did not reach correct direction");
    TEST_ASSERT_EQUAL_MESSAGE(MotorStopped, getDirection(motor2), "Did not reach correct direction");
}
