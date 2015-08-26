#ifndef TWI_MASTER_LINUX_H_
#define TWI_MASTER_LINUX_H_

#include <platform/twi/master.h>

// Must be set to the appropriate i2c bus-number before invoking twi_init()
extern unsigned short bus_number;

// This is non-null if twi_error == TWI_Bus_Error
extern char *twi_error_description;

// If true, all sent/received buffers will be printed
extern BOOL print_buffer_contents;

void twi_init_linux();

#endif // TWI_MASTER_LINUX_H_
