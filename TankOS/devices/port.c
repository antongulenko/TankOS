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
    _Pin *pin = kalloc(sizeof(_Pin));
    if (!pin) return Invalid(Pin);
    pin->port = PORT;
    pin->mask = _BV(pinNumber);
    pin->config.tag = PinNoOccupation;
    pin->config.next = NULL;
    pin->config.configData = EmptyConfigData;
    Pin _pin = As(Pin, pin);
    registerPinConfig(_pin, PinGPIO, EmptyConfigData);
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

// Put error-strings in flash memory to preserve RAM
static const char msg_rPC[] PROGMEM = "rPC:%i<%i\n";
static const char msg_rPCd[] PROGMEM = "rPCd:%i\n";
static const char msg_oP[] PROGMEM = "oP:%i<%i\n";
static const char msg_oPF[] PROGMEM = "oPf:%i\n";
static const char msg_oPD[] PROGMEM = "oPD:%i<%i\n";
static const char msg_pCD[] PROGMEM = "pCD%i!%i\n";
static const char msg_dOP[] PROGMEM = "dOP:%i!%i\n";

BOOL registerPinConfig(Pin pin, PinOccupation tag, ConfigData configData) {
    if (!IsValid(pin)) return FALSE;
    if (PIN->config.tag != PinNoOccupation) {
        klog(msg_rPC, tag, PIN->config.tag); // registerPinConfig failed
        return FALSE;
    }
    PinConfigEntry *head = &PIN->config;
    while (head->next != NULL) {
        head = head->next;
        if (head->tag == tag) {
            klog(msg_rPCd); // registerPinConfig double registration
            return FALSE;
        }
    }
    PinConfigEntry *config = kalloc(sizeof(PinConfigEntry));
    if (!config) return FALSE;
    head->next = config;
    config->next = NULL;
    config->tag = tag;
    config->configData = configData;
    return TRUE;
}

BOOL occupyPin(Pin pin, PinOccupation tag) {
    if (!IsValid(pin)) return FALSE;
    if (PIN->config.tag != PinNoOccupation) {
        klog(msg_oP, tag, PIN->config.tag); // occupyPin failed
        return FALSE;
    }
    PinConfigEntry *head = &PIN->config;
    do {
        if (head->tag == tag) {
            PIN->config.tag = tag;
            PIN->config.configData = head->configData;
            return TRUE;
        }
    } while ((head = head->next) != NULL);
    klog(msg_oPF, tag); // occupyPin: registration not found
    return FALSE;
}

BOOL occupyPinDirectly(Pin pin, PinOccupation tag, ConfigData configData) {
    if (!IsValid(pin)) return FALSE;
    if (PIN->config.tag != PinNoOccupation) {
        klog(msg_oPD, tag, PIN->config.tag); // occupyPinDirectly failed
        return FALSE;
    }
    PIN->config.tag = tag;
    PIN->config.configData = configData;
    return TRUE;
}

PinOccupation pinOccupation(Pin pin) {
    if (!IsValid(pin)) return PinNoOccupation;
    return PIN->config.tag;
}

ConfigData *pinConfigData(Pin pin, PinOccupation tag) {
    if (!IsValid(pin)) return NULL;
    if (PIN->config.tag != tag) {
        klog(msg_pCD, tag, PIN->config.tag); // pinConfigData failed
        return &IllegalConfig;
    }
    // After the occupation, the relevant data is stored conveniently in the pin struct.
    return &PIN->config.configData;
}

BOOL deOccupyPin(Pin pin, PinOccupation tag) {
    if (!IsValid(pin)) return FALSE;
    if (PIN->config.tag != tag) {
        klog(msg_dOP, tag, PIN->config.tag); // deOccupyPin failed
        return FALSE;
    }
    PIN->config.tag = PinNoOccupation;
    PIN->config.configData = EmptyConfigData;
    return TRUE;
}
