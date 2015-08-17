
#include <unity.h>
#include <string.h>
#include <mocks/printf.h>
#include <misc/klib.h>
#include <mocks/port.h>

extern BOOL __kalloc_fail;

void setUp() {
    init_mock_printf();
}

void tearDown() {
    __kalloc_fail = FALSE;
    destroy_fake_port();
}

void assert_output(char *str) {
    int len = strlen(str);
    TEST_ASSERT_EQUAL_STRING_LEN(str, mock_printf_buffer, strlen(str));
    TEST_ASSERT_EQUAL_MESSAGE(len, mock_printf_written, "wrong number of characters in output");
}

void test_klog() {
    klog("test.%i.%i\n", 232, 333);
    assert_output("test.232.333\n");
}

void test_failed_kalloc() {
    void *res = kalloc(444444000000000000);
    TEST_ASSERT_NULL_MESSAGE(res, "huge allocation should not succeed");
    assert_output("kf\n");
}

void test_failed_kcalloc() {
    void *res = kcalloc(2, 444444000000000000);
    TEST_ASSERT_NULL_MESSAGE(res, "huge allocation should not succeed");
    assert_output("cf\n");
}

void test_failed_kalloc_external() {
    __kalloc_fail = TRUE;
    init_fake_port();
    assert_output("kf\nkf\nkf\nkf\nkf\n"); // 4 pins and 1 port.
}

void test_failed_pin_occupation() {
    init_fake_port();
    occupyPinDirectly(testPin1, 30, EmptyConfigData);
    occupyPinDirectly(testPin1, 20, EmptyConfigData);
    occupyPinDirectly(testPin1, 10, EmptyConfigData);
    deOccupyPin(testPin1, 20);
    deOccupyPin(testPin1, 30);
    assert_output("oPD:20<30\noPD:10<30\ndOP:20!30\n");
}
