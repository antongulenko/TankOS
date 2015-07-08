#ifndef READ_BUTTONS_LOOP_
#define READ_BUTTONS_LOOP_

#include "../tank_os_common.h"
#include "../kernel/devices/button.h"

DEFINE_HANDLE(ButtonLoopReader);

typedef void (*button_callback)(PButton button);

ButtonLoopReader ButtonLoopReader_Create(
		uint8_t buttonCount, PButton *buttonArray,
		button_callback button_pressed,
		button_callback button_released);
void ButtonLoopReader_Destroy(ButtonLoopReader reader);

// Enter an eternal loop, reading the status of the given buttons
// and invoking the weak function button_pressed() whenever a button
// is pressed. Holding buttons are ignored.
void ButtonLoopReader_Start(ButtonLoopReader reader);

// Stop this ButtonLoopReader.
void ButtonLoopReader_Stop(ButtonLoopReader reader);

#endif
