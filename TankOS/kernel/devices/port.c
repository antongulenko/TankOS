/*
 * port.c
 *
 * Created: 22.04.2012 17:39:24
 *  Author: Anton
 */

#include "port.h"

typedef struct _Port {
	volatile uint8_t *port; // output-register
	volatile uint8_t *pin; // input-register
	volatile uint8_t *ddr; // data-direction-register
} _Port;

typedef struct PinConfigEntry {
    PinOccupation tag;
    ConfigData configData;
    struct PinConfigEntry *next;
} PinConfigEntry;

typedef struct _Pin {
	_Port *port;
	uint8_t mask; // Single bit identifying the pin-bit in the port/pin/ddr registers
    PinConfigEntry config; // This embedded entry holds the currently occupying configuration.
} _Pin;

#define PORT Get(_Port, port)
#define PIN Get(_Pin, pin)

static ConfigData IllegalConfig = { 0 };

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

static void freePinConfigList(_Pin *pin) {
    if (pin->config.next == NULL) return;
    PinConfigEntry *head = pin->config.next;
    pin->config.next = NULL;
    while (head != NULL) {
        PinConfigEntry *current = head;
        head = head->next;
        free(current);
    }
}

Pin newPin(Port port, uint8_t pinNumber) {
    _Pin *pin = malloc(sizeof(_Pin));
    if (!pin) return Invalid(Pin);
    pin->port = PORT;
    pin->mask = _BV(pinNumber);
    pin->config.tag = PinNoOccupation;
    pin->config.next = NULL;
    pin->config.configData = EmptyConfigData;
    Pin _pin = As(Pin, pin);
    registerPinConfig(_pin, PinGPIO, EmptyConfigData); // TODO error logging if registration not possible.
    return _pin;
}

Pin destroyPin(Pin pin) {
    if (IsValid(pin)) {
        freePinConfigList(PIN);
        free(PIN);
    }
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

// == Pin configuration

BOOL registerPinConfig(Pin pin, PinOccupation tag, ConfigData configData) {
    if (PIN->config.tag != PinNoOccupation)
        return FALSE;
    PinConfigEntry *head = &PIN->config;
    while (head->next != NULL) {
        head = head->next;
        if (head->tag == tag) return FALSE;
    }
    PinConfigEntry *config = malloc(sizeof(PinConfigEntry));
    if (!config) return FALSE;
    head->next = config;
    config->next = NULL;
    config->tag = tag;
    config->configData = configData;
    return TRUE;
}

BOOL occupyPin(Pin pin, PinOccupation tag) {
    if (PIN->config.tag != PinNoOccupation)
        return FALSE;
    PinConfigEntry *head = &PIN->config;
    do {
        if (head->tag == tag) {
            PIN->config.tag = tag;
            PIN->config.configData = head->configData;
            return TRUE;
        }
    } while ((head = head->next) != NULL);
    return FALSE;
}

BOOL occupyPinDirectly(Pin pin, PinOccupation tag, ConfigData configData) {
    if (PIN->config.tag != PinNoOccupation)
        return FALSE;
    PIN->config.tag = tag;
    PIN->config.configData = configData;
    return TRUE;
}

PinOccupation pinOccupation(Pin pin) {
    return PIN->config.tag;
}

ConfigData *pinConfigData(Pin pin, PinOccupation tag) {
    if (PIN->config.tag != tag)
        return &IllegalConfig;
    // After the occupation, the relevant data is stored conveniently in the pin struct.
    return &PIN->config.configData;
}

BOOL deOccupyPin(Pin pin, PinOccupation tag) {
    if (PIN->config.tag != tag)
        return FALSE;
    PIN->config.tag = PinNoOccupation;
    PIN->config.configData = EmptyConfigData;
    return TRUE;
}
