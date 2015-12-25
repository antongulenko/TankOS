#include <platform/platform_Avr/pin_change.h>

#define MASK_REGISTERS ((volatile uint8_t*[4]) { &PCMSK0, &PCMSK1, &PCMSK2, &PCMSK3 })

static PinInterruptHandler handlers[4];

void enablePinChangeInterrupt(uint8_t portNum, uint8_t pinNum) {
	if (portNum > 3 || pinNum > 7) return;
	*(MASK_REGISTERS[portNum]) |= _BV(pinNum);
	PCICR |= _BV(portNum);
}

void setPinInterruptHandler(uint8_t portNum, PinInterruptHandler handler) {
	if (portNum > 3) return;
	handlers[portNum] = handler;
}

static inline void handle(uint8_t num, volatile uint8_t *pin) {
	PinInterruptHandler handler = handlers[num];
	if (handler != NULL) {
		(*handler)(num, *pin);
	}
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
