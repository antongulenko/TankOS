#ifndef FAKE_PORT_H_
#define FAKE_PORT_H_

#include <anton_std.h>
#include <kernel/devices/port.h>

extern volatile uint8_t port, pin, ddr;

#define PORTTest port
#define PINTest pin
#define DDRTest ddr
#define PINTest1 1
#define PINTest2 4
#define PINTest3 6

#define Pin1Mask _BV(PINTest1)
#define Pin2Mask _BV(PINTest2)
#define Pin3Mask _BV(PINTest3)

DEFINE_PORT(Test)
DEFINE_PIN(Test, 1)
DEFINE_PIN(Test, 2)
DEFINE_PIN(Test, 3)

void init_fake_port();

#endif
