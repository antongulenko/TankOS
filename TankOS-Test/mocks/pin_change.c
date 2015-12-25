#include "pin_change.h"

#include <string.h>

void enablePinChangeInterrupt(uint8_t portNum, uint8_t pinNum) {
	if (portNum > 3 || pinNum > 7) return;
	pinChangeInterruptEnabled[portNum][pinNum] = TRUE;
}

void setPinInterruptHandler(uint8_t portNum, PinInterruptHandler handler) {
	pinChangeHandler[portNum] = handler;
}

BOOL invokePinChangeInterrupt(uint8_t portNum, uint8_t pinBits) {
	if (portNum < 4 && pinChangeHandler[portNum] != NULL) {
		BOOL enabled = FALSE;
		for (uint8_t i = 0; i < 8; i++) {
			if (pinChangeInterruptEnabled[portNum][i]) {
				enabled = TRUE;
				break;
			}
		}
		if (enabled) {
			pinChangeHandler[portNum](portNum, pinBits);
			return TRUE;
		}
	}
	return FALSE;
}

void initPinChangeInterrupts() {
	memset(pinChangeHandler, 0, sizeof(pinChangeHandler));
	memset(pinChangeInterruptEnabled, 0, sizeof(pinChangeInterruptEnabled));
}
