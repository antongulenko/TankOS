
#include <timer.h>
#include <platform/kernel_init.h>
#include "../Tank-Driver/tank_driver_service.h"
#include "../Tank-Driver/tank_driver_address.h"
#include "tank_led.h"

#define TANK_DRIVER_DEVICE ((TWIDevice) { TANK_DRIVER_ADDRESS })

void init_led_info_timer() {
	setGenericTimerFrequency(10000);
	enableGenericTimerInterrupt_A();
}
//KERNEL_INIT(init_led_info_timer)

static inline void show_battery(uint16_t val) {
	// TODO adjust range
	ControlledLeds leds[5] = { redLed1c, redLed2c, redLed3c, redLed4c, redLed5c };
	controlLedsShowValue(leds, 5, val, 500, 900);
}

static inline void show_motors(uint16_t val) {
	// TODO adjust range
	ControlledLeds leds[5] = { yellowLed1c, yellowLed2c, yellowLed3c, yellowLed4c, yellowLed5c };
	controlLedsShowValue(leds, 5, val, 10, 80);
}

static inline BOOL is_success(RpcClientResult res) {
	return res.status < TWI_RPC_call_error && 
		res.server_status == TWI_RPC_no_error &&
		res.handler_status == TWI_RPC_handler_ok;
}

// TODO debugging, remove
static uint16_t bat_val = 0;
void show_progress() {
	show_motors(bat_val);
	bat_val += 1;
	if (bat_val > 100) bat_val = 0;
}

static inline void do_update_led_info() {
	uint16_t battery;
	RpcClientResult res = tank_driver_get_battery_voltage(TANK_DRIVER_DEVICE, &battery);
	if (is_success(res)) {
		show_battery(battery);
	} else {
		printf(">%i,%i,%i,%i", twi_error, res.status, res.server_status, res.handler_status);
	}

	/*
	uint16_t motors;
	res = tank_driver_get_motor_voltage(TANK_DRIVER_DEVICE, (uint16_t) TANK_MOTOR_MAX, &motors);
	if (is_success(res)) {
		show_motors(motors);
	}
	*/
}

void update_led_info() {
	do_update_led_info();
}

void __vector_LED_INFO_INTERRUPT() INTERRUPT_FUNCTION;
void __vector_LED_INFO_INTERRUPT() {
    do_update_led_info();
}
