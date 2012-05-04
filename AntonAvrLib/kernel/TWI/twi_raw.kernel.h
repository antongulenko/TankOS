#ifndef _TWI_RAW_KERNEL_
#define _TWI_RAW_KERNEL_

// Makros relevant for this kernel-module
// - TWI_Slave -- Optional. Defines an external function to handle requests from Master devices.
// - TWI_Slave_Buffer_Size -- Mandatory for Slave-devices. Defines number of bytes reserved for receiving 
//	 requests from Master devices.
// - TWI_BIT_RATE_VALUE -- Mandatory. Bitrate value. Controls communication-frequency. See manual.
//							-> 0..255!
// - TWI_PRESCALER_MASK -- Mandatory. TWI bitrate prescaler value. Controls communication-frequency. See manual.
//							-> Includes bits: _BV(TWPS1) | _BV(TWPS0)

#include "twi_raw.h"
#include <util/twi.h>

#ifdef TWI_Slave
	TWIBuffer twi_handleMasterRequest();
	void twi_handleMasterTransmission(TWIBuffer twi_buffer);
	byte twi_defaultSlaveBufferData[TWI_Slave_Buffer_Size];
	TWIBuffer twi_defaultSlaveBuffer = { twi_defaultSlaveBufferData, TWI_Slave_Buffer_Size };
#else
	// Define empty functions
	TWIBuffer twi_handleMasterRequest() {}
	void twi_handleMasterTransmission(TWIBuffer twi_buffer) {}
#endif

// This can be implemented by the application code to handle unexpected conditions in TWI traffic.
void twi_unexpectedCondition() __attribute__((weak));
void twi_unexpectedCondition() { }

#ifndef TWI_BIT_RATE_VALUE
#error This module requires TWI_BIT_RATE_VALUE to be defined!
#endif
#ifndef TWI_PRESCALER_MASK
#error This module requires TWI_BIT_RATE_VALUE to be defined!
#endif

volatile BOOL twi_running;
TWIDevice twi_address;
uint16_t alreadyHandled;
TWIBuffer twi_buffer;
TWIError error;
TWIOperation furtherOperations[NUM_TWI_OPERATIONS]; // Space allocated for 4 subsequent operations
int nextTwiOperation;

void init_twi() {
	TWCR = _BV(TWIE) | _BV(TWEN);
	TWDR = 0xff;
	TWBR = TWI_BIT_RATE_VALUE;
	TWSR = TWI_PRESCALER_MASK; // Writing the non-prescaler bits will be ignored.
	// TODO uncovered: TWAMR (slave address mask register)
	#ifdef TWI_Slave
		#ifndef TWI_Slave_Address
		#error This module requires TWI_Slave_Address to be defined for slave mode!
		#endif
		TWAR = TWI_Slave_Address;
	#endif
}
KERNEL_INIT(init_twi)

#define twi_base TWCR = _BV(TWEN) | _BV(TWINT) | _BV(TWIE)
#define twi_start() twi_base | _BV(TWSTA)
#define twi_ack() twi_base | _BV(TWEA)
#define twi_continue() twi_base
#define twi_send(data) TWDR = data; twi_continue()
#define twi_send_ack(data) TWDR = data; twi_ack()

static inline void twi_stop() {
	#ifdef TWI_Slave
		twi_base | _BV(TWSTO) | _BV(TWEA);
		twi_buffer = twi_defaultSlaveBuffer;
	#else
		twi_base | _BV(TWSTO);
	#endif
	twi_running = FALSE;
}

BOOL next_twi_operation() {
	TWIOperation current;
	do {
		current = furtherOperations[nextTwiOperation++];
	} while (nextTwiOperation < NUM_TWI_OPERATIONS && current.operationMode == TWI_IllegalOperation);
	if (nextTwiOperation >= NUM_TWI_OPERATIONS) return FALSE;
	
	if (current.operationMode == TWI_Send) {
		twi_address.address = current.device.address & ~_BV(TW_READ);
	} else if (current.operationMode == TWI_Send) {
		twi_address.address = current.device.address | _BV(TW_READ);;
	}
	alreadyHandled = 0;
	twi_buffer = current.buffer;
	return TRUE;
}

static inline void twi_stop_or_next() {
	if (nextTwiOperation >= NUM_TWI_OPERATIONS || !next_twi_operation()) {
		twi_stop();
	}
}

static inline void twi_end() {
	#ifdef TWI_Slave
		twi_base | _BV(TWEA);
		twi_buffer = twi_defaultSlaveBuffer;
	#else
		twi_base;
	#endif
	twi_running = FALSE;
}

