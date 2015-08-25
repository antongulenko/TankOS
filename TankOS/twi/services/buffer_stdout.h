#ifndef TWI_SERVICE_BUFFER_STDOUT_H_
#define TWI_SERVICE_BUFFER_STDOUT_H_

#include <twi/rpc/client_functions.h>
#include <kernel/buffer_stdout.h>

typedef enum {
    QUERY_STDOUT_BUFFER_STATUS_OPERATION = 20,
    FLUSH_STDOUT_BUFFER_OPERATION,
} PROTOCOL_BUFFER_STDOUT_SERVICE;

TWI_RPC_FUNCTION_NOARGS(query_stdout_buffer_status, QUERY_STDOUT_BUFFER_STATUS_OPERATION, BufferStatus)
TWI_RPC_FUNCTION_VARRES(flush_stdout_buffer, FLUSH_STDOUT_BUFFER_OPERATION, uint16_t, char)

#endif // TWI_SERVICE_BUFFER_STDOUT_H_
