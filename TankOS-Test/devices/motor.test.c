
#include <unity.h>
#include <mocks/port.h>
#include <devices/motor.h>
#include <devices/timer.h>

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
    TEST_ASSERT_EQUAL_MESSAGE(PinNoOccupation, pinOccupation(dir1), "dir1 still occupied after destroy");
    TEST_ASSERT_EQUAL_MESSAGE(PinNoOccupation, pinOccupation(dir2), "dir2 still occupied after destroy");

    TEST_ASSERT_TRUE_MESSAGE(!IsValid(motor), "Motor still valid after destroy.");
    destroyTimer(timer1);
    destroyTimer(timer2);
    destroy_fake_port();
}

void check_dir_pin(Pin p) {
    TEST_ASSERT_EQUAL_MESSAGE(PinMotorDirection, pinOccupation(p), "pin not occupied correctly");
}

void makeMotor() {
    motor = newMotor(MotorNormal, timer1, dir1);
    TEST_ASSERT_TRUE_MESSAGE(motorValid(motor), "normal motor not valid after creation");
    check_dir_pin(dir1);
}

void makeMotor2dir() {
    motor = newMotor2dir(MotorNormal, timer1, dir1, dir2);
    TEST_ASSERT_TRUE_MESSAGE(motorValid(motor), "motor 2 dir not valid after creation");
    check_dir_pin(dir1);
    check_dir_pin(dir2);
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
    setMotorValueBounds(motor, 333, 444); // no segfault
}

void test_failed_motor_creation1() {
    occupyPin(testPin1, 40);
    motor = newMotor(MotorNormal, timer1, dir1);
    TEST_ASSERT_FALSE_MESSAGE(IsValid(motor), "motor should not be valid");
    TEST_ASSERT_FALSE_MESSAGE(motorValid(motor), "motor should not pass validity check");
    deOccupyPin(testPin1, 40);
}

