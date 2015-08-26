
#include <platform/kernel_init.h>

extern void init_avr_process_base(); // process.c
KERNEL_INIT(init_avr_process_base)
