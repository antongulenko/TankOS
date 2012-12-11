
#include "twi_raw_handler.h"
#include "twi_raw.h"
#include "../kernel_init.h"

KERNEL_INIT(TWI_INIT_FUNCTION)

ISR(TWI_vect) {
	TwiHandlerStatus status = TWI_HANDLE_FUNCTION(TW_STATUS);

	// Set the control register first!
	TWCR = status.controlRegister;
	// Then reset the twi_running flag, if necessary
	if (status.handlerFinished) {
		twi_running = FALSE;
	}
}
