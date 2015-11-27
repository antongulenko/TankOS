
#include "driver.h"

volatile BOOL twi_running;
TwiError twi_error;

Pin twiDataPin, twiClockPin;

BOOL occupyTwiPins(Pin dataPin, Pin clockPin) {
    if (!occupyPin(dataPin, PinTwiIO))
        return FALSE;
    if (!occupyPin(clockPin, PinTwiIO)) {
        deOccupyPin(dataPin, PinTwiIO);
        return FALSE;
    }
    twiDataPin = dataPin;
    twiClockPin = clockPin;
    return TRUE;
}

void twiWaitForCompletion() {
	while (1) {
		uint8_t still_running;
		ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
			still_running = twi_running;
		}
		if (!still_running) return;
	}
}
