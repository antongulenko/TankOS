/*
 * delay.h
 *
 *  Created on: 07.12.2012
 *      Author: Anton
 */

#ifndef DELAY_H_
#define DELAY_H_

// This module is there to keep track of number of MS that
// have been delayed. Mainly for tests.

extern uint32_t DelayedMS;

static inline void delay_ms(uint32_t ms) {
	DelayedMS += ms;
	_delay_ms(ms);
}

#endif /* DELAY_H_ */
