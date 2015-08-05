/*
 * port.c
 *
 * Created: 22.04.2012 17:39:24
 *  Author: Anton
 */

#include "port.h"

typedef struct {
	volatile uint8_t *port; // output-register
	volatile uint8_t *pin; // input-register
	volatile uint8_t *ddr; // data-direction-register
} _Port;

typedef struct {
	_Port *port;
	uint8_t mask; // Single bit identifying the pin-bit in the port/pin/ddr registers
} _Pin;

#define PORT Get(_Port, port)
#define PIN Get(_Pin, pin)

Port newPort(volatile uint8_t *port_reg, volatile uint8_t *pin_reg, volatile uint8_t *ddr_reg) {
    _Port *port = malloc(sizeof(_Port));
    if (!port) return Invalid(Port);
    port->port = port_reg;
    port->pin = pin_reg;
    port->ddr = ddr_reg;
    return As(Port, port);
}

void destroyPort(Port port) {
    if (IsValid(port))
        free(PORT);
}

Pin newPin(Port port, uint8_t pinNumber) {
    _Pin *pin = malloc(sizeof(_Pin));
    if (!pin) return Invalid(Pin);
    pin->port = PORT;
    pin->mask = _BV(pinNumber);
    return As(Pin, pin);
}

void destroyPin(Pin pin) {
    if (IsValid(pin))
        free(PIN);
}

void setPortOutput(Port port) {
	*PORT->ddr = 0xFF;
}

void setPortInput(Port port) {
	*PORT->ddr = 0;
}

void setPinOutput(Pin pin) {
	*PIN->port->ddr |= PIN->mask;
}

void setPinInput(Pin pin) {
	*PIN->port->ddr &= ~PIN->mask;
}

void writePort(Port port, uint8_t value) {
	*PORT->port = value;
}

uint8_t readPort(Port port) {
	return *PORT->pin;
}

void writePin(Pin pin, BOOL value) {
	if (value)
        setPinOne(pin);
	else
        setPinZero(pin);
}

extern uint8_t port;

void setPinOne(Pin pin) {
	*PIN->port->port |= PIN->mask;
}

void setPinZero(Pin pin) {
	*PIN->port->port &= ~PIN->mask;
}

BOOL readPin(Pin pin) {
	if (*PIN->port->pin & PIN->mask)
		return TRUE;
	else
		return FALSE;
}
