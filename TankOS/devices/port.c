/*
 * Created: 22.04.2012 17:39:24
 *  Author: Anton
 */

#include <tank_os_common.h>
#include "port.h"
#include <kernel/klib.h>

typedef struct _Port {
	volatile uint8_t *port; // output-register
	volatile uint8_t *pin; // input-register
	volatile uint8_t *ddr; // data-direction-register
} _Port;

typedef struct _Pin {
	_Port *port;
	uint8_t mask; // Single bit identifying the pin-bit in the port/pin/ddr registers
    PinOccupation tag;
} _Pin;

#define PORT Get(_Port, port)
#define PIN Get(_Pin, pin)

Port newPort(volatile uint8_t *port_reg, volatile uint8_t *pin_reg, volatile uint8_t *ddr_reg) {
    _Port *port = kalloc(sizeof(_Port));
    if (!port) return Invalid(Port);
    port->port = port_reg;
    port->pin = pin_reg;
    port->ddr = ddr_reg;
    return As(Port, port);
}

Port destroyPort(Port port) {
    if (IsValid(port))
        free(PORT);
    return Invalid(Port);
}

Pin newPin(Port port, uint8_t pinNumber) {
    _Pin *pin = kalloc(sizeof(_Pin));
    if (!pin) return Invalid(Pin);
    pin->port = PORT;
    pin->mask = _BV(pinNumber);
    pin->tag = PinNoOccupation;
    Pin _pin = As(Pin, pin);
    return _pin;
}

Pin destroyPin(Pin pin) {
    if (IsValid(pin))
        free(PIN);
    return Invalid(Pin);
}

// == Pin GPIO functionality

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

BOOL isPinOutputHigh(Pin pin) {
    if (*PIN->port->port & PIN->mask)
		return TRUE;
	else
		return FALSE;
}

// == Pin occupation

BOOL occupyPin(Pin pin, PinOccupation tag) {
    if (!IsValid(pin)) return FALSE;
    if (PIN->tag != PinNoOccupation) {
        klog("oP:%i<%i\n", tag, PIN->tag); // occupyPin failed
        return FALSE;
    }
    PIN->tag = tag;
    return TRUE;
}

PinOccupation pinOccupation(Pin pin) {
    if (!IsValid(pin)) return PinNoOccupation;
    return PIN->tag;
}

BOOL deOccupyPin(Pin pin, PinOccupation tag) {
    if (!IsValid(pin)) return FALSE;
    if (PIN->tag != tag) {
        klog("dOP:%i!%i\n", tag, PIN->tag); // deOccupyPin failed
        return FALSE;
    }
    PIN->tag = PinNoOccupation;
    return TRUE;
}
