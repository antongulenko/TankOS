
#include <platform/twi/driver.h>

// #define _PRINT_TWI_
// #define _LOG_TWI_

#ifndef _PRINT_TWI_

INTERRUPT_HANDLER(TWI_vect) {
	TwiHandlerStatus status = TWI_HANDLE_FUNCTION(TW_STATUS);
	
	TWCR = status.controlRegister;
	if (status.handlerFinished) {
		twi_running = FALSE;
	}
}

#else
#ifndef _LOG_TWI_

#include <stdio.h>
INTERRUPT_HANDLER(TWI_vect) {
	uint8_t status_before = TW_STATUS;
	TwiHandlerStatus status = TWI_HANDLE_FUNCTION(TW_STATUS);

	printf("TWI:%x->%x|%x\n", status_before, status.controlRegister, TWDR);
	if (status.handlerFinished)
		printf("TWI:FIN,err:%i\n", twi_error);
	
	TWCR = status.controlRegister;
	if (status.handlerFinished) {
		twi_running = FALSE;
	}
}

#else 

extern uint8_t twi_log[1024];
extern volatile int twi_log_len;

INTERRUPT_HANDLER(TWI_vect) {
	uint8_t status_before = TW_STATUS;
	TwiHandlerStatus status = TWI_HANDLE_FUNCTION(TW_STATUS);

	// twi_log[twi_log_len+0] = 'T';
	twi_log[twi_log_len+0] = status_before;
	// twi_log[twi_log_len++] = status.controlRegister;
	// twi_log[twi_log_len++] = TWDR;
	twi_log_len += 1;
	// if (status.handlerFinished) {
	// 	twi_log[twi_log_len++] = 'F';
	// 	twi_log[twi_log_len++] = twi_error;
		// twi_log[twi_log_len++] = 'x';
		// twi_log[twi_log_len++] = 'x';
		// twi_log_len += 2;
	// }
	
	TWCR = status.controlRegister;
	if (status.handlerFinished) {
		twi_running = FALSE;
	}
}

#endif
#endif
