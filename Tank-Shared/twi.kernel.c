
#include <kernel/kernel_init.h>
#include <kernel/twi/twi_raw.h>

void configure_twi() {
	// TODO define these values from the linker??
	
	// The TWI bit rate: Maximal TWI frequency (400 KHz).
	// 100 = Medium frequency, 250 = Minimal frequency
	TwiBitRateValue = 17;
	TwiPrescalerMask = 0;
}
KERNEL_INIT(configure_twi)
