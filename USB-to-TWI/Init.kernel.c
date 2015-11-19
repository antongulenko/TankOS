
#include <tank_os_common.h>
#include <usbdrv/usbdrv.h>
#include <platform/twi/master.h>
#include <platform/platform_Avr/avr_attiny84/port.h>
#include <platform/platform_Avr/kernel_init.h>

#define PIN_DATA  pinA6
#define PIN_CLOCK pinA4

static void init_usb_twi() {
    twi_init(PIN_DATA, PIN_CLOCK);
}
KERNEL_INIT(init_usb_twi)

static void init_usb() {
    uchar   i;  
    /* RESET status: all port bits are inputs without pull-up.
     * That's the way we need D+ and D-. Therefore we don't need any
     * additional hardware initialization.
     */
    usbInit();
    usbDeviceDisconnect();  /* enforce re-enumeration, do this while interrupts are disabled! */
    i = 0;
    while(--i){             /* fake USB disconnect for > 250 ms */
        delay_ms(1);
    }
    usbDeviceConnect();
}
KERNEL_INIT(init_usb)
