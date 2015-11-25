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

#define enablePullup(pin) setPinOne(pin)
#define disablePullup(pin) setPinZero(pin)

BOOL isPinOutputHigh(Pin pin);

// == Pin configuration
// Each pin can be occupied by a module before using, to ensure mutually exclusive pin usage.
// Possible usages include analog input, pwm output, buttons, leds or general purpose IO.
// When occupied, a pin is tagged with an module specific value.

typedef enum {
    PinNoOccupation = 0,
    PinGPIO = 1 // Available for every pin to be used as general IO pin.
} PinOccupation;

BOOL occupyPin(Pin pin, PinOccupation tag); // return FALSE if pin is already occupied.
PinOccupation pinOccupation(Pin pin);
BOOL deOccupyPin(Pin pin, PinOccupation tag); // return FALSE, if pin was not occupied by tag.

#endif
