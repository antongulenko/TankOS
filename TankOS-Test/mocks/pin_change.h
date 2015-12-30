#ifndef __PIN_CHANGE_MOCK__
#define __PIN_CHANGE_MOCK__

#include <platform/platform_Avr/pin_change.h>

void initPinChangeInterrupts();
void tearDownPinChangeInterrupts();

#define NUM_PORTS 4
#define NUM_PINS 8

extern BOOL pinChangeInterruptEnabled[NUM_PORTS][NUM_PINS];

void invokePinChangeInterrupt(uint8_t portNum, uint8_t pinBits);

// Don't fail if interrupt is not registered or enabled
BOOL tryInvokePinChangeInterrupt(uint8_t portNum, uint8_t pinBits);

#endif // __PIN_CHANGE_MOCK__
