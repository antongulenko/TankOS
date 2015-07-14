#ifndef TWI_SERVICE_RESET_CONDITION_H_
#define TWI_SERVICE_RESET_CONDITION_H_

#include <kernel/twi/rpc/client_functions.h>
#include <kernel/reset_condition.h>

enum {
    QUERY_RESET_STATUS_OPERATION = 0x01
};

TWI_RPC_FUNCTION_NOARGS(query_reset_condition, QUERY_RESET_STATUS_OPERATION, ResetCondition)

#endif // TWI_SERVICE_RESET_CONDITION_H_
