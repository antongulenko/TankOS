#include <platform/platform_Avr/pin_change.h>
#include <kernel/klib.h>

#define MASK_REGISTERS ((volatile uint8_t*[4]) { &PCMSK0, &PCMSK1, &PCMSK2, &PCMSK3 })

#define PORTS 4
#define PINS 8

static PinHandlerList handlers[PORTS];

void enablePinChangeInterrupt(uint8_t portNum, uint8_t pinNum) {
	if (portNum >= PORTS || pinNum >= PINS) {
		klog("IPeN:%i\n", portNum); // Illegal Pin Change Interrupt Number
		return;
	}
	*(MASK_REGISTERS[portNum]) |= _BV(pinNum);
	PCICR |= _BV(portNum);
}

void addPinInterruptHandler(uint8_t portNum, PinInterruptHandler handler) {
	if (portNum >= PORTS) {
		klog("IPN:%i\n", portNum); // Illegal Pin Change Interrupt Number
		return;
	}
	PinHandlerList_add(&handlers[portNum], handler);
}

void removePinInterruptHandler(uint8_t portNum, PinInterruptHandler handler) {
	if (portNum >= PORTS) {
		klog("IPrN:%i\n", portNum); // Illegal Pin Change Interrupt Number
		return;
	}
	if (!PinHandlerList_remove(&handlers[portNum], handler))
		klog("IPM\n"); // Pin Interrupt Handler missing
}

static inline void handle(uint8_t num, volatile uint8_t *pin) {
	PinHandlerList_handle(handlers[num], num, (uint8_t *) pin);
}

INTERRUPT_HANDLER(PCINT0_vect) {
	handle(0, &PINA);
}

INTERRUPT_HANDLER(PCINT1_vect) {
	handle(1, &PINB);
}

INTERRUPT_HANDLER(PCINT2_vect) {
	handle(2, &PINC);
}

INTERRUPT_HANDLER(PCINT3_vect) {
	handle(3, &PIND);
}
