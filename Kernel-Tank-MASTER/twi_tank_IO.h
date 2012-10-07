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

#include <kernel/TWI/twi_rpc_client.h>

TWI_RPC_FUNCTION_NOTIFY	(tankIO_reset, TANK_IO_reset)
TWI_RPC_FUNCTION_NOARGS	(tankIO_isInitialized, TANK_IO_isInitialized, uint8_t)

TWI_RPC_FUNCTION_NOARGS	(tankIO_buttonStatus, TANK_IO_buttonStatus, uint8_t)
TWI_RPC_FUNCTION_NOARGS	(tankIO_pressedButtons, TANK_IO_pressedButtons, uint8_t)

TWI_RPC_FUNCTION_VOID	(tankIO_enableLed, TANK_IO_enableLed, SingleLed)
TWI_RPC_FUNCTION_VOID	(tankIO_disableLed, TANK_IO_disableLed, SingleLed)
TWI_RPC_FUNCTION_VOID	(tankIO_setLed, TANK_IO_setLed, SingleLed)

TWI_RPC_FUNCTION_VOID	(tankIO_enableLeds, TANK_IO_enableLeds, TankIoLeds)
TWI_RPC_FUNCTION_VOID	(tankIO_disableLeds, TANK_IO_disableLeds, TankIoLeds)
TWI_RPC_FUNCTION_VOID	(tankIO_setLeds, TANK_IO_setLeds, MaskedLeds)

TWI_RPC_FUNCTION_VOID	(tankIO_blinkLed, TANK_IO_blinkLed, BlinkLedParam)
TWI_RPC_FUNCTION_VOID	(tankIO_blinkLeds, TANK_IO_blinkLeds, BlinkLedsParam)
TWI_RPC_FUNCTION_VOID	(tankIO_blinkAllLeds, TANK_IO_blinkAllLeds, BlinkAllLedsParam)

TWI_RPC_FUNCTION_VOID	(tankIO_flashLed, TANK_IO_flashLed, FlashLedParam)
TWI_RPC_FUNCTION_VOID	(tankIO_flashLeds, TANK_IO_flashLeds, FlashLedsParam)
TWI_RPC_FUNCTION_VOID	(tankIO_flashAllLeds, TANK_IO_flashAllLeds, FlashAllLedsParam)

TWI_RPC_FUNCTION_VOID	(tankIO_blinkByte, TANK_IO_blinkByte, BlinkByteParam)

// Put header and implementation here to avoid additional .c-file.
#ifdef _KERNEL_
	void tankIO_wait() {
		while (!tankIO_isInitialized() != TANK_IO_INITIALIZED) {
			_delay_ms(20);
		}
	}	
#else
	// Loop, until the IO-processor is initialized.
	void tankIO_wait();
#endif

#endif