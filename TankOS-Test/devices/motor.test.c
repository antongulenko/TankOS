
#include <unity.h>
#include <mocks/port.h>
#include <devices/motor.h>
#include <kernel/devices/timer.h>

uint16_t ocr1, ocr2;
Timer timer1, timer2;
Pin pwm1, pwm2;
Pin dir1, dir2;
Motor motor;

void setUp() {
    init_fake_port();
    dir1 = testPin1;
    dir2 = testPin2;
    pwm1 = testPin3;
    pwm2 = testPin4;
    ocr1 = ocr2 = 0;
    timer1 = newPwmTimer(((uint8_t*) &ocr1), TimerResolution16, pwm1);
    timer2 = newPwmTimer(((uint8_t*) &ocr2), TimerResolution16, pwm2);
}

void tearDown() {
    if (IsValid(motor)) {
        TEST_ASSERT_TRUE_MESSAGE(motorValid(motor), "valid motor pointer did not pass validity check");
    }
    motor = destroyMotor(motor);
    TEST_ASSERT_TRUE_MESSAGE(!IsValid(motor), "Motor still valid after destroy.");
    destroyTimer(timer1);
    destroyTimer(timer2);
    destroy_fake_port();
}

void makeMotor() {
    motor = newMotor(MotorNormal, timer1, dir1);
    TEST_ASSERT_TRUE_MESSAGE(motorValid(motor), "normal motor not valid after creation");
}

void makeMotor2dir() {
    motor = newMotor2dir(MotorNormal, timer1, dir1, dir2);
    TEST_ASSERT_TRUE_MESSAGE(motorValid(motor), "motor 2 dir not valid after creation");
}

void makeMotor2speed() {
    motor = newMotor2speed(MotorNormal, timer1, timer2);
    TEST_ASSERT_TRUE_MESSAGE(motorValid(motor), "motor 2 speed not valid after creation");
}

void test_invalid_motor() {
    motor = Invalid(Motor);
    TEST_ASSERT_FALSE_MESSAGE(motorValid(motor), "invalid motor passed validity check");
    setSpeed(motor, 333, MotorForward); // no segfault
    TEST_ASSERT_EQUAL_MESSAGE(0, getSpeed(motor), "invalid motor should have speed 0");
    TEST_ASSERT_EQUAL_MESSAGE(MotorStopped, getDirection(motor), "invalid motor should be stopped");
    setDirSpeed(motor, -333); // no segfault
    TEST_ASSERT_EQUAL_MESSAGE(0, getDirSpeed(motor), "invalid motor should have dir speed 0");
}

void test_stop_motor_normal() {
    makeMotor();
    ocr1 = 0xabab;
    setPinOne(dir1);
    stopMotor(motor);
    TEST_ASSERT_EQUAL_MESSAGE(0, ocr1, "stopMotor did not set timer to zero");
    TEST_ASSERT_EQUAL_MESSAGE(FALSE, readPin(dir1), "stopMotor did not set dir pin to zero");
}

void test_stop_motor_2dir() {
    makeMotor2dir();
    ocr1 = 0xabab;
    setPinOne(dir1);
    setPinOne(dir2);
    stopMotor(motor);
    TEST_ASSERT_EQUAL_MESSAGE(0, ocr1, "stopMotor did not set timer to zero");
    TEST_ASSERT_EQUAL_MESSAGE(FALSE, readPin(dir1), "stopMotor did not set dir pin 1 to zero");
    TEST_ASSERT_EQUAL_MESSAGE(FALSE, readPin(dir1), "stopMotor did not set dir pin 2 to zero");
}

void test_stop_motor_2speed() {
    makeMotor2speed();
    ocr1 = ocr2 = 0xabab;
    stopMotor(motor);
    TEST_ASSERT_EQUAL_MESSAGE(0, ocr1, "stopMotor did not set timer 1 to zero");
    TEST_ASSERT_EQUAL_MESSAGE(0, ocr2, "stopMotor did not set timer 2 to zero");
}

void test_getSpeed_motor() {
    makeMotor();
    ocr1 = 0xabab;
    TEST_ASSERT_EQUAL_MESSAGE(0xabab, getSpeed(motor), "normal motor read wrong speed");
}

void test_getSpeed_motor2dir() {
    makeMotor2dir();
    ocr1 = 0xabab;
    TEST_ASSERT_EQUAL_MESSAGE(0xabab, getSpeed(motor), "motor 2 dir read wrong speed");
}

void test_getSpeed_motor2speed() {
    makeMotor2speed();
    ocr1 = 0xabab;
    TEST_ASSERT_EQUAL_MESSAGE(0xabab, getSpeed(motor), "motor 2 speed read wrong speed");
}

void test_getSpeed_motor2speed_2() {
    makeMotor2speed();
    ocr2 = 0xabab;
    TEST_ASSERT_EQUAL_MESSAGE(0xabab, getSpeed(motor), "motor 2 speed read wrong speed");
}

