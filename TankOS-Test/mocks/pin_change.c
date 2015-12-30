#include "pin_change.h"

#include <unity.h>
#include <string.h>
#include <uthash/utlist.h>

static PinHandlerList handlers[NUM_PORTS];

BOOL pinChangeInterruptEnabled[NUM_PORTS][NUM_PINS];

void enablePinChangeInterrupt(uint8_t portNum, uint8_t pinNum) {
	TEST_ASSERT_MESSAGE(portNum < NUM_PORTS, "portNum for pin-change-interrupt too large");
	TEST_ASSERT_MESSAGE(pinNum < NUM_PINS, "pinNum for pin-change-interrupt too large");
	pinChangeInterruptEnabled[portNum][pinNum] = TRUE;
}

void addPinInterruptHandler(uint8_t portNum, PinInterruptHandler handler) {
	TEST_ASSERT_MESSAGE(portNum < NUM_PORTS, "portNum for pin-change-interrupt too large");
	PinHandlerList_add(&handlers[portNum], handler);
}

void removePinInterruptHandler(uint8_t portNum, PinInterruptHandler handler) {
	TEST_ASSERT_MESSAGE(portNum < NUM_PORTS, "portNum for pin-change-interrupt too large");
	BOOL ok = PinHandlerList_remove(&handlers[portNum], handler);
	TEST_ASSERT_MESSAGE(ok, "Pin change handler missing, cannot remove");
}

BOOL tryInvokePinChangeInterrupt(uint8_t portNum, uint8_t pinBits) {
	if (portNum < NUM_PORTS) {
		BOOL enabled = FALSE;
		for (uint8_t i = 0; i < NUM_PINS; i++) {
			if (pinChangeInterruptEnabled[portNum][i]) {
				enabled = TRUE;
				break;
			}
		}
		if (enabled) {
			return PinHandlerList_handle(handlers[portNum], portNum, &pinBits);
		}
	}
	return FALSE;
}

void invokePinChangeInterrupt(uint8_t portNum, uint8_t pinBits) {
	if (!tryInvokePinChangeInterrupt(portNum, pinBits))
		TEST_FAIL_MESSAGE("Pin change interrupt not registered or not enabled!");
}

void initPinChangeInterrupts() {
	memset(handlers, 0, sizeof(handlers));
	memset(pinChangeInterruptEnabled, 0, sizeof(pinChangeInterruptEnabled));
}

void tearDownPinChangeInterrupts() {
	int count = 0;
	for (int i = 0; i < NUM_PORTS; i++) {
		PinHandlerList el;
		LL_FOREACH(handlers[i], el) {
			count++;
		}
	}
	TEST_ASSERT_EQUAL_MESSAGE(0, count, "Not all pin change interrupt handlers have been removed");
}
