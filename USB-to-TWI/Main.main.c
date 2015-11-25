#include <tank_os_common.h>
#include <kernel/klib.h>
#include <avr/eeprom.h>
#include <avr/pgmspace.h>
// #include <usbdrv/usbdrv.h>
#include <platform/twi/master.h>
#include <string.h>
#include <stdio.h>
#include <platform/platform_Avr/buffer_stdout.h>
#include "usb_twi_protocol.h"

/*

// Since we define only one feature report, we don't use report-IDs (which
// would be the first byte of the report). The entire report consists of 128
// opaque data bytes.
PROGMEM const char usbHidReportDescriptor[22] = {    // USB report descriptor
    0x06, 0x00, 0xff,              // USAGE_PAGE (Generic Desktop)
    0x09, 0x01,                    // USAGE (Vendor Usage 1)
    0xa1, 0x01,                    // COLLECTION (Application)
    0x15, 0x00,                    //   LOGICAL_MINIMUM (0)
    0x26, 0xff, 0x00,              //   LOGICAL_MAXIMUM (255)
    0x75, 0x08,                    //   REPORT_SIZE (8)
    0x95, 0x80,                    //   REPORT_COUNT (128)
    0x09, 0x00,                    //   USAGE (Undefined)
    0xb2, 0x02, 0x01,              //   FEATURE (Data,Var,Abs,Buf)
    0xc0                           // END_COLLECTION
};

#define USB_BUFFER 2
static byte     data[USB_BUFFER];
static uint8_t  bytesReceived;
static uint8_t  bytesRemaining;
static uint8_t  result_size = 0;

static void set_error(byte err) {
    data[0] = err;
    result_size = 1;
}

static BOOL get_bytes(byte **out, uint8_t num) {
    // bytesRemaining is reused here, differently from usbFunctionWrite
    if (bytesRemaining + num > bytesReceived) {
        set_error(USB_TWI_ERR_MISSING_DATA);
        return FALSE;
    }
    *out = data + bytesRemaining;
    bytesRemaining += num;
    return TRUE;
}

static BOOL check_all_bytes() {
    if (bytesRemaining != bytesReceived) {
        set_error(USB_TWI_ERR_TOO_MUCH_DATA);
        return FALSE;
    }
    return TRUE;
}

static void executeTwiCall() {
    USB_TWI_COMMAND *command;
    if (!get_bytes(&command, 1)) return;
    if (*command > USB_TWI_INVALID_COMMAND) {
        set_error(USB_TWI_ERR_INVALID_COMMAND);
        return;
    }
    byte *addr, *len, *msg, *len2;
    if (!get_bytes(&addr, 1)) return;
    if (!get_bytes(&len, 1)) return;
    TWIDevice device = (TWIDevice) { *addr };

    switch (*command) {
        case USB_TWI_SEND:
            if (!get_bytes(&msg, *len)) return;
            if (!check_all_bytes()) return;
            twiSend(device, (TWIBuffer) { msg, *len });
            data[0] = USB_TWI_OK;
            data[1] = twi_error;
            result_size = 2;
            break;
        case USB_TWI_RECEIVE:
            if (!check_all_bytes()) return;
            if (*len > USB_BUFFER - 2) {
                set_error(USB_TWI_ERR_SMALL_BUFFER);
                return;
            }
            twiReceive(device, (TWIBuffer) { data + 2, *len });
            data[0] = USB_TWI_OK;
            data[1] = twi_error;
            result_size = *len + 2;
            break;
        case USB_TWI_SEND_RECEIVE:
            if (!get_bytes(&msg, *len)) return;
            if (!get_bytes(&len2, 1)) return;
            if (!check_all_bytes()) return;
            if (*len2 > USB_BUFFER - 2) {
                set_error(USB_TWI_ERR_SMALL_BUFFER);
                return;
            }
            twiSendReceive(device, (TWIBuffer) { msg, *len }, (TWIBuffer) { data + 2, *len2 });
            data[0] = USB_TWI_OK;
            data[1] = twi_error;
            result_size = *len2 + 2;
            break;
        default:
            set_error(USB_TWI_ERR_INVALID_COMMAND);
    }
}

uchar usbFunctionWrite(uchar *data, uchar len) {
    if (len > bytesRemaining) {
        // We are receiving too much data from the host...
        return 0xff;
    }
    memcpy(data + bytesReceived, data, len);
    bytesReceived += len;
    bytesRemaining -= len;
    if (bytesRemaining == 0) {
        executeTwiCall();
        return 1; // Transmission over
    }
    return 0; // Need more data
}

usbMsgLen_t usbFunctionSetup(uchar data[8]) {
    usbRequest_t *rq = (usbRequest_t*) data;
    if ((rq->bmRequestType & USBRQ_TYPE_MASK) == USBRQ_TYPE_CLASS) {
        // HID class request
        if (rq->bRequest == USBRQ_HID_GET_REPORT) {
            usbMsgPtr = data;
            if (result_size == 0) {
                data[0] = USB_TWI_ERR_STANDALONE_READ;
                return 1;
            } else {
                uint8_t res = result_size;
                result_size = 0;
                return res;
            }
        } else if (rq->bRequest == USBRQ_HID_SET_REPORT) {
            // usbFunctionWrite() will be called with data.
            uint16_t msgLen = rq->wLength.word;
            if (msgLen > USB_BUFFER) {
                // Host is sending too much data, reject the request.
                bytesRemaining = 0;
                return 0;
            }
            result_size = 0;
            bytesRemaining = msgLen;
            bytesReceived = 0;
            return USB_NO_MSG;
        }
    }
    return 0;
}

*/

#include <kernel/millisecond_clock.h>
#include "../Tank-IO/tank_io_service.h"
#include "../Tank-IO/tank_io_address.h"
#include <twi/rpc/strings.h>
#include <devices/led_control.h>

int main() {
    TWIDevice dev = (TWIDevice) { TANK_IO_ADDRESS };
    while (1) {
        //RpcClientResult res = tank_io_set_leds(dev, (SetLedsParameters) { ALL_LEDS, LedsGroupRunning });
        if (twi_error != TWI_No_Error) {
            //printf("TWI: %s\n", RpcClientResult_string(res));
            buffer_stdout_flush_to_eeprom((char*) 2, 256);
        }
        delay_ms(2000);
        //tank_io_set_leds(dev, (SetLedsParameters) { ALL_LEDS, LedsBlinking });
        delay_ms(2000);
    }

    /*
    while (1) {
        usbPoll();
    }
    */
}
