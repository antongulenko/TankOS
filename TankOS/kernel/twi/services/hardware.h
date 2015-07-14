#ifndef TWI_SERVICE_HARDWARE_H_
#define TWI_SERVICE_HARDWARE_H_

#include <kernel/twi/rpc/client_functions.h>
#include <kernel/reset_condition.h>

enum {
    QUERY_RESET_STATUS_OPERATION = 0x01,
    QUERY_MILLISECONDS_OPERATION = 0x02,
};

TWI_RPC_FUNCTION_NOARGS(query_reset_condition, QUERY_RESET_STATUS_OPERATION, ResetCondition)
TWI_RPC_FUNCTION_NOARGS(query_milliseconds, QUERY_MILLISECONDS_OPERATION, uint32_t)

#endif // TWI_SERVICE_HARDWARE_H_
