#ifndef TWI_TANK_IO_H_
#define TWI_TANK_IO_H_

#include "shared/tank_IO_protocol.h"

#include <kernel/TWI/twi_raw.h>
#ifdef _KERNEL_
TWIDevice tank_IO = { TANK_IO_ADDRESS };
#else
extern TWIDevice tank_IO;
#endif
#ifdef TWI_DEVICE
#undef TWI_DEVICE
#endif
#define TWI_DEVICE tank_IO

#include <kernel/TWI/twi_rpc_hash_client.h>

TWI_RPC_FUNCTION_NOARGS	(tankIO_readButtons, TANK_IO_readButtons, uint8_t)
TWI_RPC_FUNCTION_VOID	(tankIO_writeLeds, TANK_IO_writeLeds, uint16_t)

#endif