/*
 * hardware_reset.c
 *
 * Created: 28.04.2012 11:05:02
 *  Author: Anton
 */ 

#include "../anton_std.h"
#include "hardware_reset.h"

void HARDWARE_RESET() {
	cli();
	MCUSR &= _BV(WDRF); // Clear this bit to enable WDE
	WDTCSR = _BV(WDCE);
	WDTCSR = _BV(WDE); // All prescaler bits set to zero -> shortest possible timeout.
	while(1) ;
}
