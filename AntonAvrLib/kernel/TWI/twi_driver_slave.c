
// This is not clean C, but this is the easiest way to have one module for slave- and one
// for non-slave-TWI devices.

#define TWI_Slave
#include "twi_driver.h"
#include "twi_driver_internal.h"
#include "twi_driver_slave_handler.h"

// TODO -- Stop receiving data, when local buffer is full.

byte twi_defaultSlaveBufferData[TWI_Buffer_Size];
TWIBuffer twi_defaultSlaveBuffer = { twi_defaultSlaveBufferData, TWI_Buffer_Size };

void twi_init_slave() {
	TWAR = TwiSlaveAddress;
	twi_init();
	TWCR |= _BV(TWEA);
	twi_defaultControlFlags |= _BV(TWEA);
}

static inline TwiHandlerStatus twi_handle_slave_switch(TwiStatus status) {
	switch (status) {
// Slave Transmitter
		case TW_ST_SLA_ACK:
		case TW_ST_ARB_LOST_SLA_ACK:
			twi_buffer = twi_handleMasterRequest();
			/* no break */
		case TW_ST_DATA_ACK:
			return
				handledBytes < twi_buffer.size - 1
					// At least one more byte after this one.
					? twi_send_ack(twi_buffer.data[handledBytes++])
					// Sending last byte!
					: twi_send(twi_buffer.data[handledBytes++]);
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
		// Enable acknowledging of Master-requests (Slave-mode).
		result.controlRegister |= _BV(TWEA);
		twi_buffer = twi_defaultSlaveBuffer;
	}
	return result;
}
