#ifndef _TANK_SCHEDULER_KERNEL_
#define _TANK_SCHEDULER_KERNEL_

#include <kernel/devices/timer_m1284P.kernel.h>
#include <kernel/processes/process_ext.kernel.h>
#include <kernel/processes/DMS/dms_scheduler.kernel.h>
#include <kernel/processes/RoundRobin/rr_scheduler.kernel.h>
#include <kernel/processes/idle/idle_scheduler.kernel.h>

#define CLOCKISR TIMER3_COMPA_vect
#include <kernel/processes/timed_scheduler.kernel.h>

void init_scheduler() {
	PTimerConfig timerConf = &Timer3;
	PTimer timer = &Timer3A;
	
	setWaveformGenerationMode(timerConf, clear_timer_on_match);
	setTimerCompareValue(timer, 2500);
	setTimerClockSelect(timerConf, prescale_8);
	// --> 8 * 2500 = 20000, resulting in one compare-match every millisecond
}
KERNEL_INIT(init_scheduler)

void start_scheduler() {
	// Enabling the interrupt will start invoking the scheduler.
	enableTimerInterrupt(&Timer3A);
	sei();
}

#endif