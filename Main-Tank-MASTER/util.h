#ifndef _UTIL_TANK_MAIN_H_
#define _UTIL_TANK_MAIN_H_

#include <kernel.h>

void seed();

int16_t randomSpeed();

DEFINE_MOTOR(FakeMotor)

void init_fake_motor();

extern uint8_t ana_result;
BOOL ana_read(PAnalogInput input);
BOOL ana_read_interrupt(PAnalogInput input);

#endif