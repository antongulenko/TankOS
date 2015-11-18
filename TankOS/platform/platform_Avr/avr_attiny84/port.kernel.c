#include <platform/kernel_init.h>
#include "port.h"

Port portA, portB;
Pin pinA0, pinA1, pinA2, pinA3, pinA4, pinA5, pinA6, pinA7;
Pin pinB0, pinB1, pinB2, pinB3;

static void init_ports_tiny84() {
	portA = newPort(&PORTA, &PINA, &DDRA);
    portB = newPort(&PORTB, &PINB, &DDRB);

    pinA0 = newPin(portA, 0);
    pinA1 = newPin(portA, 1);
    pinA2 = newPin(portA, 2);
    pinA3 = newPin(portA, 3);
    pinA4 = newPin(portA, 4);
    pinA5 = newPin(portA, 5);
    pinA6 = newPin(portA, 6);
    pinA7 = newPin(portA, 7);

    pinB0 = newPin(portB, 0);
    pinB1 = newPin(portB, 1);
    pinB2 = newPin(portB, 2);
    pinB3 = newPin(portB, 3);
}
KERNEL_INIT(init_ports_tiny84)
