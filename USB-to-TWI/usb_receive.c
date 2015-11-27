#include <string.h>
#include "usb_receive.h"

extern char *usb_data;
uint8_t usb_received;
uint8_t usb_remaining;

void usbWriteFinished() WEAK_FUNCTION;
void usbWriteFinished() {
}

uchar usbFunctionWrite(uchar *data, uchar len) {
	if (len > usb_remaining) {
		// We are receiving too much data from the host...
		return 0xff;
	}
	memcpy(usb_data + usb_received, data, len);
	usb_received += len;
	usb_remaining -= len;
	if (usb_remaining == 0) {
		usbWriteFinished();
		return 1; // Transmission over
	}
	return 0; // Need more data
}

usbMsgLen_t usbPrepareWrite(usbRequest_t *rq, uint16_t usb_buffer_size) {
	// usbFunctionWrite() will be called with data.
	uint16_t msgLen = rq->wLength.word;
	if (msgLen > usb_buffer_size) {
		// Host is sending too much data, reject the request.
		usb_remaining = 0;
		return 0;
	}
	usb_remaining = msgLen;
	usb_received = 0;
	return USB_NO_MSG;
}
