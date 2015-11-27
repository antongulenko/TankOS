#include <usbdrv/usbdrv.h>
#include <string.h>
#include <tank_os_common.h>
#include <platform/platform_Avr/kernel_init.h>
#include "usb_receive.h"

// =====================
// Simple USB HID protocol to store some data and retrieve it afterwards.
// =====================

#define USB_BUFFER 128
byte usb_data[USB_BUFFER];

static void reset_usb_data() {
	memcpy(usb_data, "<no data!>", 11);
	usb_received = 11;
	usb_remaining = 0;
}
KERNEL_INIT(reset_usb_data)

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
