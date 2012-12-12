
// This file is also included by twi_driver_slave.kernel.c, which defines TWI_Slave,
// thus altering the functionality of this module.

// Macros relevant for this kernel-module
// - TWI_Slave -- Optional. Defines an external function to handle requests from Master devices.
// - TWI_Buffer_Size -- Mandatory for Slave-devices. Defines number of bytes reserved for receiving 
//							requests from Master devices.

#include "twi_driver.h"
#include <util/twi.h>
#include <util/atomic.h>

// These macros can be defined to debug parts of the twi-system
#ifndef TWI_DEBUG_ERROR
#define TWI_DEBUG_ERROR(error_code)
#endif
#ifndef TWI_DEBUG_BYTE_RECEIVED
#define TWI_DEBUG_BYTE_RECEIVED(data)
#endif
#ifndef TWI_DEBUG_BYTE_SENT
#define TWI_DEBUG_BYTE_SENT(data)
#endif
#ifndef TWI_DEBUG_INTERRUPT
#define TWI_DEBUG_INTERRUPT(status)
#endif

TWIDevice TWIBroadcast = { 0 };

#ifdef TWI_Slave
	TWIBuffer twi_handleMasterRequest();
	void twi_handleMasterTransmission(TWIBuffer twi_buffer);
	byte twi_defaultSlaveBufferData[TWI_Buffer_Size];
	TWIBuffer twi_defaultSlaveBuffer = { twi_defaultSlaveBufferData, TWI_Buffer_Size };
#else
	// Define empty functions
	TWIBuffer twi_handleMasterRequest() { return (TWIBuffer) { 0 }; }
	void twi_handleMasterTransmission(TWIBuffer twi_buffer) {}
#endif

// This can be implemented by the application code to handle
// unexpected conditions in TWI traffic. Or define this macro.
void twi_unexpectedCondition() __attribute__((weak));
void twi_unexpectedCondition() {
	TWI_DEBUG_ERROR(twi_error)
}

volatile BOOL twi_running;
TWIDevice twi_address;
uint16_t alreadyHandled;
TWIBuffer twi_buffer;
TWIError twi_error;
TWIOperation furtherOperations[NUM_TWI_OPERATIONS]; // Space allocated for 4 subsequent operations
int nextTwiOperation;

void init_twi() {
	TWCR = _BV(TWIE) | _BV(TWEN);
	TWDR = 0xff;
	TWBR = TwiBitRateValue;
	TWSR = TwiPrescalerMask; // Writing the non-prescaler bits will be ignored.
	// TODO uncovered: TWAMR (slave address mask register)
	#ifdef TWI_Slave
		TWAR = TwiSlaveAddress;
	#endif
}
KERNEL_INIT(init_twi)

#define twi_base TWCR = _BV(TWEN) | _BV(TWINT) | _BV(TWIE)
#define twi_start() twi_base | _BV(TWSTA)
#define twi_ack() twi_base | _BV(TWEA)
#define twi_continue() twi_base
#define twi_send_ack(data) TWDR = data; twi_ack()

static inline void twi_send(uint8_t data) {
	TWI_DEBUG_BYTE_SENT(data)
	TWDR = data;
	twi_continue();
}

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
	
	if (nextTwiOperation >= NUM_TWI_OPERATIONS) return FALSE;
	do {
		current = furtherOperations[nextTwiOperation++];
		if (current.operationMode != TWI_IllegalOperation) break;
	} while (nextTwiOperation < NUM_TWI_OPERATIONS);
	if (nextTwiOperation >= NUM_TWI_OPERATIONS) return FALSE;
	
	// Delete or set the LSB, which describes sla+w or sla+r (reading or writing
	// slave address)
	if (current.operationMode == TWI_Send) {
		twi_address.address = current.device.address & ~_BV(0);
	} else if (current.operationMode == TWI_Receive) {
		twi_address.address = current.device.address | _BV(0);
	}
	alreadyHandled = 0;
	twi_buffer = current.buffer;
	return TRUE;
}

