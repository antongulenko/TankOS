
#include <devices/led_control.h>
#include "tank_led.h"

void update_led_info(); // led_info.kernel.c

int main() {
	controlLeds(allLedsC, LedsGroupRun);
	while (1) {
		update_led_info();
		delay_ms(50);
	}
}
