
#include <alloca.h>
#include "buffer_stdout.h"
#include <twi/rpc/server_handler_functions.h>

static RpcHandlerStatus query_stdout_buffer_status_handler(TWIBuffer *resultBuffer) {
    FILL_RESULT(resultBuffer, BufferStatus, buffer_stdout_status());
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOARGS(query_stdout_buffer_status_handler, QUERY_STDOUT_BUFFER_STATUS_OPERATION)

static RpcHandlerStatus flush_stdout_buffer_handler(uint16_t *_num, uint16_t argSize, TWIBuffer *resultBuffer) {
    if (argSize != sizeof(uint16_t))
        return TWI_RPC_handler_illegal_parameters;
    uint16_t num = *_num;

    // TODO have to trust that all this fits into the buffer
    uint16_t flushed = buffer_stdout_flush((char*) (resultBuffer->data + sizeof(uint16_t)), num);
    memcpy(resultBuffer->data, &flushed, sizeof(uint16_t));

    if (flushed < num) {
        // If the server requested more than we have, fill rest with zeros..
        memset(resultBuffer->data + flushed + sizeof(uint16_t), 0, num - flushed);
    }

    resultBuffer->size = sizeof(uint16_t) + num;
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION(flush_stdout_buffer_handler, FLUSH_STDOUT_BUFFER_OPERATION, uint16_t)
