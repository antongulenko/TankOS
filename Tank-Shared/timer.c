
#include "timer.h"

void setTimerFrequency(Timer timer, uint16_t prescaler, uint16_t herz) {
    uint32_t prescaled_freq = F_CPU / (uint32_t) prescaler;
    uint32_t value = prescaled_freq / (uint32_t) herz;
    setTimerValue(timer, (uint16_t) value);
}

Timer millisecond_timer_A;
Timer millisecond_timer_B;
Timer generic_timer_A;
Timer generic_timer_B;

void setTimerPairFrequency(Timer timerA, Timer timerB, uint16_t herz) {
	// The timer A value dictates the frequency for both timer A and B.
    // Set a higher frequency for timer B so that interrupts are not fired the same time.
	setTimerFrequency(timerA, TIMER_PRESCALER, herz);
	setTimerFrequency(timerB, TIMER_PRESCALER, herz * 2);
}

void setGenericTimerFrequency(uint16_t herz) {
	setTimerPairFrequency(generic_timer_A, generic_timer_B, herz);
}
