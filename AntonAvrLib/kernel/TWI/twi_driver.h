#ifndef twi_driver_H_
#define twi_driver_H_

#include "../../anton_std.h"

#ifndef TWI_Buffer_Size
#define TWI_Buffer_Size 512
#endif

// TWI configurations.
// Must be linked from another module!
extern const byte TwiSlaveAddress;
extern const byte TwiBitRateValue; // Controls communication-frequency. See manual. -> 0..255!
extern const byte TwiPrescalerMask; // Controls communication-frequency. See manual. -> Includes bits: _BV(TWPS1) | _BV(TWPS0)

// Only the seven MSB are valid address bits. The LSB will be replaced.
typedef struct TWIDevice {
	byte address;
} TWIDevice;

extern const TWIDevice TWIBroadcast;

typedef struct TWIBuffer {
	byte *data;
	uint16_t size;
} TWIBuffer;

typedef enum TwiError {
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

} TwiError;

// The whole TWI-library is not reentrant! should be used by only one process
// or strictly atomic (disabled interrupts).
// Can be looped on until the completion of current operation.
extern volatile BOOL twi_running;

// Can be checked for success of the operation afterwards.
// Read-only.
extern TwiError twi_error;

// TWI Master operations. Must not be called, while another twi-operation is running! No synchronization performed.
// Use the twi_running variable.
void twiSend(TWIDevice targetDevice, TWIBuffer data);
void twiReceive(TWIDevice targetDevice, TWIBuffer receiveBuffer);
void twiSendReceive(TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer receiveBuffer);

// Wait for the current TWI operation to finish.
// With concurrency, and with two operations quickly following each other,
// the end of the current operation might be skipped.
// Optionally, define non-zero msWaitEachIteration to add a delay between two
// completion checks.
void twiWaitForCompletion(uint16_t msWaitEachIteration);

#endif
