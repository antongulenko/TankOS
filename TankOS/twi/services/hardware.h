#ifndef TWI_SERVICE_HARDWARE_H_
#define TWI_SERVICE_HARDWARE_H_

#include <twi/rpc/client_functions.h>

#include <platform/Avr/early_init.h>
#include <kernel/millisecond_clock.h>
#include <platform/Avr/memory.h>

typedef enum {
    QUERY_RESET_STATUS_OPERATION = 1,
    QUERY_MILLISECONDS_OPERATION,
    HARDWARE_RESET_OPERATION,
    QUERY_MEMORY_INFO_OPERATION,
    QUERY_INIT_STATUS_OPERATION,
    QUERY_EEPROM_RESETS_OPERATION
} PROTOCOL_HARDWARE_SERVICE; // Start at 1

TWI_RPC_FUNCTION_NOARGS(query_reset_condition, QUERY_RESET_STATUS_OPERATION, ResetCondition)
TWI_RPC_FUNCTION_NOARGS(query_milliseconds, QUERY_MILLISECONDS_OPERATION, uint32_t)
TWI_RPC_FUNCTION_NOTIFY_ASYNC(do_hardware_reset, HARDWARE_RESET_OPERATION) // Async since after reset no reply will be possible
TWI_RPC_FUNCTION_NOARGS(query_memory_info, QUERY_MEMORY_INFO_OPERATION, MemoryInfo)
TWI_RPC_FUNCTION_NOARGS(query_init_status, QUERY_INIT_STATUS_OPERATION, InitStatus)
TWI_RPC_FUNCTION_NOARGS(query_eeprom_resets, QUERY_EEPROM_RESETS_OPERATION, uint16_t)

#endif // TWI_SERVICE_HARDWARE_H_
