
#include "driver.h"
#include <kernel/kernel_init.h>

KERNEL_INIT(TWI_INIT_FUNCTION)

INTERRUPT_HANDLER(TWI_vect) {
	TwiHandlerStatus status = TWI_HANDLE_FUNCTION(TW_STATUS);

	// Set the control register first!
	TWCR = status.controlRegister;
	// Then reset the twi_running flag, if necessary
	if (status.handlerFinished) {
		twi_running = FALSE;
	}
}