void test_getDirection_motor() {
    makeMotor();
    ocr1 = 0x22;
    setPinOne(dir1);
    TEST_ASSERT_EQUAL_MESSAGE(MotorForward, getDirection(motor), "normal motor read wrong direction (1)");
    setPinZero(dir1);
    TEST_ASSERT_EQUAL_MESSAGE(MotorBackward, getDirection(motor), "normal motor read wrong direction (2)");
    ocr1 = 0;
    TEST_ASSERT_EQUAL_MESSAGE(MotorStopped, getDirection(motor), "normal motor read wrong direction (3)");
}

void test_getDirection_motor2dir() {
    makeMotor2dir();
    ocr1 = 0xabab;
    setPinOne(dir1); setPinZero(dir2);
    TEST_ASSERT_EQUAL_MESSAGE(MotorForward, getDirection(motor), "motor 2 dir read wrong direction (1)");
    setPinZero(dir1); setPinOne(dir2);
    TEST_ASSERT_EQUAL_MESSAGE(MotorBackward, getDirection(motor), "motor 2 dir read wrong direction (2)");
    ocr1 = 0;
    TEST_ASSERT_EQUAL_MESSAGE(MotorStopped, getDirection(motor), "motor 2 dir read wrong direction (3)");
    ocr1 = 0xaaaa;
    setPinZero(dir1); setPinZero(dir2);
    TEST_ASSERT_EQUAL_MESSAGE(MotorStopped, getDirection(motor), "motor 2 dir read wrong direction (4)");
    setPinOne(dir1); setPinOne(dir2);
    TEST_ASSERT_EQUAL_MESSAGE(MotorStopped, getDirection(motor), "motor 2 dir read wrong direction (5)");
}

void test_getDirection_motor2speed() {
    makeMotor2speed();
    ocr1 = 0x00a0;
    TEST_ASSERT_EQUAL_MESSAGE(MotorForward, getDirection(motor), "motor 2 speed read wrong direction (1)");
    ocr1 = 0; ocr2 = 20;
    TEST_ASSERT_EQUAL_MESSAGE(MotorBackward, getDirection(motor), "motor 2 speed read wrong direction (2)");
    ocr1 = 900; ocr2 = 950;
    TEST_ASSERT_EQUAL_MESSAGE(MotorStopped, getDirection(motor), "motor 2 speed read wrong direction (3)");
    ocr1 = 950; ocr2 = 900;
    TEST_ASSERT_EQUAL_MESSAGE(MotorStopped, getDirection(motor), "motor 2 speed read wrong direction (4)");
    ocr1 = 0; ocr2 = 0;
    TEST_ASSERT_EQUAL_MESSAGE(MotorStopped, getDirection(motor), "motor 2 speed read wrong direction (5)");
}

void test_setSpeed_motor() {
    makeMotor();
    setSpeed(motor, 0xabab, MotorForward);
    TEST_ASSERT_EQUAL_MESSAGE(0xabab, ocr1, "normal motor set wrong speed (1)");
    TEST_ASSERT_TRUE_MESSAGE(isPinOutputHigh(dir1), "motor set dir wrong (1)");
    ocr1 = 0;
    setSpeed(motor, 0xabab, MotorBackward);
    TEST_ASSERT_EQUAL_MESSAGE(0xabab, ocr1, "normal motor set wrong speed (2)");
    TEST_ASSERT_FALSE_MESSAGE(isPinOutputHigh(dir1), "motor set dir wrong (2)");
    setSpeed(motor, 0, MotorBackward);
    TEST_ASSERT_EQUAL_MESSAGE(0, ocr1, "normal motor set wrong speed (3)");
    TEST_ASSERT_FALSE_MESSAGE(isPinOutputHigh(dir1), "motor changed dir.. (3)");
    setSpeed(motor, 0xddff, MotorStopped);
    TEST_ASSERT_EQUAL_MESSAGE(0, ocr1, "normal motor set wrong speed (3)");
    TEST_ASSERT_FALSE_MESSAGE(isPinOutputHigh(dir1), "motor changed dir.. (3)");
}

