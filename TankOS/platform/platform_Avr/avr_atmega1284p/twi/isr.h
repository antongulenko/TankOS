
#include <platform/twi/driver.h>

INTERRUPT_HANDLER(TWI_vect) {
	TwiHandlerStatus status = TWI_HANDLE_FUNCTION(TW_STATUS);
	
	TWCR = status.controlRegister;
	if (status.handlerFinished) {
		twi_running = FALSE;
	}
}
