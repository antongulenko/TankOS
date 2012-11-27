/*
 * init.kernel
 *
 * Created: 02.05.2012 15:26:45
 *  Author: Anton
 */

#include <kernel/kernel_init.h>
#include <kernel/devices/timer_m1284P.h>
#include <timer.h>

// This is a header, and not a kernel.c file, because the 
// configuration here is preprocessor-based and different kernel-projects
// will have different configurations. Every kernel-project should define
// a init.kernel.c file, that includes this header.

// This function can be implemented in user code to have some initialization-code
// before the scheduler is started.
void before_scheduler() __attribute__((weak));
void before_scheduler() {
}

// This is a kernel-internal function to initialize the scheduler right before
// the timers start running.
// When this function is implemented, before_timer() should be called right before
// returning.
void before_timer() __attribute__((weak));
void before_timer() {
	before_scheduler();
}

// Can be defined by application, invoked after everything is set up, right before main()
void kernel_initialized() __attribute__((weak));
void kernel_initialized() {
}

// TODO put some common init-parts into the AntonLib-kernel?
void init_kernel() {
	// Power saving settings
	#ifdef DISABLE_AC
		ACSR |= _BV(ACD);
	#endif
	#ifdef DISABLE_TIMER0
		PRR0 |= _BV(PRTIM0);
	#endif
	#ifdef DISABLE_TIMER1
		PRR0 |= _BV(PRTIM1);
	#endif
	#ifdef DISABLE_TIMER2
		PRR0 |= _BV(PRTIM2);
	#endif
	#ifdef DISABLE_TIMER3
		PRR0 |= _BV(PRTIM3);
	#endif
	// TODO add more power saving settings, check whether these are correct.
	
	// WDT-configuration -- resets after 4s (alt.: 8S, 2S, 1S, 500MS, ...)
	// wdt_enable(WDTO_4S);
	
	// BOD - TODO configure?
	
	// Final initialization-sequence.
	// AFTER other modules modified __default_stack_size and __main_process_additional_memory
	before_timer(); // AFTER all other initialization and BEFORE starting the timers/scheduler
	
	#ifdef ENABLE_SOFTWARE_TIMER_A
	enableTimerInterrupt(millisecond_timer_A);
	#endif
	#ifdef ENABLE_SOFTWARE_TIMER_B
	enableTimerInterrupt(millisecond_timer_B);
	#endif
	
	sei();
	kernel_initialized();
}
KERNEL_INIT(init_kernel)
