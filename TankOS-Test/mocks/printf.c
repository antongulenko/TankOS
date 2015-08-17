
#include "printf.h"
#include <stdarg.h>
#include <string.h>
#include <stdio.h>

char mock_printf_buffer[MOCK_PRINTF_BUF_SIZE] = {0};
unsigned int mock_printf_written = 0;

void init_mock_printf() {
    memset(mock_printf_buffer, 0, sizeof(mock_printf_buffer));
    mock_printf_written = 0;
}

int mock_printf(const char *__fmt, ...) {
    va_list args;
    va_start(args, __fmt);
    int result = vsprintf(mock_printf_buffer + mock_printf_written, __fmt, args);
    mock_printf_written += result;
    va_end(args);
    return result;
}
