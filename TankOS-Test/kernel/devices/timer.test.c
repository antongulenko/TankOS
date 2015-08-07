
#include <unity.h>
#include <mocks/port.h>
#include <kernel/devices/port.h>
#include <kernel/devices/timer.h>

Timer t;
uint16_t ocr;
#define OCR ((uint8_t*) &ocr)

void setUp() {
    init_fake_port();
    ocr = 0;
}

void tearDown() {
    Pin p = Invalid(Pin);
    if (IsValid(t)) p = getTimerOutputPin(t);
    t = destroyTimer(t);
    TEST_ASSERT_TRUE_MESSAGE(!IsValid(t), "Timer still valid after destroy.");
    if (IsValid(p)) {
        TEST_ASSERT_EQUAL_MESSAGE(PinNoOccupation, pinOccupation(p), "Pin still occupied after pwm-timer destroyed.");
    }
    destroy_fake_port();
}

void test_timer_create() {
    t = newTimer(OCR, TimerResolution8);
    TEST_ASSERT_TRUE_MESSAGE(timerValid(t), "Timer not valid after creation");
    Pin p = getTimerOutputPin(t);
    TEST_ASSERT_FALSE_MESSAGE(IsValid(p), "Non-pwm timer has output-pin");
    TEST_ASSERT_FALSE_MESSAGE(isPwmTimer(t), "Timer should not be pwm timer");
}

void test_pwm_timer_create() {
    t = newPwmTimer(OCR, TimerResolution8, testPin1);
    TEST_ASSERT_TRUE_MESSAGE(timerValid(t), "pwm-timer not valid after creation");
    Pin p = getTimerOutputPin(t);
    TEST_ASSERT_EQUAL_MESSAGE(testPin1.pointer, p.pointer, "pwm timer has wrong output pin");
    TEST_ASSERT_TRUE_MESSAGE(isPwmTimer(t), "pwm timer marked as non-pwm timer");

    TEST_ASSERT_EQUAL_MESSAGE(PinPwmOutput, pinOccupation(p), "timer output pin not occupied correctly");
}

void test_pwm_timer_failedOccupation() {
    occupyPinDirectly(testPin1, 40, EmptyConfigData);
    t = newPwmTimer(OCR, TimerResolution8, testPin1);
    TEST_ASSERT_FALSE_MESSAGE(IsValid(t), "timer should not be valid");
    TEST_ASSERT_FALSE_MESSAGE(timerValid(t), "timer should not pass validity check");
}

void test_invalid_timer() {
    t = Invalid(Timer);
    TEST_ASSERT_FALSE_MESSAGE(isPwmTimer(t), "invalid timer should not be pwm");
    TEST_ASSERT_FALSE_MESSAGE(IsValid(getTimerOutputPin(t)), "invalid timer should not have output pin");
    setTimerValue(t, 23); // Check for no segfault.
    TEST_ASSERT_EQUAL_MESSAGE(0, getTimerValue(t), "invalid timer should have 0 timer value");
}

void assert_write(uint16_t set_val, uint16_t expected, int num) {
    char buf[] = "Unexpected timer ocr value set (run XX)";
    sprintf(buf, "Unexpected timer ocr value set (run %i)", num);
    setTimerValue(t, set_val);
    TEST_ASSERT_EQUAL_HEX_MESSAGE(expected, ocr, buf);
}

void assert_read(uint16_t set_ocr, uint16_t expected, int num) {
    char buf[] = "Unexpected timer ocr value read (run XX)";
    sprintf(buf, "Unexpected timer ocr value read (run %i)", num);
    ocr = set_ocr;
    uint16_t val = getTimerValue(t);
    TEST_ASSERT_EQUAL_HEX_MESSAGE(expected, val, buf);
}

void test_timer_8_set_value() {
    t = newTimer(OCR, TimerResolution8);
    assert_write(10, 0, 1);
    assert_write(255, 0, 2);
    assert_write(256, 1, 3);
    assert_write(0, 0, 4);
    assert_write(3000, HIBYTE(3000), 5);
    assert_write(10000, HIBYTE(10000), 6);
}

void test_timer_9_set_value() {
    t = newTimer(OCR, TimerResolution9);
    assert_write(10, 0, 1);
    assert_write(127, 0, 2);
    assert_write(128, 1, 3);
    assert_write(0, 0, 4);
    assert_write(3000, 3000 >> 7, 5);
    assert_write(10000, 10000 >> 7, 6);
}

void test_timer_10_set_value() {
    t = newTimer(OCR, TimerResolution10);
    assert_write(10, 0, 1);
    assert_write(63, 0, 2);
    assert_write(64, 1, 3);
    assert_write(0, 0, 4);
    assert_write(3000, 3000 >> 6, 5);
    assert_write(10000, 10000 >> 6, 6);
}

void test_timer_16_set_value() {
    t = newTimer(OCR, TimerResolution16);
    assert_write(10, 10, 1);
    assert_write(0, 0, 2);
    assert_write(255, 255, 3);
    assert_write(256, 256, 4);
    assert_write(3000, 3000, 5);
    assert_write(10000, 10000, 6);
}

void test_timer_8_get_value() {
    t = newTimer(OCR, TimerResolution8);
    assert_read(0, 0, 1);
    assert_read(0xFF00, 0, 2);
    assert_read(0xC200, 0, 2);
    assert_read(0xFF01, 0x0100, 3);
    assert_read(0xABDD, 0xDD00, 4);
    assert_read(0x2020, 0x2000, 5);
}

void test_timer_9_get_value() {
    t = newTimer(OCR, TimerResolution9);
    assert_read(0, 0, 1);
    assert_read(0xFE00, 0, 2);
    assert_read(0xAA00, 0, 3);
    assert_read(0xFE22, 0x22 << 7, 4);
    assert_read(0xFEAA, 0xAA << 7, 5);
    assert_read(0xFFAA, 0x1AA << 7, 6);
    assert_read(0xFF22, 0x122 << 7, 7);
}

void test_timer_10_get_value() {
    t = newTimer(OCR, TimerResolution10);
    assert_read(0, 0, 1);
    assert_read(0xFC00, 0, 2);
    assert_read(0xA400, 0, 3);
    assert_read(0xFC22, 0x22 << 6, 4);
    assert_read(0xFCAA, 0xAA << 6, 5);
    assert_read(0xFDAA, 0x1AA << 6, 6);
    assert_read(0xFD22, 0x122 << 6, 7);
    assert_read(0xFAAA, 0x2AA << 6, 6);
    assert_read(0xFA22, 0x222 << 6, 7);
    assert_read(0xAFAA, 0x3AA << 6, 6);
    assert_read(0xAF22, 0x322 << 6, 7);
}

void test_timer_16_get_value() {
    t = newTimer(OCR, TimerResolution16);
    assert_read(0, 0, 1);
    assert_read(0xFF00, 0xFF00, 2);
    assert_read(0xC200, 0xC200, 2);
    assert_read(0xFF01, 0xFF01, 3);
    assert_read(0xABDD, 0xABDD, 4);
    assert_read(0x2020, 0x2020, 5);
    assert_read(0xFAAA, 0xFAAA, 6);
    assert_read(0xFA22, 0xFA22, 7);
    assert_read(0xAFAA, 0xAFAA, 8);
    assert_read(0xAF22, 0xAF22, 9);
}
