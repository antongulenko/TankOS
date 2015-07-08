/*
 * hardware_reset.c
 *
 * Created: 28.04.2012 11:05:02
 *  Author: Anton
 */

#include "../tank_os_common.h"
#include "hardware_reset.h"

void HARDWARE_RESET() {
	cli();
	// Clear this bit to enable WDE. Should already be 0, but make sure.
	MCUSR &= ~_BV(WDRF);
	wdt_enable(WDTO_15MS); // Shortest possible value.
	while(1) ;
}
