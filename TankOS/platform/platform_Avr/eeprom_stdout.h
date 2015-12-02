#ifndef EEPROM_STDOUT_H_
#define EEPROM_STDOUT_H_

#include <tank_os_common.h>
#include <stdio.h>

extern uint32_t eeprom_stdout_dropped;

extern FILE eeprom_stdout_stream;
int eeprom_stdout_putchar(char c, FILE *f);

void init_eeprom_stdout(char *eeprom_buffer, size_t eeprom_buffer_size, uint16_t *eeprom_bytes_written);

#endif /* EEPROM_STDOUT_H_ */