void test_setSpeed_motor2dir() {
    makeMotor2dir();
    setSpeed(motor, 0xabab, MotorForward);
    TEST_ASSERT_EQUAL_MESSAGE(0xabab, ocr1, "motor set wrong speed (1)");
    TEST_ASSERT_TRUE_MESSAGE(isPinOutputHigh(dir1), "motor set dir1 wrong (1)");
    TEST_ASSERT_FALSE_MESSAGE(isPinOutputHigh(dir2), "motor set dir2 wrong (1)");
    ocr1 = 0;
    setSpeed(motor, 0xabab, MotorBackward);
    TEST_ASSERT_EQUAL_MESSAGE(0xabab, ocr1, "motor set wrong speed (2)");
    TEST_ASSERT_FALSE_MESSAGE(isPinOutputHigh(dir1), "motor set dir1 wrong (2)");
    TEST_ASSERT_TRUE_MESSAGE(isPinOutputHigh(dir2), "motor set dir2 wrong (2)");
    setPinOne(dir2);
    setSpeed(motor, 0, MotorBackward);
    TEST_ASSERT_EQUAL_MESSAGE(0, ocr1, "motor set wrong speed (3)");
    TEST_ASSERT_FALSE_MESSAGE(isPinOutputHigh(dir1), "motor set dir1 wrong (2)");
    TEST_ASSERT_FALSE_MESSAGE(isPinOutputHigh(dir2), "motor set dir2 wrong (3)");
    setPinOne(dir1); setPinOne(dir2);
    setSpeed(motor, 0xddff, MotorStopped);
    TEST_ASSERT_EQUAL_MESSAGE(0, ocr1, "motor set wrong speed (3)");
    TEST_ASSERT_FALSE_MESSAGE(isPinOutputHigh(dir1), "motor set dir1 wrong (2)");
    TEST_ASSERT_FALSE_MESSAGE(isPinOutputHigh(dir2), "motor set dir2 wrong (3)");
}

void test_setSpeed_motor2speed() {
    makeMotor2speed();
    setSpeed(motor, 0xabab, MotorForward);
    TEST_ASSERT_EQUAL_MESSAGE(0xabab, ocr1, "normal motor set wrong speed1 (1)");
    TEST_ASSERT_EQUAL_MESSAGE(0, ocr2, "normal motor set wrong speed2 (1)");
    ocr1 = ocr2 = 0;
    setSpeed(motor, 0xabab, MotorBackward);
    TEST_ASSERT_EQUAL_MESSAGE(0, ocr1, "normal motor set wrong speed1 (2)");
    TEST_ASSERT_EQUAL_MESSAGE(0xabab, ocr2, "normal motor set wrong speed2 (2)");
    ocr1 = 0xddff;
    setSpeed(motor, 0, MotorBackward);
    TEST_ASSERT_EQUAL_MESSAGE(0, ocr1, "normal motor set wrong speed1 (3)");
    TEST_ASSERT_EQUAL_MESSAGE(0, ocr1, "normal motor set wrong speed2 (3)");
    setSpeed(motor, 0xddff, MotorStopped);
    TEST_ASSERT_EQUAL_MESSAGE(0, ocr1, "normal motor set wrong speed1 (3)");
    TEST_ASSERT_EQUAL_MESSAGE(0, ocr1, "normal motor set wrong speed2 (3)");
}

void test_setSpeedForward() {
    makeMotor();
    setSpeedForward(motor, 0xabab);
    TEST_ASSERT_EQUAL_MESSAGE(0xabab, ocr1, "normal motor set wrong speed");
    TEST_ASSERT_TRUE_MESSAGE(isPinOutputHigh(dir1), "motor set dir wrong");
}

void test_setSpeedBackward() {
    makeMotor();
    setSpeedBackward(motor, 0xabab);
    TEST_ASSERT_EQUAL_MESSAGE(0xabab, ocr1, "normal motor set wrong speed");
    TEST_ASSERT_FALSE_MESSAGE(isPinOutputHigh(dir1), "motor set dir wrong");
}

void test_dirSpeed_forward() {
    makeMotor();
    setDirSpeed(motor, 400);
    TEST_ASSERT_EQUAL_MESSAGE(400 << 1, ocr1, "normal motor set wrong speed");
    TEST_ASSERT_TRUE_MESSAGE(isPinOutputHigh(dir1), "motor set dir wrong");
    TEST_ASSERT_EQUAL_MESSAGE(400, getDirSpeed(motor), "Wrong dirSpeed returned");
}

void test_dirSpeed_backward() {
    makeMotor();
    setDirSpeed(motor, -400);
    TEST_ASSERT_EQUAL_MESSAGE(400 << 1, ocr1, "normal motor set wrong speed");
    TEST_ASSERT_FALSE_MESSAGE(isPinOutputHigh(dir1), "motor set dir wrong");
    TEST_ASSERT_EQUAL_MESSAGE(-400, getDirSpeed(motor), "Wrong dirSpeed returned");
}

void test_dirSpeed_stop() {
    makeMotor();
    setDirSpeed(motor, 0);
    TEST_ASSERT_EQUAL_MESSAGE(0, ocr1, "normal motor set wrong speed");
    TEST_ASSERT_FALSE_MESSAGE(isPinOutputHigh(dir1), "motor set dir wrong");
    TEST_ASSERT_EQUAL_MESSAGE(0, getDirSpeed(motor), "Wrong dirSpeed returned");
}
