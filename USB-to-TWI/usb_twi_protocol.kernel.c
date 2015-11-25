#include <avr/pgmspace.h>
#include <usbdrv/usbdrv.h>
#include <string.h>
#include <tank_os_common.h>
#include <platform/twi/master.h>
#include <platform/platform_Avr/buffer_stdout.h>
#include "usb_receive.h"
#include "usb_twi_protocol.h"

#define USB_BUFFER 128
byte usb_data[USB_BUFFER];
static uint8_t result_size = 0;

static BOOL set_error(byte err) {
    usb_data[0] = err;
    result_size = 1;
	return FALSE;
}

static BOOL get_bytes(byte **out, uint8_t num) {
    // usb_remaining/usb_received is reused here, differently from usbFunctionWrite
    if (usb_remaining + num > usb_received) {
        return set_error(USB_TWI_ERR_MISSING_DATA);
    }
    *out = usb_data + usb_remaining;
    usb_remaining += num;
    return TRUE;
}

static BOOL check_all_bytes() {
    if (usb_remaining != usb_received) {
        return set_error(USB_TWI_ERR_TOO_MUCH_DATA);
    }
    return TRUE;
}

void usbWriteFinished() {
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
            usb_data[0] = USB_TWI_OK;
            usb_data[1] = twi_error;
            result_size = 2;
            break;
        case USB_TWI_RECEIVE:
            if (!check_all_bytes()) return;
            if (*len > USB_BUFFER - 2) {
                set_error(USB_TWI_ERR_SMALL_BUFFER);
                return;
            }
            twiReceive(device, (TWIBuffer) { usb_data + 2, *len });
            usb_data[0] = USB_TWI_OK;
            usb_data[1] = twi_error;
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
            twiSendReceive(device, (TWIBuffer) { msg, *len }, (TWIBuffer) { usb_data + 2, *len2 });
            usb_data[0] = USB_TWI_OK;
            usb_data[1] = twi_error;
            result_size = *len2 + 2;
            break;
        default:
            set_error(USB_TWI_ERR_INVALID_COMMAND);
    }
}

usbMsgLen_t usbFunctionSetup(uchar rq_data[8]) {
    usbRequest_t *rq = (usbRequest_t*) rq_data;
    if ((rq->bmRequestType & USBRQ_TYPE_MASK) == USBRQ_TYPE_CLASS) {
        // HID class request
        if (rq->bRequest == USBRQ_HID_GET_REPORT) {
            if (result_size == 0) {
                set_error(USB_TWI_ERR_STANDALONE_READ);
            }
			usbMsgPtr = usb_data;
            uint8_t res = result_size;
            result_size = 0;
            return res;
        } else if (rq->bRequest == USBRQ_HID_SET_REPORT) {
			result_size = 0;
            return usbPrepareWrite(rq, USB_BUFFER);
        }
    }
    return 0;
}
