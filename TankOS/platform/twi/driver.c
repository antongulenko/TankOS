
#include "driver.h"

volatile BOOL twi_running;
TwiError twi_error;

Pin twiDataPin, twiClockPin;

BOOL occupyTwiPins(Pin dataPin, Pin clockPin) {
    if (!occupyPinDirectly(dataPin, PinTwiIO, EmptyConfigData))
        return FALSE;
    if (!occupyPinDirectly(clockPin, PinTwiIO, EmptyConfigData)) {
        deOccupyPin(dataPin, PinTwiIO);
        return FALSE;
    }
    twiDataPin = dataPin;
    twiClockPin = clockPin;
    return TRUE;
}
