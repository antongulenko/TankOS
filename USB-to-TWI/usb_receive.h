#ifndef USB_RECEIVE_H_
#define USB_RECEIVE_H_

#include <usbdrv/usbdrv.h>
#include <tank_os_common.h>

extern uint8_t usb_received;
extern uint8_t usb_remaining;

usbMsgLen_t usbPrepareWrite(usbRequest_t *rq, uint16_t usb_buffer_size);

// Can be provided externally
// void usbWriteFinished() {...}

// Must be provided externally
// extern char *usb_data;

#endif /* USB_RECEIVE_H_ */
