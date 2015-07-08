#ifndef PORT_H_
#define PORT_H_

#include "../../tank_os_common.h"

typedef struct {
	volatile uint8_t *port; // output-register
	volatile uint8_t *pin; // input-register
	volatile uint8_t *ddr; // data-direction-register
} Port, *PPort;

typedef struct {
	PPort port;
	uint8_t mask; // Single bit identifying the pin-bit in the port/pin/ddr registers
} Pin, *PPin;

void setPortOutput(PPort port);
void setPortInput(PPort port);

void setPinOutput(PPin pin);
void setPinInput(PPin pin);

void writePort(PPort port, uint8_t value);
uint8_t readPort(PPort port);

void writePin(PPin pin, BOOL value);
void setPinOne(PPin pin);
void setPinZero(PPin pin);

BOOL readPin(PPin pin);

#define DEFINE_PIN(port, pin) extern const PPin Pin##port##pin;
#define DEFINE_PORT(suffix) extern const PPort Port##suffix;

#define DEFINE_PORT_AND_PINS(port)	\
	DEFINE_PORT(port)				\
	DEFINE_PIN(port,0)				\
	DEFINE_PIN(port,1)				\
	DEFINE_PIN(port,2)				\
	DEFINE_PIN(port,3)				\
	DEFINE_PIN(port,4)				\
	DEFINE_PIN(port,5)				\
	DEFINE_PIN(port,6)				\
	DEFINE_PIN(port,7)

#define INIT_PIN(port, pin) Pin##port##pin##_ = (Pin) {	Port##port, _BV(PIN##port##pin)	};
#define INIT_PORT(port) Port##port##_ = (Port) { &PORT##port, &PIN##port, &DDR##port };

#define INIT_PORT_AND_PINS(port)	\
	INIT_PORT(port)				\
	INIT_PIN(port,0)			\
	INIT_PIN(port,1)			\
	INIT_PIN(port,2)			\
	INIT_PIN(port,3)			\
	INIT_PIN(port,4)			\
	INIT_PIN(port,5)			\
	INIT_PIN(port,6)			\
	INIT_PIN(port,7)

#define DEFINE_PIN_IMPL(port,pin)			\
	Pin Pin##port##pin##_;					\
	const PPin Pin##port##pin = &Pin##port##pin##_;
#define DEFINE_PORT_IMPL(port)				\
	Port Port##port##_;						\
	const PPort Port##port = &Port##port##_;

#define DEFINE_PORT_AND_PINS_IMPL(port)	\
	DEFINE_PORT_IMPL(port)				\
	DEFINE_PIN_IMPL(port,0)				\
	DEFINE_PIN_IMPL(port,1)				\
	DEFINE_PIN_IMPL(port,2)				\
	DEFINE_PIN_IMPL(port,3)				\
	DEFINE_PIN_IMPL(port,4)				\
	DEFINE_PIN_IMPL(port,5)				\
	DEFINE_PIN_IMPL(port,6)				\
	DEFINE_PIN_IMPL(port,7)

#endif
