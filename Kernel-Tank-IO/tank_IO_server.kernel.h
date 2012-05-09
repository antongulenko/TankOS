/*
 * tank_IO_server.kernel
 *
 * Created: 28.04.2012 11:02:16
 *  Author: Anton
 */ 

#ifndef _TANK_IO_SERVER_KERNEL_
#define _TANK_IO_SERVER_KERNEL_

#include "shared/tank_IO_protocol.h"

#define TWI_Slave_Address TANK_IO_ADDRESS
#define TWI_Slave
#include <kernel/TWI/twi_rpc_hash_server.kernel.h>

void tankIO_server_readButtons(TWIBuffer *resultBuffer) {
	uint8_t result = 0;
	if (buttonStatus(Button1)) result |= _BV(1);
	if (buttonStatus(Button2)) result |= _BV(2);
	if (buttonStatus(Button3)) result |= _BV(3);
	if (buttonStatus(Button4)) result |= _BV(4);
	if (buttonStatus(ButtonSwitch)) result |= _BV(5);
	FILL_RESULT(resultBuffer, result, uint8_t)
}
TWI_RPC_SERVER_FUNCTION_NOARGS	(tankIO_server_readButtons, TANK_IO_readButtons, uint8_t)

void tankIO_server_writeLeds(uint16_t *args, uint16_t argSize) {
	setLeds(AllLeds, *args);
}
TWI_RPC_SERVER_FUNCTION_VOID	(tankIO_server_writeLeds, TANK_IO_writeLeds, uint16_t)

#endif