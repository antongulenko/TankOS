
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
