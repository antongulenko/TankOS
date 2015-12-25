#ifndef _avr_pin_change_
#define _avr_pin_change_

#include <tank_os_common.h>

// pinNum: 0..3, pinNum: 0..7
void enablePinChangeInterrupt(uint8_t portNum, uint8_t pinNum);

typedef void (*PinInterruptHandler)(uint8_t portNum, uint8_t pinBits);

void setPinInterruptHandler(uint8_t portNum, PinInterruptHandler handler);

#endif // _avr_1284p_pin_change_
