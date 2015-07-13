
#include "twi_driver_slave.h"
#include <kernel/twi/driver/master.h>
#include <string.h>

// This module implements the TWI master by transferring data directly to the locally linked
// TWI slave. This allows testing the entire TWI/RPC code end-to-end in one test module.
// For the slave mode, twi_driver_slave.c must be linked.

// ============= Implementation of TWI Master mode =============
// targetDevice is always ignored, everything is forwarded to the "local" slave implementation.
// twi_error represents the error on the client side (although both sides will link against the same value).
// twi_error will always be reset to TWI_No_Error, so no errors will appear on the server-side.

// TODO rename the twi_error to twi_client_error and twi_server_error?

#include <stdio.h>

void twiSend(TWIDevice targetDevice, TWIBuffer data) {
    twi_error = TWI_No_Error;
    TWIBuffer receiveBuffer = twi_masterTransmissionStarting();
    size_t transmittedSize;
    if (data.size > receiveBuffer.size) {
        twi_error = TWI_Slave_TooMuchDataReceived;
        transmittedSize = receiveBuffer.size;
    } else if (data.size < receiveBuffer.size) {
        twi_error = TWI_Slave_NotEnoughDataReceived;
        transmittedSize = data.size;
    } else {
        transmittedSize = receiveBuffer.size;
    }
    memcpy(receiveBuffer.data, data.data, transmittedSize);
    receiveBuffer.size = transmittedSize;
    twi_masterTransmissionEnded(receiveBuffer);
    twi_error = TWI_No_Error;
}

void twiReceive(TWIDevice targetDevice, TWIBuffer receiveBuffer) {
    twi_error = TWI_No_Error;
    TWIBuffer sendBuffer = twi_handleMasterRequest();
    size_t receivedSize;
    if (receiveBuffer.size > sendBuffer.size) {
        receivedSize = sendBuffer.size;
        size_t invalidSize = receiveBuffer.size - sendBuffer.size;
        memset(receiveBuffer.data + receivedSize, TwiIllegalByte, invalidSize);
    } else {
        receivedSize = receiveBuffer.size;
    }
    memcpy(receiveBuffer.data, sendBuffer.data, receivedSize);
    // twi_error could take a meaningful value on the client-side
    // but we reset it so the server-side is error-free.
    twi_error = TWI_No_Error;
}

void twiSendReceive(TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer receiveBuffer) {
    twiSend(targetDevice, sendData);
    twiReceive(targetDevice, receiveBuffer);
    twi_error = TWI_No_Error;
}

void twiWaitForCompletion(uint16_t msWaitEachIteration) {
    // No-op, no asynchronous transmission.
}
