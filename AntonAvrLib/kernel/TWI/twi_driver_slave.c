
// This is not clean C, but this is the easiest way to have one module for slave- and one
// for non-slave-TWI devices.

#define TWI_Slave
#include "twi_driver.h"
#include "twi_driver_internal.h"
#include "twi_driver_slave_handler.h"

// TODO -- Stop receiving data, when local buffer is full.
// TODO -- Implement configuration of GC calls (TWGCE bit, LSB in TWAR)

byte twi_defaultSlaveBufferData[TWI_Buffer_Size];
TWIBuffer twi_defaultSlaveBuffer = { twi_defaultSlaveBufferData, TWI_Buffer_Size };

void twi_init_slave() {
	TWAR = TwiSlaveAddress;
	twi_init();

	// Enable acknowledging of Master-requests (Slave-mode).
	TWCR |= _BV(TWEA);
	twi_defaultControlFlags |= _BV(TWEA);
}

static inline void twiStartSlaveOperation() {
	twi_error = TWI_No_Error;
	twi_running = TRUE;
	handledBytes = 0;
}

static inline TwiHandlerStatus twi_handle_slave_switch(TwiStatus status) {
	switch (status) {
// Slave Transmitter
		case TW_ST_SLA_ACK:
		case TW_ST_ARB_LOST_SLA_ACK:
			twiStartSlaveOperation();
			twi_buffer = twi_handleMasterRequest();
			/* no break */
		case TW_ST_DATA_ACK:
			if (handledBytes < twi_buffer.size - 1) {
				// At least one more byte after this one.
				return twi_send_ack(twi_buffer.data[handledBytes++]);
			} else {
				// We send the last byte now, that means we expect the Master
				// to send a NACK after this. Problem: we don't know whether he will
				// do this or not (in which case we'll get TW_ST_LAST_DATA status).
				// This means, we don't really know whether the TWI operation is still
				// running or not, but our best bet is to declare it finished after this.
				if (handledBytes >= twi_buffer.size) {
					// We should send the last byte, but we don't have any data left.
					// Only possible case: twi_handleMasterRequest() returned a buffer
					// with size = 0
					// We have to write something to the bus, so we write all ones
					// to simulate that we are not listening anymore.
					twi_error = TWI_Slave_NotEnoughDataTransmitted;
					return twi_send_last(TwiIllegalByte);
				} else {
					// Sending last byte normally
					return twi_send_last(twi_buffer.data[handledBytes++]);
				}
			}
		case TW_ST_LAST_DATA:
			twi_error = TWI_Slave_NotEnoughDataTransmitted;
			return twi_end();
		case TW_ST_DATA_NACK:
			if (handledBytes < twi_buffer.size) {
				twi_error = TWI_Slave_TooMuchDataTransmitted;
			}
			return twi_end(); // Transmission finished regularly.
// Slave Receiver
		case TW_SR_SLA_ACK:
		case TW_SR_ARB_LOST_SLA_ACK:
		case TW_SR_GCALL_ACK:
		case TW_SR_ARB_LOST_GCALL_ACK:
			twiStartSlaveOperation();
			return twi_ack_receive();
		case TW_SR_DATA_ACK:
		case TW_SR_GCALL_DATA_ACK:
			twi_read_byte();
			return twi_ack_receive();
		case TW_SR_STOP:
			// Transmission ended early.
			twi_error = TWI_Slave_NotEnoughDataReceived;
			/* no break */
		case TW_SR_DATA_NACK:
		case TW_SR_GCALL_DATA_NACK:
			twi_read_byte();
			// Invoke application-code before releasing the bus. The twi_buffer should be copied quickly.
			twi_handleMasterTransmission((TWIBuffer) { twi_buffer.data, handledBytes } );
			return twi_end(); // Transmission finished normally. Cannot tell whether Master wanted to send more.
		default:
			return twi_handle(status);
	}
}

TwiHandlerStatus twi_handle_slave(TwiStatus status) {
	TwiHandlerStatus result = twi_handle_slave_switch(status);
	if (result.handlerFinished) {
		twi_buffer = twi_defaultSlaveBuffer;
	}
	return result;
}
