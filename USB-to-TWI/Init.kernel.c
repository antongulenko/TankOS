
#include <tank_os_common.h>
#include <usbdrv/usbdrv.h>
#include <platform/twi/master.h>
#include <platform/platform_Avr/avr_attiny84/port.h>
#include <platform/platform_Avr/kernel_init.h>
#include "usbconfig.h"

#define PIN_DATA  pinA6
#define PIN_CLOCK pinA4

// static void init_usb_twi() {
    // twi_init(PIN_DATA, PIN_CLOCK);
// }
//KERNEL_INIT(init_usb_twi)

#define CONCAT2(A, B, C) A ## B ## C
#define CONCAT(A, B, C) CONCAT2(A, B, C)
#define UsbPinDPlus CONCAT(pin, USB_CFG_IOPORTNAME, USB_CFG_DPLUS_BIT)
#define UsbPinDMinus CONCAT(pin, USB_CFG_IOPORTNAME, USB_CFG_DMINUS_BIT)
#define PinUSB 15

static void init_usb() {
    // TODO the occupation does not work!
    // if (!occupyPin(UsbPinDPlus, PinUSB)) return;
    // if (!occupyPin(UsbPinDPlus, PinUSB)) return;
    
    // This is the hardware default, but make sure.
    setPinInput(UsbPinDPlus);
    setPinInput(UsbPinDMinus);
    disablePullup(UsbPinDPlus);
    disablePullup(UsbPinDMinus);

    usbInit();
    usbDeviceDisconnect();  // enforce re-enumeration, do this while interrupts are disabled
    delay_ms(250);          // fake USB disconnect for > 250 ms
    usbDeviceConnect();

    // We don't use late_init.kernel.c
    sei();
}
KERNEL_INIT(init_usb)
