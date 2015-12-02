
#include <platform/twi/master.h>
#include "usi_i2c_master.h"

BOOL twi_init(Pin dataPin, Pin clockPin) {
	if (!occupyTwiPins(dataPin, clockPin)) return FALSE;
	// TODO anything to prepare here?
	return TRUE;
}

#define PREPARE_MSG(msg, data)			\
	do {								\
		msg = alloca(data.size + 1);	\
		if (!msg) {						\
			twi_error = TWI_Bus_Error;	\
			return;						\
		}								\
	} while (0)

static inline BOOL send_address(byte addr) {
	char res = USI_I2C_Master_Address(addr);
	if (!res) {
		twi_error = TWI_SlaveAddress_NoAck;
		return FALSE;
	}
	return TRUE;
}

static inline BOOL start_send(TWIDevice targetDevice, TWIBuffer data) {
	USI_I2C_Master_Start();
	if (!send_address(TWI_SLA_WRITE(targetDevice))) return FALSE;
	char res = USI_I2C_Master_Write(data.data, data.size);
	if (!res) {
		twi_error = TWI_Master_TooMuchDataTransmitted;
		return FALSE;
	}
	return TRUE;
}

void twiSend(TWIDevice targetDevice, TWIBuffer data) {
	if (!start_send(targetDevice, data)) return;
	USI_I2C_Master_Stop();
}

void twiReceive(TWIDevice targetDevice, TWIBuffer receiveBuffer) {
	USI_I2C_Master_Start();
	if (!send_address(TWI_SLA_READ(targetDevice))) return;
	USI_I2C_Master_Read(receiveBuffer.data, receiveBuffer.size);
	USI_I2C_Master_Stop();
}

void twiSendReceive(TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer receiveBuffer) {
	if (!start_send(targetDevice, sendData)) return;
	twiReceive(targetDevice, receiveBuffer); // Repeated START condition
}
