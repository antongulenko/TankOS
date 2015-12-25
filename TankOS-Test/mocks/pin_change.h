#ifndef __PIN_CHANGE_MOCK__
#define __PIN_CHANGE_MOCK__

#include <platform/platform_Avr/pin_change.h>

void initPinChangeInterrupts();

BOOL pinChangeInterruptEnabled[4][8];
PinInterruptHandler pinChangeHandler[4];

BOOL invokePinChangeInterrupt(uint8_t portNum, uint8_t pinBits);

#endif // __PIN_CHANGE_MOCK__
