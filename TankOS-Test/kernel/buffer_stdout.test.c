
#include <platform/Avr/buffer_stdout.h>
#include <mocks/simulation.h>
#include <unity.h>
#include <string.h>

char buf[5 * 2000]; // 1000 times "Hello"
int printed = 0;
char flush_buf[sizeof(buf)];
int flushed = 0;
int dropped = 0;

void setUp() {
    printed = flushed = dropped = 0;
    init_native_simulation();
    init_buffer_stdout();
    memset(flush_buf, 0, sizeof(flush_buf));
    for (int i = 0; i < 2000; i++) {
        memcpy(buf + 5*i, "Hello", 5);
    }
}

void tearDown() {
}

void check_status() {
    BufferStatus st = buffer_stdout_status();
    TEST_ASSERT_EQUAL_UINT16_MESSAGE(STDOUT_BUFFER_SIZE, st.capacity, "Unexpected buffer capacity");
    TEST_ASSERT_EQUAL_UINT16_MESSAGE(printed - flushed - dropped, st.used, "Unexpected used buffer space");
    TEST_ASSERT_EQUAL_UINT32_MESSAGE(dropped, st.dropped, "Unexpected dropped characters");
}

void print(int len) {
    for (int i = 0; i < len; i++) {
        buffer_stdout_putchar(buf[printed], &buffer_stdout_stream);
        printed++;
    }
    if (printed > STDOUT_BUFFER_SIZE + flushed) {
        dropped += printed - flushed - STDOUT_BUFFER_SIZE;
    }
    check_status();
}

void flush(uint16_t len) {
    uint16_t res = buffer_stdout_flush(flush_buf + flushed, len);
    TEST_ASSERT_EQUAL_INT_MESSAGE(len, res, "Unexpected result from stdout_buffer_flush");
    flushed += res;
    printed -= dropped;
    dropped = 0;
    check_status();
}

void test1() {
    print(10);
    print(100);
    flush(50);

    uint16_t res = buffer_stdout_flush(flush_buf + flushed, 100);
    TEST_ASSERT_EQUAL_INT_MESSAGE(100+10-50, res, "Unexpected result from stdout_buffer_flush");
    flushed += res;
    check_status();

    print(50);
    print(STDOUT_BUFFER_SIZE - 170);
    print(150);

    TEST_ASSERT_EQUAL_HEX8_ARRAY_MESSAGE(buf, flush_buf, flushed, "flushed stdout buffer does not match");
}

void test() {
    print(STDOUT_BUFFER_SIZE);
    flush(STDOUT_BUFFER_SIZE / 2);
    flush(STDOUT_BUFFER_SIZE / 2);

    print(STDOUT_BUFFER_SIZE / 2);
    print(STDOUT_BUFFER_SIZE / 2);
    flush(STDOUT_BUFFER_SIZE / 4);
    flush(STDOUT_BUFFER_SIZE / 4);
    flush(STDOUT_BUFFER_SIZE / 4);
    flush(STDOUT_BUFFER_SIZE / 4);

    print(3);print(3);print(3);print(3);
    print(STDOUT_BUFFER_SIZE);
    flush(STDOUT_BUFFER_SIZE);

    print(STDOUT_BUFFER_SIZE);
    print(STDOUT_BUFFER_SIZE);
    flush(10);
    flush(STDOUT_BUFFER_SIZE - 10);

    TEST_ASSERT_EQUAL_UINT8_ARRAY_MESSAGE(buf, flush_buf, flushed, "flushed stdout buffer does not match");
}

void test_flush_to_eeprom() {
    char *s = "HALLO CHAR";
    size_t len = strlen(s);
    for (int i = 0; i < len; i++) {
        buffer_stdout_putchar(s[i], &buffer_stdout_stream);
    }
    uint16_t res = buffer_stdout_flush_to_eeprom((void*) 10, len);
    TEST_ASSERT_EQUAL_STRING_LEN(s, ((char*)eeprom_data) + 10, len);
    TEST_ASSERT_EQUAL_MESSAGE(10, res, "flushed wrong number of chars");
}
