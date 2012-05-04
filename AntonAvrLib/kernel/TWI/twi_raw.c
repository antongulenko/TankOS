
#include "twi_raw.h"
#include <util/twi.h>
#include <stdarg.h>

TWIDevice TWIBroadcast = { 0 };

// Implemented in the twi-kernel-file
void twi_start_master_operation();
extern TWIOperation furtherOperations[NUM_TWI_OPERATIONS];

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
