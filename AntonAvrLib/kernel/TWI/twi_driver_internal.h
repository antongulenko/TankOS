/*
 * twi_driver_internal.h
 *
 *  Created on: 10.12.2012
 *      Author: Anton
 */

#ifndef twi_driver_INTERNAL_H_
#define twi_driver_INTERNAL_H_

#include "twi_driver_handler.h"

extern int handledBytes;
extern TWIBuffer twi_buffer;

BOOL start_master_operation();

// These static inline functions are shared between
// twi_driver and twi_driver_slave for the sake of performance.
// They handle TWI state machine.

static inline TwiHandlerStatus HandlerStatus_OK(byte controlRegister) {
	return (TwiHandlerStatus) { FALSE, controlRegister };
}

static inline TwiHandlerStatus HandlerStatus_FINISHED(byte controlRegister) {
	return (TwiHandlerStatus) { TRUE, controlRegister };
}

extern byte twi_defaultControlFlags;

static inline TwiHandlerStatus twi_start() {
	return HandlerStatus_OK(twi_defaultControlFlags | _BV(TWSTA));
}

static inline TwiHandlerStatus twi_stop() {
	// Implies twi_running = false!
	return HandlerStatus_FINISHED(twi_defaultControlFlags | _BV(TWSTO));
}

static inline TwiHandlerStatus twi_ack() {
	return HandlerStatus_OK(twi_defaultControlFlags | _BV(TWEA));
}

static inline TwiHandlerStatus twi_continue() {
	return HandlerStatus_OK(twi_defaultControlFlags);
}

static inline TwiHandlerStatus twi_end() {
	// Implies twi_running = false!
	return HandlerStatus_FINISHED(twi_defaultControlFlags);
}

static inline TwiHandlerStatus twi_send_ack(byte data) {
	TWDR = data;
	return twi_ack();
}

static inline TwiHandlerStatus twi_send(byte data) {
	TWDR = data;
	return twi_continue();
}

static inline TwiHandlerStatus twi_send_last(byte data) {
	TWDR = data;
	return twi_end();
}

static inline TwiHandlerStatus twi_stop_or_next() {
	if (!start_master_operation()) {
		return twi_stop();
	} else {
		// Next operation, without releasing the bus. Repeated START condition!
		return twi_start();
	}
}

static inline TwiHandlerStatus twi_ack_receive() {
	// Directly after a (repeated) start condition, in MR mode,
	// buffer size 0 and 1 both lead to a NACK of the first received byte.
	// In case of buffer size 0, this byte will be 'useless'.
	if (handledBytes + 1 < twi_buffer.size) {
		return twi_ack(); // Still more than one byte to go.
	} else {
		return twi_continue();  // Want to receive just one more byte. Next byte will get NOT ACK.
	}
}

static inline void twi_read_byte() {
	// Additional if-guard necessary, e.g. if the receive-buffer size
	// is zero (because in Master-Receiver mode, we have to receive
	// AT LEAST one byte, so we will end up here, even if the receive-
	// buffer has no space at all reserved. Fix by skipping this byte).
	if (handledBytes < twi_buffer.size)
		twi_buffer.data[handledBytes++] = TWDR;
}

#endif /* twi_driver_INTERNAL_H_ */
