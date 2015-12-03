
#include <devices/led_control.h>
#include "tank_led.h"
#include <platform/platform_Avr/buffer_stdout.h>

#include <timer.h>
#include <platform/kernel_init.h>
#include "../Tank-Driver/tank_driver_service.h"
#include "../Tank-Driver/tank_driver_address.h"
#include "tank_led.h"
#include <stdio.h>

#define TANK_DRIVER_DEVICE ((TWIDevice) { TANK_DRIVER_ADDRESS })

void update_led_info();
void show_progress();

int main() {
	controlLeds(allLedsC, LedsGroupRun);

	//setGenericTimerFrequency(10000);
	//enableGenericTimerInterrupt_A();

	while (1) {
		update_led_info();
		delay_ms(50);
	}
}
