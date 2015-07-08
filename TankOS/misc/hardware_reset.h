/*
 * hardware_reset.h
 *
 * Created: 21.04.2012 14:48:42
 *  Author: Anton
 */ 

#ifndef HARWARE_RESET_H_
#define HARWARE_RESET_H_

// Enables the watchdog timer, disables interrupts and enters an infinite loop to wait for the WDT to
// trigger a hardware reset.
void HARDWARE_RESET();

#endif /* HARWARE_RESET_H_ */