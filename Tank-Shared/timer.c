
#include "timer.h"

void enableTimerInterrupt_A() {
	TIMSK3 |= _BV(OCIE3A);
}

void enableTimerInterrupt_B() {
	TIMSK3 |= _BV(OCIE3B);
}

void setTimerFrequency(Timer timer, uint16_t herz) {
	uint32_t prescaled_freq = F_CPU / 8;
	uint32_t value = prescaled_freq / (uint32_t) herz;
	setTimerValue(timer, (uint16_t) value);
}
