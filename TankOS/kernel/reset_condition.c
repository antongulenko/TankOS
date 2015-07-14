/*
 * reset_condition.c
 *
 * Created: 28.04.2012 11:05:02
 *  Author: Anton
 */

#include "reset_condition.h"

uint8_t current_reset_status = 0;

ResetCondition getResetCondition() {
	uint16_t mask = 0;
	uint8_t status = current_reset_status;
	if (status & _BV(PORF)) {
		// Power-On-Reset-Flag
		mask |= PowerOnReset;
	}
	if (status & _BV(WDRF)) {
		// Watch-Dog-Reset-Flag
		mask |= WatchDogReset;
	}
	if (status & _BV(BORF)) {
		// Brown-Out-Reset-Flag
		mask |= BrownOutReset;
	}
	if (!mask) mask = OtherReset;
	return mask;
}

uint8_t rawResetConditionByte() {
	return current_reset_status;
}
