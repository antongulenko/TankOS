/*
 *  Created on: 10.12.2012
 *      Author: Anton
 */

#ifndef twi_driver_INTERNAL_H_
#define twi_driver_INTERNAL_H_

#include <platform/twi/driver.h>

extern int handledBytes;
extern TWIBuffer twi_buffer;
extern byte twi_defaultControlFlags;

BOOL start_master_operation();

#define TWI_INITIALIZED (twi_defaultControlFlags != 0)

// These static inline functions are shared between
// twi_driver and twi_driver_slave for the sake of performance.
// They handle TWI state machine.

static inline TwiHandlerStatus HandlerStatus_CONTINUE(byte controlRegister) {
	return (TwiHandlerStatus) { FALSE, controlRegister };
}

static inline TwiHandlerStatus HandlerStatus_FINISHED(byte controlRegister) {
	// Make sure application buffers are but corrupted by faulty TWI operations.
	twi_buffer = EmptyBuffer;
	return (TwiHandlerStatus) { TRUE, controlRegister };
}

static inline TwiHandlerStatus twi_continue() {
	return HandlerStatus_CONTINUE(twi_defaultControlFlags);
}

static inline TwiHandlerStatus twi_end() {
	// Implies twi_running = false!
	return HandlerStatus_FINISHED(twi_defaultControlFlags);
}

static inline TwiHandlerStatus twi_send(byte data) {
	TWDR = data;
	return twi_continue();
}

static inline void twi_read_byte() {
	// Additional if-guard necessary, e.g. if the receive-buffer size
	// is zero (because in Master-Receiver mode, we have to receive
	// AT LEAST one byte, so we will end up here, even if the receive-
	// buffer has no space at all reserved. Fix by skipping this byte).
	if (twi_buffer.data != NULL && handledBytes < twi_buffer.size)
		twi_buffer.data[handledBytes++] = TWDR;
}

#endif /* twi_driver_INTERNAL_H_ */
