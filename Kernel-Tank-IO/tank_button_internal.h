#ifndef TANK_BUTTON_INTERNAL_H_
#define TANK_BUTTON_INTERNAL_H_

#include "tank_button.h"
#include <kernel/processes/mutex/mutex.h>

extern Mutex buttonMutex;
extern uint8_t buttonsPressedSinceLastCall;
extern uint8_t wasPressed;

#endif