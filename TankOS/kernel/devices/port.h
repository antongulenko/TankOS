#ifndef PORT_H_
#define PORT_H_

#include <tank_os_common.h>

DEFINE_HANDLE(Port)
DEFINE_HANDLE(Pin)

Port newPort(volatile uint8_t *port, volatile uint8_t *pin, volatile uint8_t *ddr);
void destroyPort(Port port);
Pin newPin(Port port, uint8_t pinNumber);
void destroyPin(Pin pin);

void setPortOutput(Port port);
void setPortInput(Port port);

void setPinOutput(Pin pin);
void setPinInput(Pin pin);

void writePort(Port port, uint8_t value);
uint8_t readPort(Port port);

void writePin(Pin pin, BOOL value);
void setPinOne(Pin pin);
void setPinZero(Pin pin);

BOOL readPin(Pin pin);

#endif
