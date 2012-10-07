#ifndef _TIMER_KERNEL_KERNEL_
#define _TIMER_KERNEL_KERNEL_

// This module sets up timers and defines CLOCKISR macros.
// No service routine is bound to the timers here.

#include <kernel/devices/timer_m1284P.kernel.h>

#define CLOCKISR_A TIMER3_COMPA_vect
#define CLOCKISR_B TIMER3_COMPB_vect
#define CLOCKTIMER_A Timer3A
#define CLOCKTIMER_B Timer3B

void init_timer() {
	setWaveformGenerationMode(Timer3, clear_timer_on_match);
	setTimerClockSelect(Timer3, prescale_8);
	
	// --> 8 * 2500 = 20000 @ 20MHz
	// results in one compare-match every millisecond.
	#define MILLISECOND_TIMER_VALUE ((uint16_t) 2500)
	
	setTimerCompareValue(Timer3A, MILLISECOND_TIMER_VALUE);
	setTimerCompareValue(Timer3B, MILLISECOND_TIMER_VALUE);
}
KERNEL_INIT(init_timer)

#endif