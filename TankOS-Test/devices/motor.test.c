
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
    motor = destroyMotor(motor);
    TEST_ASSERT_TRUE_MESSAGE(!IsValid(motor), "Motor still valid after destroy.");
    destroyTimer(timer1);
    destroyTimer(timer2);
    destroy_fake_port();
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
