
#include <devices/led_control.h>
#include "tank_led.h"

// led_info.kernel.c
void update_led_info();

int main() {
	controlLeds(allLedsC, LedsGroupRun);
	while (1) {
		update_led_info();
		delay_ms(50);
	}
}
