
#ifndef _TWI_KERNEL_KERNEL_
#define _TWI_KERNEL_KERNEL_

#define TWI_Slave_Address 0x02
#define TWI_Slave_Buffer_Size 64

#include <kernel/TWI/twi_raw.kernel.h>

TWIBuffer twi_handleMasterRequest() {
	TWIBuffer buf;
	return buf;
}

void twi_handleMasterTransmission(TWIBuffer twi_buffer) {
	
}

#endif