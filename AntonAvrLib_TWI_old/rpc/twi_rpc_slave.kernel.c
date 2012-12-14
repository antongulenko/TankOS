
// This is not clean C, but this is the easiest way to have one module for slave- and one
// for non-slave-TWI devices.

#define TWI_Slave
#include "twi_rpc.kernel.c"
