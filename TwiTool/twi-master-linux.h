#ifndef TWI_MASTER_LINUX_H_
#define TWI_MASTER_LINUX_H_

#include <kernel/twi/driver/master.h>

// Must be set to the appropriate i2c bus-number before invoking twi_init()
extern unsigned short bus_number;

// This is non-null if twi_error == TWI_Bus_Error
extern char *twi_error_description;

#endif // TWI_MASTER_LINUX_H_

