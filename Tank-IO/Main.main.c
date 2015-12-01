
#include <devices/led_control.h>
#include "tank_led.h"

void update_led_info();

// Just say Hi go to sleep.
// Everything handled through interrupts.
int main() {
	controlLeds(allLedsC, LedsGroupRun);
	while (TRUE) {
		update_led_info();
		delay_ms(50);
	}
}
