
#include <usbdrv/usbdrv.h>
#include <string.h>
#include <tank_os_common.h>
#include <platform/platform_Avr/kernel_init.h>
#include <avr/pgmspace.h>
#include <usbdrv/usbdrv.h>
#include "usb_receive.h"

// =====================
// Simple USB HID protocol to store some data and retrieve it afterwards.
// =====================

#define USB_BUFFER 64
byte usb_data[USB_BUFFER];

PROGMEM const char usbHidReportDescriptor[22] = { // USB report descriptor
    0x06, 0x00, 0xff,              // USAGE_PAGE (Generic Desktop)
    0x09, 0x01,                    // USAGE (Vendor Usage 1)
    0xa1, 0x01,                    // COLLECTION (Application)
    0x15, 0x00,                    //   LOGICAL_MINIMUM (0)
    0x26, 0xff, 0x00,              //   LOGICAL_MAXIMUM (255)
    0x75, 0x08,                    //   REPORT_SIZE (8)
    0x95, 0x01,                    //   REPORT_COUNT (1)
    0x09, 0x00,                    //   USAGE (Undefined)
    0xb2, 0x02, 0x01,              //   FEATURE (Data,Var,Abs,Buf)
    0xc0                           // END_COLLECTION
};

static void reset_usb_data() {
	memcpy(usb_data, "<no data!>", 11);
	usb_received = 11;
	usb_remaining = 0;
}

usbMsgLen_t usbFunctionSetup(uchar data[8]) {
	usbRequest_t *rq = (usbRequest_t*) data;
	if ((rq->bmRequestType & USBRQ_TYPE_MASK) == USBRQ_TYPE_CLASS) {
		// HID class request
		if (rq->bRequest == USBRQ_HID_GET_REPORT) {
			usbMsgPtr = usb_data;
			return usb_received;
		} else if (rq->bRequest == USBRQ_HID_SET_REPORT) {
			return usbPrepareWrite(rq, USB_BUFFER);
		}
	}
	return 0;
}


int main() {
	reset_usb_data();
    while (1) {
	    usbPoll();
    }
}
