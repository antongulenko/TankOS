#ifndef _LED_CONTROL_
#define _LED_CONTROL_

#include "led.h"

DEFINE_HANDLE(ControlledLeds);

typedef enum {
    LedsEnabled,
    LedsDisabled,
    LedsBlinking,
    LedsBlinkingFast,
    LedsFlash,
    LedsLongFlash,

    // For Led groups
    LedsGroupRun
} LedState;

// If one Led is part of multiple ControlledLeds, the LedState
// of the last created ControlledLeds takes preference.

ControlledLeds newControlledLed(Led led);
ControlledLeds newControlledLedGroup(LedGroup group);
ControlledLeds destroyControlledLeds(ControlledLeds leds);
BOOL controlledLedsValid(ControlledLeds leds);

void controlLeds(ControlledLeds leds, LedState state);
LedState getControlledLedsState(ControlledLeds leds);

// Should be invoked every millisecond
// e.g. by binding __vector_LED_CONTROL_INTERRUPT to a timer-interrupt
void led_control_tick();

#endif // _LED_CONTROL_