void test_failed_motor_creation2() {
    occupyPin(testPin2, 40);
    motor = newMotor2dir(MotorNormal, timer1, dir1, dir2);
    TEST_ASSERT_FALSE_MESSAGE(IsValid(motor), "motor should not be valid");
    TEST_ASSERT_FALSE_MESSAGE(motorValid(motor), "motor should not pass validity check");
    deOccupyPin(testPin2, 40);
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

void test_motor_InverseSpeed() {
    motor = newMotor(MotorNormal | MotorInverseSpeed, timer1, dir1);
    TEST_ASSERT_TRUE_MESSAGE(motorValid(motor), "inverse speed motor not valid after creation");

    setSpeed(motor, 0xaabb, MotorForward);
    TEST_ASSERT_EQUAL_MESSAGE(0xffff - 0xaabb, ocr1, "inverse speed motor set wrong speed");
    TEST_ASSERT_TRUE_MESSAGE(isPinOutputHigh(dir1), "inverse speed motor set dir wrong");
}

void test_motor_InverseDir() {
    motor = newMotor(MotorNormal | MotorInverseDirection, timer1, dir1);
    TEST_ASSERT_TRUE_MESSAGE(motorValid(motor), "inverse dir motor not valid after creation");

    setSpeed(motor, 0xaabb, MotorForward);
    TEST_ASSERT_EQUAL_MESSAGE(0xaabb, ocr1, "inverse dir motor set wrong speed");
    TEST_ASSERT_FALSE_MESSAGE(isPinOutputHigh(dir1), "inverse dir motor set dir wrong");
}

void test_motor_inverse_both() {
    motor = newMotor(MotorNormal | MotorInverseDirection | MotorInverseSpeed, timer1, dir1);
    TEST_ASSERT_TRUE_MESSAGE(motorValid(motor), "inverse dir/speed motor not valid after creation");

    setSpeed(motor, 0xaabb, MotorForward);
    TEST_ASSERT_EQUAL_MESSAGE(0xffff - 0xaabb, ocr1, "inverse dir/speed motor set wrong speed");
    TEST_ASSERT_FALSE_MESSAGE(isPinOutputHigh(dir1), "inverse dir/speed motor set dir wrong");
}

void test_motor_minMaxValue() {
    makeMotor();
    setMotorValueBounds(motor, 1000, 2000);
    setSpeedForward(motor, 1500);
    TEST_ASSERT_EQUAL_MESSAGE(1500, ocr1, "capped motor set wrong speed (1)");
    setSpeedForward(motor, 500);
    TEST_ASSERT_EQUAL_MESSAGE(1000, ocr1, "capped motor set wrong speed (2)");
    setSpeedForward(motor, 2500);
    TEST_ASSERT_EQUAL_MESSAGE(2000, ocr1, "capped motor set wrong speed (3)");
    setMotorValueBounds(motor, 5000, 2000);
    setSpeedForward(motor, 500);
    TEST_ASSERT_EQUAL_MESSAGE(1000, ocr1, "motor bounds changed illegally");
}

void test_motor_ExactConversion() {
    motor = newMotor(MotorNormal | MotorExactConversion, timer1, dir1);

    setSpeedForward(motor, 0);
    TEST_ASSERT_EQUAL_MESSAGE(0, ocr1, "exact motor set wrong speed (1)");
    TEST_ASSERT_EQUAL_MESSAGE(0, getSpeed(motor), "exact motor read wrong speed (1)");

    setSpeedForward(motor, 1);
    TEST_ASSERT_EQUAL_MESSAGE(1, ocr1, "exact motor set wrong speed (2)");
    TEST_ASSERT_EQUAL_MESSAGE(1, getSpeed(motor), "exact motor read wrong speed (2)");

    setSpeedForward(motor, 0x7777);
    TEST_ASSERT_EQUAL_MESSAGE(0x7777, ocr1, "exact motor set wrong speed (3)");
    TEST_ASSERT_EQUAL_MESSAGE(0x7777, getSpeed(motor), "exact motor read wrong speed (3)");

    setSpeedForward(motor, 0xfffe);
    TEST_ASSERT_EQUAL_MESSAGE(0xfffe, ocr1, "exact motor set wrong speed (4)");
    TEST_ASSERT_EQUAL_MESSAGE(0xfffe, getSpeed(motor), "exact motor read wrong speed (4)");

    setSpeedForward(motor, 0xffff);
    TEST_ASSERT_EQUAL_MESSAGE(0xffff, ocr1, "exact motor set wrong speed (5)");
    TEST_ASSERT_EQUAL_MESSAGE(0xffff, getSpeed(motor), "exact motor read wrong speed (5)");
}

void test_motor_ExactConversion_minMaxValue() {
    motor = newMotor(MotorNormal | MotorExactConversion, timer1, dir1);
    setMotorValueBounds(motor, 1000, 2000);

    setSpeedForward(motor, 0);
    TEST_ASSERT_EQUAL_MESSAGE(1000, ocr1, "exact capped motor set wrong speed (1)");
    TEST_ASSERT_EQUAL_MESSAGE(0, getSpeed(motor), "exact capped motor read wrong speed (1)");

    setSpeedForward(motor, 1);
    TEST_ASSERT_EQUAL_MESSAGE(1000, ocr1, "exact capped capped motor set wrong speed (2)");
    TEST_ASSERT_EQUAL_MESSAGE(0, getSpeed(motor), "exact capped motor read wrong speed (2)");

    // These values are a bit random due to the rounding involved in the "ExactConversion" routines.

    setSpeedForward(motor, 0x7777);
    TEST_ASSERT_EQUAL_MESSAGE(1466, ocr1, "exact capped motor set wrong speed (3)");
    TEST_ASSERT_EQUAL_MESSAGE(30539, getSpeed(motor), "exact capped motor read wrong speed (3)");

    setSpeedForward(motor, 0xfffe);
    TEST_ASSERT_EQUAL_MESSAGE(1999, ocr1, "exact capped motor set wrong speed (4)");
    TEST_ASSERT_EQUAL_MESSAGE(65469, getSpeed(motor), "exact capped motor read wrong speed (4)");

    setSpeedForward(motor, 0xffff);
    TEST_ASSERT_EQUAL_MESSAGE(2000, ocr1, "exact capped motor set wrong speed (5)");
    TEST_ASSERT_EQUAL_MESSAGE(0xffff, getSpeed(motor), "exact capped motor read wrong speed (5)");
}
