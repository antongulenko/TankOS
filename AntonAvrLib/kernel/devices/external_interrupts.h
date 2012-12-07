/*
 * externalInterrupts.h
 *
 * Created: 26.04.2012 18:12:30
 *  Author: Anton
 */ 

#ifndef EXTERNAL_INTERRUPTS_H_
#define EXTERNAL_INTERRUPTS_H_

#include "../../anton_std.h"

// pcNumber is 0..31 and these functions will enable the 
// pin change interrupt PCIx, x being the given number.
void enablePinChangeInterrupt(uint8_t pcNumber);
void disblePinChangeInterrupt(uint8_t pcNumber);

// TODO enable controlling the EICRA (ext interrupt control register A)
// TODO enable configuring the INT2..0 (external interrupt, not pin change interrupt)

void clear_interrupt_registers();

#endif /* EXTERNALINTERRUPTS_H_ */
