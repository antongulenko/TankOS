/*
 * delay.h
 *
 *  Created on: 07.12.2012
 *      Author: Anton
 */

#ifndef DELAY_H_
#define DELAY_H_

extern uint32_t DelayedMS;

#define delay_ms(ms) \
	DelayedMS += ms; \
	_delay_ms(ms)

#endif /* DELAY_H_ */
