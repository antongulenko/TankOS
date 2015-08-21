
#include <twi/services/buffer_stdout.h>
#include <kernel/buffer_stdout.h>

#include <twi/rpc/server.h>
#include <twi/rpc/client.h>
#include <mocks/rpc_client.h>

#include <unity.h>
#include <mocks/assertions.h>
#include <string.h>

byte clientLibraryBuffer[1000];
byte serverLibraryBuffer[1000];

void setUp() {
    init_buffer_stdout();
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

    TEST_ASSERT_EQUAL_UINT16_MESSAGE(STDOUT_BUFFER_SIZE, st.capacity, "unexpected buffer capacity");
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
