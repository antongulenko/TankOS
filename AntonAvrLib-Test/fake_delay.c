/*
 * test_delay.c
 *
 *  Created on: 07.12.2012
 *      Author: Anton
 */

#include <anton_std.h>

uint32_t DelayedMS = 0;
uint16_t DelayMSCalled = 0;

void reset_test_delay() {
	DelayedMS = 0;
	DelayMSCalled = 0;
}

// Overrides the weak function defined in anton_std.h
void delay_ms_action(uint32_t ms) {
	DelayedMS += ms;
	DelayMSCalled++;
}
