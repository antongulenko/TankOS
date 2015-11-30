
#include "twi-master.h"
#include "usb-hid-data.h"
#include <usb_twi_protocol.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <errno.h>
#include <alloca.h>

#define REPORT_ID 0
#define RECEIVE_BUFFER_SIZE 512
#define USB_REPLY_DELAY 5
static usbDevice_t *usb_dev;
static char helper_buf[200];

static void error(char *desc) {
    twi_error = TWI_Bus_Error;
    twi_error_description = desc;
}

static void usberror(char *desc, int usberr) {
    snprintf(helper_buf, sizeof(helper_buf) - 1, "%s: %s", desc, usbhidErrorMessage(usberr));
    error(helper_buf);
}

void twi_init_linux(char *ignored_param) {
    int err = usbhidOpenConfiguredDevice(&usb_dev);
    if (err != 0 || usb_dev == NULL) {
        usberror("Failed to open USB device", err);
    }
}

static void usbReceiveReply(TWIBuffer receiveBuffer) {
    char receive_buf[RECEIVE_BUFFER_SIZE];
    int len = sizeof(receive_buf);
    int res = usbhidGetReport(usb_dev, REPORT_ID, receive_buf, &len);
    if (res == 0) {
        printRawBuffer("received usb", (byte*) receive_buf, len);
        if (len < 1) {
            error("Received empty report");
            return;
        } else {
            USB_TWI_STATUS usb_status = receive_buf[0];
            if (len < 2 || usb_status != USB_TWI_OK) {
                snprintf(helper_buf, sizeof(helper_buf), "USB error status %i (report length %i)", usb_status, len);
                error(helper_buf);
                return;
            } else {
                TwiError usb_twi_error = receive_buf[1];
                if (usb_twi_error != TWI_No_Error) {
                    snprintf(helper_buf, sizeof(helper_buf), "TWI error %i (USB report length %i)", usb_twi_error, len);
                    error(helper_buf);
                    return;
                } else if (len != 2 + receiveBuffer.size) {
                    snprintf(helper_buf, sizeof(helper_buf), "Received report length %i, but expected %i", len, 2 + receiveBuffer.size);
                    error(helper_buf);
                    return;
                }
            }
        }
        if (receiveBuffer.size > 0) {
            memcpy(receiveBuffer.data, receive_buf, receiveBuffer.size);
            printTwiBuffer("received", receiveBuffer);
        }
    } else {
        usberror("Getting USB report failed", res);
        return;
    }
}

void executeUsbCall(USB_TWI_COMMAND command, TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer receiveBuffer) {
    twi_error_description = NULL;
    twi_error = TWI_No_Error;

    // Allocate buffer
    size_t buf_len = 2;
    if (sendData.size > 0) buf_len += sendData.size + 1;
    if (receiveBuffer.size > 0) buf_len += 1;
    char *buf = alloca(buf_len);
    if (!buf) {
        error("alloca failed");
        return;
    }

    // Fill buffer with data to be sent
    buf[0] = command;
    buf[1] = targetDevice.address;
    int pos = 2;
    if (sendData.size > 0) {
        printTwiBuffer("sending", sendData);
        buf[pos++] = sendData.size;
        memcpy(buf + pos, sendData.data, sendData.size);
        pos += sendData.size;
    }
    if (receiveBuffer.size > 0) {
        buf[pos++] = receiveBuffer.size;
    }
    if (pos != buf_len) {
        error("Something went wrong creating USB command...");
        return;
    }

    // Send the prepared buffer and receive the reply
    printRawBuffer("sending usb", (byte*) buf, buf_len);
    int res = usbhidSetReport(usb_dev, REPORT_ID, buf, buf_len);
    if (res != 0) {
        usberror("Error sending USB message", res);
        return;
    }
    delay_ms(USB_REPLY_DELAY);
    usbReceiveReply(receiveBuffer);
}

void twiSend(TWIDevice targetDevice, TWIBuffer data) {
    executeUsbCall(USB_TWI_SEND, targetDevice, data, EmptyBuffer);
}

void twiReceive(TWIDevice targetDevice, TWIBuffer data) {
    executeUsbCall(USB_TWI_RECEIVE, targetDevice, EmptyBuffer, data);
}

void twiSendReceive(TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer receiveBuffer) {
    executeUsbCall(USB_TWI_SEND_RECEIVE, targetDevice, sendData, receiveBuffer);
}
