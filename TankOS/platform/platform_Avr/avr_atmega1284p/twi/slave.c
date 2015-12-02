
#include "internal.h"
#include <platform/twi/slave.h>

// TODO -- Implement configuration of GC calls (TWGCE bit, LSB in TWAR)

BOOL twi_init_slave(Pin dataPin, Pin clockPin) {
	if (!twi_init(dataPin, clockPin)) return FALSE;

	// Enable acknowledging of Master-requests (Slave-mode).
	// We are ALWAYS setting the TWEA flag. This is only valid because of the strategy
	// described in the long comments in the switch below.
	TWCR |= _BV(TWEA);
	twi_defaultControlFlags |= _BV(TWEA);
    return TRUE;
}

static inline TwiHandlerStatus twi_send_last(byte data) {
	TWDR = data;
	return HandlerStatus_CONTINUE(DEFAULT_TWCR);
}

static inline TwiHandlerStatus twi_continue() {
	return HandlerStatus_CONTINUE(DEFAULT_TWCR | _BV(TWEA));
}

static inline TwiHandlerStatus twi_return_nack() {
	return HandlerStatus_CONTINUE(DEFAULT_TWCR);
}

static inline TwiHandlerStatus twi_send(byte data) {
	TWDR = data;
	return HandlerStatus_CONTINUE(DEFAULT_TWCR | _BV(TWEA));
}

// The callback functions called by this module.
static TWIBuffer (*twi_handleMasterRequest)();
static TWIBuffer (*twi_masterTransmissionStarting)();
static void (*twi_masterTransmissionEnded)(TWIBuffer twi_buffer);

void twi_init_slave_callbacks(
		TWIBuffer (*new_twi_handleMasterRequest)(),
		TWIBuffer (*new_twi_masterTransmissionStarting)(),
		void (*new_twi_masterTransmissionEnded)(TWIBuffer twi_buffer))
{
    if (!TWI_INITIALIZED) return;
	twi_handleMasterRequest = new_twi_handleMasterRequest;
	twi_masterTransmissionStarting = new_twi_masterTransmissionStarting;
	twi_masterTransmissionEnded = new_twi_masterTransmissionEnded;
}

static inline void startSlaveOperation() {
	twi_error = TWI_No_Error;
	twi_running = TRUE;
	handledBytes = 0;
}

TwiHandlerStatus twi_handle_slave(TwiStatus status) {
	switch (status) {
// Slave Transmitter
		case TW_ST_SLA_ACK:
		case TW_ST_ARB_LOST_SLA_ACK:
			startSlaveOperation();
			twi_buffer = twi_handleMasterRequest();
			/* no break */
		case TW_ST_DATA_ACK:
			if (handledBytes < twi_buffer.size) {
				byte data = twi_buffer.data[handledBytes++];
				if (handledBytes == twi_buffer.size) {
					// We are sending the last byte. NO ACK should be received afterwards.
					return twi_send_last(data);
				} else {
					// Still sending at least two bytes.
					return twi_send(data);
				}
			} else {
				// TODO this should not be possible due to hardware.
				twi_error = TWI_Slave_NotEnoughDataTransmitted;
				return twi_send_last(TwiIllegalByte);
			}
		case TW_ST_DATA_NACK:
		case TW_ST_LAST_DATA:
			if (handledBytes < twi_buffer.size) {
				twi_error = TWI_Slave_TooMuchDataTransmitted;
			}
			return twi_end();
// Slave Receiver
		case TW_SR_SLA_ACK:
		case TW_SR_ARB_LOST_SLA_ACK:
		case TW_SR_GCALL_ACK:
		case TW_SR_ARB_LOST_GCALL_ACK:
			startSlaveOperation();
			twi_buffer = twi_masterTransmissionStarting();
			return twi_continue();
		case TW_SR_DATA_ACK:
		case TW_SR_GCALL_DATA_ACK:
			if (handledBytes < twi_buffer.size) {
				twi_read_byte();
				if (handledBytes >= twi_buffer.size - 1) {
					return twi_return_nack();
				} else {
					return twi_continue();
				}
			} else {
				twi_error = TWI_Slave_TooMuchDataReceived;
				return twi_return_nack();
			}
		case TW_SR_DATA_NACK:
		case TW_SR_GCALL_DATA_NACK:
			if (handledBytes < twi_buffer.size) {
				twi_read_byte();
			}
			/* no break */
		case TW_SR_STOP:
			if (handledBytes < twi_buffer.size) {
				// Transmission ended early.
				twi_error = TWI_Slave_NotEnoughDataReceived;
			}
			// Invoke application-code before releasing the bus.
			// This event should be handled quickly.
			twi_masterTransmissionEnded((TWIBuffer) { twi_buffer.data, handledBytes } );
			return twi_end();
		default:
			return twi_handle(status);
	}
}
