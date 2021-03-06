/*
 *  Created on: 10.12.2012
 *      Author: Anton
 */

#include <platform/twi/master.h>
#include "internal.h"

const TWIDevice TWIBroadcast = { 0 };

static struct TWIOperation {
	TWIBuffer buffer;
	BOOL valid;
} sendOperation, receiveOperation;

static TWIDevice targetDevice;
static byte transmittedAddress;

BOOL twi_init(Pin dataPin, Pin clockPin) {
	if (!occupyTwiPins(dataPin, clockPin)) return FALSE;
	twi_defaultControlFlags = DEFAULT_TWCR;
	TWCR = _BV(TWIE) | _BV(TWEN);
	twi_error = TWI_No_Error;
	twi_running = FALSE;
	twi_buffer = EmptyBuffer;
    return TRUE;
}

BOOL start_master_operation() {
	// Delete or set the LSB of the targetDevice address,
	// which describes sla+w or sla+r (reading or writing slave address)
	handledBytes = 0;
	if (sendOperation.valid) {
		transmittedAddress = TWI_SLA_WRITE(targetDevice);
		twi_buffer = sendOperation.buffer;
		sendOperation.valid = FALSE;
		return TRUE;
	} else if (receiveOperation.valid) {
		transmittedAddress = TWI_SLA_READ(targetDevice);
		twi_buffer = receiveOperation.buffer;
		receiveOperation.valid = FALSE;
		return TRUE;
	}
	return FALSE;
}

static inline TwiHandlerStatus twi_start() {
	return HandlerStatus_CONTINUE(DEFAULT_TWCR | _BV(TWSTA));
}

static inline TwiHandlerStatus twi_stop() {
	return HandlerStatus_FINISHED(twi_defaultControlFlags | _BV(TWSTO));
}

static inline TwiHandlerStatus twi_stop_or_next() {
	if (start_master_operation()) {
		// Next operation, without releasing the bus. Repeated START condition.
		return twi_start();
	} else {
		return twi_stop();
	}
}

static inline TwiHandlerStatus twi_send(byte data) {
	TWDR = data;
	return HandlerStatus_CONTINUE(DEFAULT_TWCR);
}

static inline TwiHandlerStatus twi_ack() {
	return HandlerStatus_CONTINUE(DEFAULT_TWCR | _BV(TWEA));
}

static inline TwiHandlerStatus twi_nack() {
	return HandlerStatus_CONTINUE(DEFAULT_TWCR);
}

static inline TwiHandlerStatus twi_ack_receive() {
	// Directly after a (repeated) start condition, in MR mode,
	// buffer size 0 and 1 both lead to a NACK of the first received byte.
	// In case of buffer size 0, this byte will be 'useless'.
	if (handledBytes + 1 < twi_buffer.size) {
		return twi_ack(); // Still more than one byte to go.
	} else {
		return twi_nack(); // Want to receive just one more byte. Next byte will get NOT ACK.
	}
}

static void initiate_twi() {
	twi_running = TRUE;
	twi_error = TWI_No_Error;
	start_master_operation();
	TWCR = twi_start().controlRegister;
}

void twiSend(TWIDevice _targetDevice, TWIBuffer data) {
    if (!TWI_INITIALIZED) return;
	targetDevice = _targetDevice;
	receiveOperation.valid = FALSE;
	sendOperation.valid = TRUE;
	sendOperation.buffer = data;
	initiate_twi();
}

void twiReceive(TWIDevice _targetDevice, TWIBuffer receiveBuffer) {
    if (!TWI_INITIALIZED) return;
	targetDevice = _targetDevice;
	sendOperation.valid = FALSE;
	receiveOperation.valid = TRUE;
	receiveOperation.buffer = receiveBuffer;
	initiate_twi();
}

void twiSendReceive(TWIDevice _targetDevice, TWIBuffer sendData, TWIBuffer receiveBuffer) {
    if (!TWI_INITIALIZED) return;
	targetDevice = _targetDevice;
	sendOperation.valid = TRUE;
	sendOperation.buffer = sendData;
	receiveOperation.valid = TRUE;
	receiveOperation.buffer = receiveBuffer;
	initiate_twi();
}

TwiHandlerStatus twi_handle(TwiStatus status) {
	switch(status) {
// Master
		case TW_START:
		case TW_REP_START:
			// Start has been acknowledged, now send the slave address. Is already either READ or WRITE.
			return twi_send(transmittedAddress);
		//case TW_MR_ARB_LOST: // This is the same value as the next one
		case TW_MT_ARB_LOST:
			twi_error = TWI_Arbitration_Lost;
			return twi_end(); // No Stop
// Master Transmitter
		case TW_MT_DATA_ACK:
		case TW_MT_SLA_ACK:
			// Data byte acknowledged, send next byte.
			// Or: Slave address acknowledged, send first byte.
			return handledBytes < twi_buffer.size
						? twi_send(twi_buffer.data[handledBytes++])
						: twi_stop_or_next();
		case TW_MT_SLA_NACK:
			twi_error = TWI_SlaveAddress_NoAck;
			return twi_stop();
		case TW_MT_DATA_NACK:
			twi_error = TWI_Master_TooMuchDataTransmitted;
			return twi_stop();
// Master Receiver
		case TW_MR_SLA_ACK:
			return twi_ack_receive();
		case TW_MR_DATA_ACK:
			twi_read_byte();
			return twi_ack_receive();
		case TW_MR_SLA_NACK:
			twi_error = TWI_SlaveAddress_NoAck;
			return twi_stop();
		case TW_MR_DATA_NACK:
			// We have aborted the transmission. Everything seems normal.
			// Cannot tell whether we have received too much or not enough
			// or the exactly correct amount. We read the last byte of the transmission.
			twi_read_byte();
			return twi_stop_or_next();
// Misc
		case TW_NO_INFO:
			twi_error = TWI_No_Info_Interrupt;
			return twi_end();
		case TW_BUS_ERROR:
			twi_error = TWI_Bus_Error;
			return twi_stop();
		default:
			twi_error = TWI_Illegal_Status;
			return twi_end();
	}
}
