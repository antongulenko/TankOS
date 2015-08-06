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

typedef struct PinConfigEntry {
    PinConfigTag tag;
    void *configData;
    struct PinConfigEntry *next;
} PinConfigEntry;

typedef struct {
	_Port *port;
	uint8_t mask; // Single bit identifying the pin-bit in the port/pin/ddr registers
    PinConfigEntry config;
    PinConfigTag occupation;
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

Port destroyPort(Port port) {
    if (IsValid(port))
        free(PORT);
    return Invalid(Port);
}

Pin newPin(Port port, uint8_t pinNumber) {
    _Pin *pin = malloc(sizeof(_Pin));
    if (!pin) return Invalid(Pin);
    pin->port = PORT;
    pin->mask = _BV(pinNumber);
    pin->occupation = PinNoOccupation;
    pin->config.tag = PinGIO;
    pin->config.next = NULL;
    pin->config.configData = NULL; // Not required
    return As(Pin, pin);
}

Pin destroyPin(Pin pin) {
    if (IsValid(pin))
        free(PIN);
    return Invalid(Pin);
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

// == Pin configuration

BOOL registerPinConfig(Pin pin, PinConfigTag tag, void *configData) {
    PinConfigEntry *head = &PIN->config;
    while (head->next != NULL) {
        if (head->tag == tag) return FALSE;
        head = head->next;
    }
    PinConfigEntry *config = malloc(sizeof(PinConfigEntry));
    if (!config) return FALSE;
    head->next = config;
    config->next = NULL;
    config->tag = tag;
    config->configData = configData;
    return TRUE;
}

void *occupyPin(Pin pin, PinConfigTag tag) {
    if (PIN->occupation != PinNoOccupation)
        return NULL;
    PinConfigEntry *head = &PIN->config;
    void *configData = NULL;
    do {
        if (head->tag == tag) {
            configData = head->configData;
            break;
        }
    } while ((head = head->next) != NULL);
    if (configData != NULL)
        PIN->occupation = tag;
    return configData;
}

PinConfigTag pinOccupation(Pin pin) {
    return PIN->occupation;
}
