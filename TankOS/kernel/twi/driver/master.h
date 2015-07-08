#ifndef twi_driver_master_H_
#define twi_driver_master_H_

#include "driver.h"

// TWI Master operations. Must not be called, while another twi-operation is running! No synchronization performed.
// Use the twi_running variable.
// These 3 functions are the TWI master API.
void twiSend(TWIDevice targetDevice, TWIBuffer data);
void twiReceive(TWIDevice targetDevice, TWIBuffer receiveBuffer);
void twiSendReceive(TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer receiveBuffer);

// This function will handle the TWI interrupt for a device in master mode.
TwiHandlerStatus twi_handle(TwiStatus status);
void twi_init();

#endif
