
#include "twi_raw_handler.h"
#include "twi_raw.h"
#include "../kernel_init.h"

KERNEL_INIT(TWI_INIT_FUNCTION)

ISR(TWI_vect) {
	TwiHandlerStatus status = TWI_HANDLE_FUNCTION(TW_STATUS);

	// Set the control register first!
	if (status.status == TWI_HANDLER_OK ||
		status.status == TWI_HANDLER_FINISHED) {
		TWCR = status.controlRegister;
	}
	// Then reset the twi_running flag, if necessary
	if (status.status == TWI_HANDLER_FINISHED ||
		status.status == TWI_HANDLER_ERROR) {
		twi_running = FALSE;
	}
}
