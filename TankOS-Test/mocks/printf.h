#ifndef __MOCK_PRINTF__
#define __MOCK_PRINTF__

#define MOCK_PRINTF_BUF_SIZE (4096*4)

extern char mock_printf_buffer[MOCK_PRINTF_BUF_SIZE];
extern unsigned int mock_printf_written;

void init_mock_printf();

#endif // __MOCK_PRINTF__
