#ifndef TWI_TANK_IO_H_
#define TWI_TANK_IO_H_

#include <tank_IO_protocol.h>
#include <kernel/twi/driver/driver.h>

extern TWIDevice tank_IO;

#ifdef TWI_DEVICE
#undef TWI_DEVICE
#endif
#define TWI_DEVICE tank_IO

#include <kernel/twi/rpc/client.h>

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

// Loop, until the IO-processor is initialized.
void tankIO_wait();

#endif
