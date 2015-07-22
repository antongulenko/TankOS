#ifndef twi_driver_master_H_
#define twi_driver_master_H_

#include "driver.h"

// TWI Master operations. Must not be called, while another twi-operation is running! No synchronization performed.
// Use the twi_running variable.
// These 3 functions are the TWI master API.
void twiSend(TWIDevice targetDevice, TWIBuffer data);
void twiReceive(TWIDevice targetDevice, TWIBuffer receiveBuffer);
void twiSendReceive(TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer receiveBuffer);

// Wait for the current TWI operation to finish.
// With concurrency, and with two operations quickly following each other,
// the end of the current operation might be skipped.
// Optionally, define non-zero msWaitEachIteration to add a delay between two
// completion checks.
void twiWaitForCompletion();

// This function will handle the TWI interrupt for a device in master mode.
TwiHandlerStatus twi_handle(TwiStatus status);
void twi_init();

#endif
