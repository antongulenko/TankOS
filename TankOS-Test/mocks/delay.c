/*
 *  Created on: 07.12.2012
 *      Author: Anton
 */

#include <tank_os_common.h>
#include <unity.h>

uint32_t DelayedMS = 0;
uint16_t DelayMSCalled = 0;

void reset_test_delay() {
	DelayedMS = 0;
	DelayMSCalled = 0;
}

// Overrides the weak function defined in native_simulation.kernel.c
void delay_ms_hook(uint32_t ms) {
	DelayedMS += ms;
	DelayMSCalled++;
}

void delay_us_hook(uint32_t us) {
	TEST_FAIL_MESSAGE("delay_us should not be called!");
}
