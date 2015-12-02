
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
	
	/*
	uint16_t battery = 6666;
	printf(" Calling!");
	RpcClientResult res = tank_driver_get_battery_voltage(TANK_DRIVER_DEVICE, &battery);
	printf(">(1)%i,%i,%i,%i(=%i)", twi_error, res.status, res.server_status, res.handler_status, battery);
	*/

	// printf("\n!!!\n");
	// buffer_stdout_flush_to_eeprom((char*) 2, 256);

	while (1) {
		show_progress();
		update_led_info();
		delay_ms(50);
	}
}
	