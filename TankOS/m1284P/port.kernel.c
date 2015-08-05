/*
 * Created: 28.04.2012 11:26:42
 *  Author: Anton
 */

#include <kernel/kernel_init.h>
#include "port.h"

Port portA, portB, portC, portD;
Pin pinA0, pinA1, pinA2, pinA3, pinA4, pinA5, pinA6, pinA7;
Pin pinB0, pinB1, pinB2, pinB3, pinB4, pinB5, pinB6, pinB7;
Pin pinC0, pinC1, pinC2, pinC3, pinC4, pinC5, pinC6, pinC7;
Pin pinD0, pinD1, pinD2, pinD3, pinD4, pinD5, pinD6, pinD7;

static void init_ports_m1284P() {
	portA = newPort(&PORTA, &PINA, &DDRA);
    portB = newPort(&PORTB, &PINB, &DDRB);
    portC = newPort(&PORTC, &PINC, &DDRC);
    portD = newPort(&PORTD, &PIND, &DDRD);

    #define INIT_PINS(X) \
    pin##X##0 = newPin(port##X, 0); \
    pin##X##1 = newPin(port##X, 1); \
    pin##X##2 = newPin(port##X, 2); \
    pin##X##3 = newPin(port##X, 3); \
    pin##X##4 = newPin(port##X, 4); \
    pin##X##5 = newPin(port##X, 5); \
    pin##X##6 = newPin(port##X, 6); \
    pin##X##7 = newPin(port##X, 7);

    INIT_PINS(A)
    INIT_PINS(B)
    INIT_PINS(C)
    INIT_PINS(D)
}
KERNEL_INIT(init_ports_m1284P)
