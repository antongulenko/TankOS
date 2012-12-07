/*
 * anton_std.c
 *
 *  Created on: 07.12.2012
 *      Author: Anton
 */

#include "anton_std.h"

void delay_ms_action(uint32_t ms) __attribute__((weak));
void delay_ms_action(uint32_t ms) {
	// Nothing by default.
}