static inline void twi_stop_or_next() {
	if (!next_twi_operation()) {
		twi_stop();
	} else {
		// Next operation, without releasing the bus. Repeated START condition!
		twi_start();
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
	twi_error = TWI_No_Error;
	twi_running = TRUE;
	nextTwiOperation = 0;
	if (next_twi_operation()) {
		twi_start();
	}	
}

static inline void twi_ack_receive() {
	// Directly after a (repeated) start condition, in MR mode,
	// buffer size 0 and 1 both lead to a NACK of the first received byte.
	// In case of buffer size 0, this byte will be 'useless'.
	if (alreadyHandled + 1 < twi_buffer.size) {
		twi_ack(); // Still more than one byte to go.
	} else {
		twi_continue();  // Want to receive one more byte. Next byte will get NOT ACK.
	}
}

static inline void twi_read_byte() {
	TWI_DEBUG_BYTE_RECEIVED(TWDR)
	
	// Additional if-guard necessary, e.g. if the receive-buffer size
	// is zero (because in Master-Receiver mode, we have to receive
	// AT LEAST one byte, so we will end up here, even if the receive-
	// buffer has no space at all reserved. Fix by skipping this byte).
	if (alreadyHandled < twi_buffer.size)
		twi_buffer.data[alreadyHandled++] = TWDR;
}

ISR(TWI_vect) {
	TWI_DEBUG_INTERRUPT(TW_STATUS)
	
	switch(TW_STATUS) {
// Master
		case TW_START:
		case TW_REP_START:
			// Start has been acknowledged, now send the slave address. Is already either READ or WRITE.
			twi_send(twi_address.address);
			break;
		case TW_MR_ARB_LOST: // OR TW_MT_ARB_LOST
			twi_error = TWI_Arbitration_Lost;
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
			twi_error = TWI_SlaveAddress_NoAck;
			twi_stop();
			break;
		case TW_MT_DATA_NACK:
			twi_error = TWI_Master_TooMuchDataTransmitted;
			twi_stop();
			break;
// Master Receiver
		case TW_MR_SLA_ACK:
			twi_ack_receive();
			break;
		case TW_MR_DATA_ACK:
			twi_read_byte();
			twi_ack_receive();
			break;
		case TW_MR_SLA_NACK:
			twi_error = TWI_SlaveAddress_NoAck;
			twi_stop();
			break;
		case TW_MR_DATA_NACK:
			// We have aborted the transmission. Everything seems normal.
			// Cannot tell whether we have received too much or not enough or the exactly correct amount...
			twi_read_byte();
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
			twi_error = TWI_Slave_NotEnoughDataTransmitted;
			twi_end();
			break;
		case TW_ST_DATA_NACK:
			if (alreadyHandled < twi_buffer.size) {
				twi_error = TWI_Slave_TooMuchDataTransmitted;
			}
			twi_end(); // Transmission finished regularly.
			break;
// Slave Receiver
		case TW_SR_SLA_ACK:
		case TW_SR_ARB_LOST_SLA_ACK:
		case TW_SR_GCALL_ACK:
		case TW_SR_ARB_LOST_GCALL_ACK:
			twi_ack_receive();
			break;
		case TW_SR_DATA_ACK:
		case TW_SR_GCALL_DATA_ACK:
			twi_read_byte();
			twi_ack_receive();
			break;
		case TW_SR_STOP:
			// Transmission ended early.
			twi_error = TWI_Slave_NotEnoughDataReceived;	
		case TW_SR_DATA_NACK:
		case TW_SR_GCALL_DATA_NACK:
			twi_read_byte();
			// Invoke application-code before releasing the bus. The twi_buffer should be copied quickly.
			twi_handleMasterTransmission((TWIBuffer) { twi_buffer.data, alreadyHandled } );
			twi_end(); // Transmission finished normally. Cannot tell whether Master wanted to send more.
			break;
#endif
// Misc
		case TW_NO_INFO:
			twi_error = TWI_No_Info_Interrupt;
			twi_unexpectedCondition();
			break;
		case TW_BUS_ERROR:
			twi_error = TWI_Bus_Error;
			twi_unexpectedCondition();
			break;
		default:
			twi_error = TWI_Illegal_Status;
			twi_unexpectedCondition();
			break;
	}
}

void twiSend(TWIDevice targetDevice, TWIBuffer data) {
	TWIOperation op[1] = { (TWIOperation) { data, targetDevice, TWI_Send} };
	twiMultipleOperations(1, op);
}

void twiReceive(TWIDevice targetDevice, TWIBuffer receiveBuffer) {
	TWIOperation op[1] = { (TWIOperation) { receiveBuffer, targetDevice, TWI_Receive} };
	twiMultipleOperations(1, op);
}

void twiSendReceive(TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer receiveBuffer) {
	TWIOperation ops[2] = {
		(TWIOperation) { sendData, targetDevice, TWI_Send },
		(TWIOperation) { receiveBuffer, targetDevice, TWI_Receive }
	};
	twiMultipleOperations(2, ops);
}

void twiMultipleOperations(int count, TWIOperation *operations) {
	int i = 0;
	for (; i < count && i < NUM_TWI_OPERATIONS; i++) {
		furtherOperations[i] = operations[i];
	}
	for (; i < NUM_TWI_OPERATIONS; i++) {
		furtherOperations[i].operationMode = TWI_IllegalOperation;
	}
	twi_start_master_operation();
}

void WAIT_FOR_TWI() {
	while (1) {
		uint8_t still_running;
		ATOMIC_BLOCK(ATOMIC_FORCEON) {
			still_running = twi_running;
		}
		if (!still_running) {
			// This macro can be added here to include a ms-delay after each
			// TWI-transmission.
			#ifdef TWI_DELAY
			delay_ms(TWI_DELAY);
			#endif
			break;
		}
	}
}

void turn_word(uint16_t *word) {
	uint8_t temp = ((uint8_t*) word)[0];
	((uint8_t*) word)[0] = ((uint8_t*) word)[1];
	((uint8_t*) word)[1] = temp;
}
