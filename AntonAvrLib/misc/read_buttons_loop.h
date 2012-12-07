#ifndef READ_BUTTONS_LOOP_
#define READ_BUTTONS_LOOP_

#include "../kernel/devices/button.h"

// Enter an eternal loop, reading the status of the given buttons
// and invoking the weak function button_pressed() whenever a button
// is pressed. Holding buttons are ignored.
void read_buttons_loop(uint8_t buttonCount, PButton *buttonArray);

// The following functions can be implemented to handle the button events:
// void button_pressed(PButton button);
// void button_released(PButton button);

// This variable will be set to true when read_buttons_loop is called.
// Setting this to false causes the loop to terminate.
extern BOOL button_loop_running;

#endif