void twi_start_master_operation() {
	error = TWI_No_Error;
	twi_running = TRUE;
	nextTwiOperation = 0;
	next_twi_operation();
}

static inline void twi_receive_byte() {
	// received data-byte. Read into receive-twi_buffer, acknowledge, if more bytes expected.
	twi_buffer.data[alreadyHandled++] = TWDR;
	if (alreadyHandled < twi_buffer.size - 1) {
		twi_ack(); // Still more than one byte to go.
	} else {
		twi_continue(); // Want to receive one more byte. Next byte will get NOT ACK.
	}
}

static inline void twi_init_receive() {
	if (twi_buffer.size > 0) {
		twi_ack(); // Acknowledge, if want to receive at least one byte
	} else {
		twi_continue();
	}
}

ISR(TWI_vect) {
	switch(TW_STATUS) {
// Master
		case TW_START:
		case TW_REP_START:
			// Start has been acknowledged, now send the slave address. Is already either READ or WRITE.
			twi_send(twi_address.address);
			break;
		case TW_MR_ARB_LOST: // OR TW_MT_ARB_LOST
			error = TWI_Arbitration_Lost;
			twi_end(); // No Stop
			break;
// Master Transmitter
		case TW_MT_DATA_ACK:
		case TW_MT_SLA_ACK:
			// Data byte acknowledged, send next byte.
			// Or: Slave address acknowledged, send first byte.
			if (alreadyHandled < twi_buffer.size) {
				twi_send(twi_buffer.data[alreadyHandled++]);
			} else {
				twi_stop_or_next();
			}
			break;
		case TW_MT_SLA_NACK:
			error = TWI_SlaveAddress_NoAck;
			twi_stop();
			break;
		case TW_MT_DATA_NACK:
			error = TWI_Master_TooMuchDataTransmitted;
			twi_stop();
			break;
// Master Receiver
		case TW_MR_SLA_ACK:
			twi_init_receive();
			break;
		case TW_MR_DATA_ACK:
			twi_receive_byte();
			break;
		case TW_MR_SLA_NACK:
			error = TWI_SlaveAddress_NoAck;
			twi_stop();
			break;
		case TW_MR_DATA_NACK:
			// We have aborted the transmission. Everything seems normal.
			// Cannot tell whether we have received too much or not enough or the exactly correct amount...
			twi_stop_or_next();
			break;
#ifdef TWI_Slave
// Slave Transmitter
		case TW_ST_SLA_ACK:
		case TW_ST_ARB_LOST_SLA_ACK:
			twi_buffer = twi_handleMasterRequest();
		case TW_ST_DATA_ACK:
			if (alreadyHandled < twi_buffer.size - 1) {
				// At least one more byte after this one.
				twi_send_ack(twi_buffer.data[alreadyHandled++]);
			} else {
				// Sending last byte!
				twi_send(twi_buffer.data[alreadyHandled++]);
			}				
			break;
		case TW_ST_LAST_DATA:
			error = TWI_Slave_NotEnoughDataTransmitted;
			twi_end();
			break;
		case TW_ST_DATA_NACK:
			if (alreadyHandled < twi_buffer.size) {
				error = TWI_Slave_TooMuchDataTransmitted;
			}
			twi_end(); // Transmission finished regularly.
			break;
// Slave Receiver
		case TW_SR_SLA_ACK:
		case TW_SR_ARB_LOST_SLA_ACK:
		case TW_SR_GCALL_ACK:
		case TW_SR_ARB_LOST_GCALL_ACK:
			twi_init_receive();
			break;
		case TW_SR_DATA_ACK:
		case TW_SR_GCALL_DATA_ACK:
			twi_receive_byte();
			break;
		case TW_SR_STOP:
			// Transmission ended early.
			error = TWI_Slave_NotEnoughDataReceived;	
		case TW_SR_DATA_NACK:
		case TW_SR_GCALL_DATA_NACK:
			// Invoke application-code before releasing the bus. The twi_buffer should be copied quickly.
			twi_handleMasterTransmission((TWIBuffer) { twi_buffer.data, alreadyHandled } );
			twi_end(); // Transmission finished normally. Cannot tell whether Master wanted to send more.
			break;
#endif
// Misc
		case TW_NO_INFO:
			error = TWI_No_Info_Interrupt;
		case TW_BUS_ERROR:
			error = TWI_Bus_Error;
		default:
			error = TWI_Illegal_Status;
			twi_unexpectedCondition();
	}
}

#endif