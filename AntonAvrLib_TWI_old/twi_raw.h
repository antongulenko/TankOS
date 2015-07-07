#ifndef twi_driver_H_
#define twi_driver_H_

#include "../../anton_std.h"
#include "../kernel_init.h"

// TWI configurations.
// Must be linked from another module!
extern const byte TwiSlaveAddress;
extern const byte TwiBitRateValue; // Controls communication-frequency. See manual. -> 0..255!
extern const byte TwiPrescalerMask; // Controls communication-frequency. See manual. -> Includes bits: _BV(TWPS1) | _BV(TWPS0)

// Only the seven MSB are valid address bits. The LSB will be replaced.
typedef struct {
	uint8_t address;
} TWIDevice;

extern TWIDevice TWIBroadcast;

typedef struct {
	byte *data;
	uint16_t size;
} TWIBuffer;

typedef struct {
	TWIBuffer buffer;
	TWIDevice device;
	enum {
		TWI_IllegalOperation, // This is for internal use.
		TWI_Receive,
		TWI_Send
	} operationMode;
} TWIOperation;

typedef enum {
	TWI_No_Error,
	
	TWI_No_Info_Interrupt, // TWI-Interrupt happened without any special condition.
	TWI_Bus_Error,
	TWI_Illegal_Status, // The TWI-Status-Register contained an unrecognized code.
	
	TWI_SlaveAddress_NoAck,
	TWI_Arbitration_Lost,
	
	TWI_Master_TooMuchDataTransmitted,
	// Cannot find out, if Master Transmitted not enough data, because master just terminates with a STOP signal.
	// Master Receive mode is ONLY left, when master issues a STOP, which happens after he received
	//		EXACTLY the amount of bytes specified in the prepared buffer.
	//		--> If slave already stopped transmitting earlier, we continue receiving 0xff.
	//		--> If slave wanted to transmit more, he has no chance of telling us.
	
	TWI_Slave_NotEnoughDataTransmitted,
	TWI_Slave_TooMuchDataTransmitted,
	TWI_Slave_NotEnoughDataReceived
	// Cannot tell, if Master would have sent more data, because Slave simply terminates transmission with the No Ack.
	
} TWIError;

// The whole TWI-library is not reentrant! should be used by only one process or strictly atomic (disabled interrupts).
extern volatile BOOL twi_running; // Can be looped on until the completion of current operation.
extern TWIError twi_error; // Can be checked for success of the operation afterwards.

// Wait for the current TWI operation to finish.
// With concurrency, and with two operations quickly following each other,
// the end might be skipped...
// TODO -- introduce wait-function, that waits for completion of a particular operation.
void WAIT_FOR_TWI();

// TWI Master operations. Must not be called, while another twi-operation is running! No synchronization performed.
// Use the twi_running variable.
void twiSend(TWIDevice targetDevice, TWIBuffer data);
void twiReceive(TWIDevice targetDevice, TWIBuffer receiveBuffer);
void twiSendReceive(TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer receiveBuffer);

#define NUM_TWI_OPERATIONS 3

// Perform multiple operations to run directly after each other. The bus will not be released in between.
// The number of operations must be maximum NUM_TWI_OPERATIONS. The operations-structures are immediately copied
// inside the function, so they can be passed from local variables.
void twiMultipleOperations(int count, TWIOperation *operations);

// Switch the high and low byte in the pointed word.
// The native byte-order is big-endian, while the TWI byte-order is little-endian.
void turn_word(uint16_t *word);

#endif