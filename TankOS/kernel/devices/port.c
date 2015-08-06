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

static void freePinConfigList(_Pin *pin) {
    if (pin->config.next == NULL) return;
    PinConfigEntry *head = pin->config.next;
    pin->config.next = NULL;
    while (head != NULL) {
        PinConfigEntry *current = head;
        head = head->next;

        // The configData is not freed, because it was not allocated
        // by this module and might not even be a valid pointer
        free(current);
    }
}

byte gpio_data = 0;

Pin newPin(Port port, uint8_t pinNumber) {
    _Pin *pin = malloc(sizeof(_Pin));
    if (!pin) return Invalid(Pin);
    pin->port = PORT;
    pin->mask = _BV(pinNumber);
    pin->occupation = PinNoOccupation;
    pin->config.tag = PinGPIO;
    pin->config.next = NULL;
    pin->config.configData = &gpio_data; // Not relevant
    return As(Pin, pin);
}

Pin destroyPin(Pin pin) {
    if (IsValid(pin)) {
        freePinConfigList(PIN);
        free(PIN);
    }
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
    if (PIN->occupation != PinNoOccupation)
        return FALSE;
    PinConfigEntry *head = &PIN->config;
    do {
        if (head->tag == tag) return FALSE;
        if (head->next != NULL)
            head = head->next;
        else
            break;
    } while (TRUE);
    PinConfigEntry *config = malloc(sizeof(PinConfigEntry));
    if (!config) return FALSE;
    head->next = config;
    config->next = NULL;
    config->tag = tag;
    config->configData = configData;
    return TRUE;
}

BOOL occupyPin(Pin pin, PinConfigTag tag) {
    if (PIN->occupation != PinNoOccupation)
        return FALSE;
    PinConfigEntry *head = &PIN->config;
    void *configData = NULL;
    do {
        if (head->tag == tag) {
            configData = head->configData;
            break;
        }
    } while ((head = head->next) != NULL);
    if (configData != NULL) {
        // Once the pin is occupied, we free the config-list except for the relevant entry.
        PIN->occupation = tag;
        freePinConfigList(PIN);
        PIN->config.next = NULL;
        PIN->config.tag = tag;
        PIN->config.configData = configData;
        return TRUE;
    }
    return FALSE;
}

PinConfigTag pinOccupation(Pin pin) {
    return PIN->occupation;
}

void *pinConfigData(Pin pin, PinConfigTag tag) {
    if (PIN->occupation != tag || PIN->config.tag != tag)
        return NULL;
    // After the occupation, the relevant data is stored conveniently in the pin struct.
    return PIN->config.configData;
}
