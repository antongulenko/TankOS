#ifndef TWI_MASTER__H___
#define TWI_MASTER__H___

#include <tank_os_common.h>
#include <platform/twi/master.h>

// This is non-null if twi_error == TWI_Bus_Error
extern char *twi_error_description;

// If true, all sent/received buffers will be printed
extern BOOL print_buffer_contents;

// Meaning of param depends on implementation
void twi_init_master(char *param);

// For the implementation
void printTwiBuffer(char *comment, TWIBuffer buffer);
void printRawBuffer(char *comment, byte *buf, size_t len);

#endif // TWI_MASTER__H___
