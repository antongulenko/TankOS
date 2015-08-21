#ifndef PORT_H_
#define PORT_H_

#include <tank_os_common.h>

DEFINE_HANDLE(Port);
DEFINE_HANDLE(Pin);

Port newPort(volatile uint8_t *port, volatile uint8_t *pin, volatile uint8_t *ddr);
Port destroyPort(Port port);
Pin newPin(Port port, uint8_t pinNumber);
Pin destroyPin(Pin pin);

// == Pin GPIO functionality (always available for every pin)

void setPortOutput(Port port);
void setPortInput(Port port);
void writePort(Port port, uint8_t value);
uint8_t readPort(Port port);

void setPinOutput(Pin pin);
void setPinInput(Pin pin);
void writePin(Pin pin, BOOL value);
void setPinOne(Pin pin);
void setPinZero(Pin pin);
BOOL readPin(Pin pin);

BOOL isPinOutputHigh(Pin pin);

// == Pin configuration
// Each pin can be occupied by a module before using, to ensure mutually exclusive pin usage.
// Possible usages are analog input, pwm output, buttons, leds or general purpose IO.
// When occupied, a pin is tagged with an module specific value. The module can also store some configuration data which can be retrieved later.
// Configuration data can be managed by registering a possible configuration on a pin. The pin can then be occupied by just providing the module
// specific value, the configuration will be retrieved from the registry.

typedef struct ConfigData {
    byte data[4];
} ConfigData;

#define EmptyConfigData ((ConfigData) {0})

typedef enum {
    PinNoOccupation = 0,
    PinGPIO = 1 // Available for every pin to be used as general IO pin.
} PinOccupation;

BOOL registerPinConfig(Pin pin, PinOccupation tag, ConfigData configData); // return FALSE if configuration with that tag is already present or if malloc failed.
BOOL occupyPin(Pin pin, PinOccupation tag); // return FALSE if pin is already occupied or requested configuration is not available.
BOOL occupyPinDirectly(Pin pin, PinOccupation tag, ConfigData configData); // Occupy without registering. return FALSE if pin already occupied.
PinOccupation pinOccupation(Pin pin);
ConfigData *pinConfigData(Pin pin, PinOccupation tag); // return {0} if pin not occupied or is occupied by different configuration than the given tag.
BOOL deOccupyPin(Pin pin, PinOccupation tag); // return FALSE, if pin was not occupied by tag.

#endif
