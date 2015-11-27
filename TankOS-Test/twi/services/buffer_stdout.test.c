
#include <twi/services/buffer_stdout.h>
#include <platform/platform_Avr/buffer_stdout.h>

#include <twi/rpc/server.h>
#include <twi/rpc/client.h>
#include <mocks/rpc_client.h>
#include <mocks/printf.h>
#include <twi/rpc/client_functions_registry.h>

#include <unity.h>
#include <mocks/assertions.h>
#include <string.h>

#define BUFFER_SIZE 2048
char buf_ring[BUFFER_SIZE];
byte clientLibraryBuffer[1000];
byte serverLibraryBuffer[1000];

void setUp() {
    init_buffer_stdout(buf_ring, BUFFER_SIZE, FALSE);
    buffer_stdout_putchar('c', &buffer_stdout_stream);
    buffer_stdout_putchar('d', &buffer_stdout_stream);
    buffer_stdout_putchar('e', &buffer_stdout_stream);

    memset(clientLibraryBuffer, 0, sizeof(clientLibraryBuffer));
    memset(serverLibraryBuffer, 0, sizeof(serverLibraryBuffer));
    twi_rpc_client_init((TWIBuffer) { clientLibraryBuffer, sizeof(clientLibraryBuffer) });
    twi_rpc_server_init((TWIBuffer) { serverLibraryBuffer, sizeof(serverLibraryBuffer) });
}

void tearDown() {
}

void test_query_status() {
    BufferStatus st;
    RpcClientResult status = query_stdout_buffer_status(test_device, &st);

    TEST_ASSERT_EQUAL_UINT16_MESSAGE(BUFFER_SIZE, st.capacity, "unexpected buffer capacity");
    TEST_ASSERT_EQUAL_UINT16_MESSAGE(3, st.used, "unexpected buffer length");
    TEST_ASSERT_EQUAL_UINT16_MESSAGE(0, st.dropped, "unexpected dropped chars");

    assert_correct_status(status);
}

#pragma GCC diagnostic ignored "-Wstrict-aliasing"

void request_buffer(uint16_t buf_size, uint16_t expected_size, char* expected_text) {
    char buf[sizeof(uint16_t) + buf_size];
    RpcClientResult status = flush_stdout_buffer(test_device, buf_size, buf, sizeof(buf));
    assert_correct_status(status);

    uint16_t size = *(uint16_t*) buf;
    char *__stdout = buf + sizeof(uint16_t);
    TEST_ASSERT_EQUAL_UINT16_MESSAGE(expected_size, size, "Unexpected buffer size returned");
    if (size > 0)
        TEST_ASSERT_EQUAL_UINT8_ARRAY_MESSAGE(expected_text, __stdout, size, "Unexpected buffer content returned");
}

void test_flush_less() {
    request_buffer(1, 1, "c");
}

void test_flush_more() {
    request_buffer(30, 3, "cde");
}

void test_flush_exact() {
    request_buffer(3, 3, "cde");
}

void test_less_then_more() {
    request_buffer(1, 1, "cde");
    request_buffer(30, 2, "de");
    request_buffer(5, 0, "");
}

void test_format_results_status() {
    init_mock_printf();
    ClientFunctionRegistryEntry f = lookupClientFunction("query_stdout_buffer_status");
    TEST_ASSERT_NOT_NULL(f);
    TEST_ASSERT_NOT_NULL(f->format_results);

    BufferStatus res;
    query_stdout_buffer_status(test_device, &res);

    f->format_results(mock_printf, &res, sizeof(res));
    TEST_ASSERT_EQUAL_STRING("Stdout status: used 3 of 2048, 0 dropped", mock_printf_buffer);
}

void test_format_results_flush() {
    init_mock_printf();
    ClientFunctionRegistryEntry f = lookupClientFunction("flush_stdout_buffer");
    TEST_ASSERT_NOT_NULL(f);
    TEST_ASSERT_NOT_NULL(f->format_results);

    char res[sizeof(uint16_t) + 10];
    flush_stdout_buffer(test_device, 4, res, sizeof(res));

    f->format_results(mock_printf, &res, sizeof(res));
    TEST_ASSERT_EQUAL_STRING("Stdout: cde", mock_printf_buffer);
}
