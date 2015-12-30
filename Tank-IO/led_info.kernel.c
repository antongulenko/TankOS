
#include <timer.h>
#include <platform/kernel_init.h>
#include "../Tank-Driver/tank_driver_service.h"
#include "../Tank-Driver/tank_driver_address.h"
#include "tank_led.h"
#include <stdio.h>

#define TANK_DRIVER_DEVICE ((TWIDevice) { TANK_DRIVER_ADDRESS })

static inline BOOL is_success(RpcClientResult res) {
	return res.status < TWI_RPC_call_error && 
		res.server_status == TWI_RPC_no_error &&
		res.handler_status == TWI_RPC_handler_ok;
}

static inline void show(ControlledLeds leds, RpcClientResult res, uint16_t val, uint16_t min, uint16_t max) {
	if (is_success(res)) {
		controlLedsMaskValue(leds, val, min, max);
		controlLeds(leds, LedsEnabled);
	} else {
		printf("err:%x,%x,%x,%x\n", twi_error, res.status, res.handler_status, res.server_status);
		controlLeds(leds, LedsBlinkingFast);
		controlLedsMask(leds, 0);
	}
}

static inline void update_battery() {
	// TODO adjust range
	// 12.75V ~ 830
	#define BATTERY_MIN 700
	#define BATTERY_MAX 1000

	uint16_t battery;
	RpcClientResult res = tank_driver_get_battery_voltage(TANK_DRIVER_DEVICE, &battery);
	show(redLedsC, res, battery, BATTERY_MIN, BATTERY_MAX);
}

static inline void update_motors() {
	// TODO adjust range
	// Beide 100%, mit beiden Händen festhalten: ~150
	#define MOTORS_MIN 10
	#define MOTORS_MAX 120
	
	uint16_t motors;
	RpcClientResult res = tank_driver_get_motor_voltage(TANK_DRIVER_DEVICE, (uint16_t) TANK_MOTOR_MAX, &motors);
	show(yellowLedsC, res, motors, MOTORS_MIN, MOTORS_MAX);
}

static inline void do_update_led_info() {
	update_battery();
	update_motors();
}

void update_led_info() {
	do_update_led_info();
}

void __vector_LED_INFO_INTERRUPT() INTERRUPT_FUNCTION;
void __vector_LED_INFO_INTERRUPT() {
    do_update_led_info();
}
