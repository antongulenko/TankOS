#include <avr/pgmspace.h>
#include <usbdrv/usbdrv.h>
#include <platform/twi/master.h>
#include <platform/platform_Avr/port.h>

// Since we define only one feature report, we don't use report-IDs (which
// would be the first byte of the report). The entire report consists of 128
// opaque data bytes.
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

#define PIN_DATA  pinA6
#define PIN_CLOCK pinA4

int main() {
    twi_init(PIN_DATA, PIN_CLOCK);
    while (1) {
	    usbPoll();
    }
}
