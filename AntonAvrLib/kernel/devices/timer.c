/*
 * timer.c
 *
 * Created: 23.04.2012 23:21:07
 *  Author: Anton
 */ 

#include "timer.h"
#include "port.h"

// TODO clear_on_match is used, because its used for motors,
// and we want the timer-compare-value to reflect the voltage.
// Should be configured somewhere else.
#define DEFAULT_OUTPUT_COMPARE_MODE clear_on_match

void setCompareMatchOutputMode(PTimer timer, CompareMatchOutputMode com) {
	// The bit-makros of timer 0 are used here (COM0**), but the values for all other timers are the same!
	uint8_t zeroBits = 0;
	uint8_t oneBits = 0;
	switch(com) {
		case no_output:
			zeroBits = _BV(COM0B1) | _BV(COM0B0);
			break;
		case toggle_on_match:
			zeroBits = _BV(COM0B1);
			oneBits = _BV(COM0B0);
			break;
		case set_on_match:
			oneBits = _BV(COM0B1) | _BV(COM0B0);
			break;
		case clear_on_match:
			oneBits = _BV(COM0B1);
			zeroBits = _BV(COM0B0);
			break;
	}
	if (timer->type == TIMER_A) {
		// The COM-bits for the B-timer are right next to the A-timer-bits.
		// Use left shift to avoid the arithmetic shift.
		oneBits = oneBits << 2;
		zeroBits = zeroBits << 2;
	}
	*timer->timer->controlRegisterA |= oneBits;
	*timer->timer->controlRegisterA &= ~zeroBits;
}

void setTimerClockSelect(PTimerPair timer, TimerClockSelect cs) {
	BOOL asyncTimer = timer->flags & TIMER_ASYNCHRONOUS;
	uint8_t zeroBits = 0;
	uint8_t oneBits = 0;
	switch (cs) {
		case no_clock: // 000
			zeroBits = _BV(CS02) | _BV(CS01) | _BV(CS00);
			break;
		case prescale_1: // 001
			zeroBits = _BV(CS02) | _BV(CS01);
			oneBits = _BV(CS00);
			break;
		case prescale_8: // 010
			zeroBits = _BV(CS02) | _BV(CS00);
			oneBits = _BV(CS01);
			break;
		case prescale_32: // (only async) 011
			if (!asyncTimer) return; // INVALID!
			zeroBits = _BV(CS02);
			oneBits = _BV(CS01) | _BV(CS00);
		case prescale_64:
			if (asyncTimer) { // 100
				zeroBits = _BV(CS01) | _BV(CS00);
				oneBits = _BV(CS02);
			} else { // 011
				zeroBits = _BV(CS02);
				oneBits = _BV(CS01) | _BV(CS00);
			}
			break;
		case prescale_128: // (only async) 101
			if (!asyncTimer) return; // INVALID!
			zeroBits = _BV(CS01);
			oneBits = _BV(CS02) | _BV(CS00);
			break;
		case prescale_256:
			if (asyncTimer) { // 110
				oneBits = _BV(CS02) | _BV(CS01);
				zeroBits = _BV(CS00);
			} else { // 100
				oneBits = _BV(CS02);
				zeroBits = _BV(CS00) | _BV(CS01);
			}
			break;
		case prescale_1024:
			if (asyncTimer) { // 111
				oneBits = _BV(CS02) | _BV(CS01) | _BV(CS00);
			} else { // 101
				oneBits = _BV(CS02) | _BV(CS00);
				zeroBits = _BV(CS01);
			}
			break;
		case external_falling_edge: // (no async) 110 
			if (asyncTimer) return; // INVALID!
			oneBits = _BV(CS02) | _BV(CS01);
			zeroBits = _BV(CS00);
			break;
		case external_rising_edge: // (no async) 111
			if (asyncTimer) return; // INVALID!
			oneBits = _BV(CS02) | _BV(CS01) | _BV(CS00);
			break;
	}
	*timer->controlRegisterB |= oneBits;
	*timer->controlRegisterB &= ~zeroBits;
}

void setWaveformGenerationMode(PTimerPair timer, WaveformGenerationMode wgm) {
	uint8_t zeroBitsA = 0;
	uint8_t zeroBitsB = 0;
	uint8_t oneBitsA = 0;
	uint8_t oneBitsB = 0;
	if (timer->flags & TIMER_16bit) {
		// 16 bit: 1+0 in A, 2+3 in B
		switch(wgm) {
			case wgm_normal: // 0000
				zeroBitsA = _BV(WGM11) | _BV(WGM10);
				zeroBitsB = _BV(WGM13) | _BV(WGM12);
				break;
			case clear_timer_on_match: // 0100
				zeroBitsA = _BV(WGM11) | _BV(WGM10);
				zeroBitsB = _BV(WGM13);
				oneBitsB = _BV(WGM12);
				break;
			case pwm_fast:
				switch (timer->resolution) {
					case TIMER_RESOLUTION_9bit: // 0110
						oneBitsA = _BV(WGM11);
						zeroBitsA = _BV(WGM10);
						oneBitsB = _BV(WGM12);
						zeroBitsB = _BV(WGM13);
						break;
					case TIMER_RESOLUTION_10bit: // 0111
						oneBitsA = _BV(WGM10) | _BV(WGM11);
						oneBitsB = _BV(WGM12);
						zeroBitsB = _BV(WGM13);
						break;
					case TIMER_RESOLUTION_full: // 0101
						zeroBitsA = _BV(WGM11);
						oneBitsA = _BV(WGM10);
						zeroBitsB = _BV(WGM13);
						oneBitsB = _BV(WGM12);
						break;
					case TIMER_RESOLUTION_ocra: // 1111
						oneBitsA = _BV(WGM11) | _BV(WGM10);
						oneBitsB = _BV(WGM13) | _BV(WGM12);
						break;
					default:
						return;
				}
				break;
			case pwm_phase_correct:
				switch (timer->resolution) {
					case TIMER_RESOLUTION_9bit: // 0010
						zeroBitsA = _BV(WGM10);
						oneBitsA = _BV(WGM11);
						zeroBitsB = _BV(WGM13) | _BV(WGM12);
						break;
					case TIMER_RESOLUTION_10bit: // 0011
						oneBitsA = _BV(WGM11) | _BV(WGM10);
						zeroBitsB = _BV(WGM13) | _BV(WGM12);
						break;
					case TIMER_RESOLUTION_full: // 0001
						zeroBitsA = _BV(WGM11);
						oneBitsA = _BV(WGM10);
						zeroBitsB = _BV(WGM13) | _BV(WGM12);
						break;
					case TIMER_RESOLUTION_ocra: // 1011
						oneBitsA = _BV(WGM10) | _BV(WGM11);
						zeroBitsB = _BV(WGM12);
						oneBitsB = _BV(WGM13);
						break;
					default:
						return;
					}
				break;
			case pwm_phase_and_frequency_correct: // 1001
				oneBitsA = _BV(WGM10);
				zeroBitsA = _BV(WGM11);
				oneBitsB = _BV(WGM13);
				zeroBitsB = _BV(WGM12);
				break;
			default:
				return;
		}
	} else {
		// 8 bit: 0+1 in A, 2 in B
		switch (wgm) {
			case wgm_normal: // 000
				zeroBitsA = _BV(WGM01) | _BV(WGM00);
				zeroBitsB = _BV(WGM02);
				break;
			case clear_timer_on_match: // 010
				oneBitsA = _BV(WGM01);
				zeroBitsA = _BV(WGM00);
				zeroBitsB = _BV(WGM02);
				break;
			case pwm_fast: 
				if (timer->resolution == TIMER_RESOLUTION_full) { // 011
					oneBitsA = _BV(WGM00) | _BV(WGM01);
					zeroBitsB = _BV(WGM02);
				} else if (timer->resolution == TIMER_RESOLUTION_ocra) { // 111
					oneBitsA = _BV(WGM01) | _BV(WGM00);
					oneBitsB = _BV(WGM02);
				} else {
					return;
				}					
				break;
			case pwm_phase_correct:
				if (timer->resolution == TIMER_RESOLUTION_full) { // 001
					zeroBitsA = _BV(WGM01);
					oneBitsA = _BV(WGM00);
					zeroBitsB = _BV(WGM02);
				} else if (timer->resolution == TIMER_RESOLUTION_ocra) { // 101
					oneBitsA = _BV(WGM00);
					zeroBitsA = _BV(WGM01);
					oneBitsB = _BV(WGM02);
				} else {
					break;
				}					
				break; 
			default:
				return;
		}
	}
	*timer->controlRegisterA |= oneBitsA;
	*timer->controlRegisterA &= ~zeroBitsA;
	*timer->controlRegisterB |= oneBitsB;
	*timer->controlRegisterB &= ~zeroBitsB;
}

void enableTimerInterrupt(PTimer timer) {
	// OCIE0x is used as representative macro for all timers. All other values are the same.
	*timer->timer->interruptMaskRegister |= _BV(timer->type == TIMER_A ? OCIE0A : OCIE0B);
}

void disableTimerInterrupt(PTimer timer) {
	*timer->timer->interruptMaskRegister &= ~_BV(timer->type == TIMER_A ? OCIE0A : OCIE0B);
}

void enableOutputCompare(PTimer timer) {
	setPinOutput(timer->outputComparePin);
	setCompareMatchOutputMode(timer, DEFAULT_OUTPUT_COMPARE_MODE);
}

void disableOutputCompare(PTimer timer) {
	setPinZero(timer->outputComparePin);
	setCompareMatchOutputMode(timer, no_output);
}

void setTimerCompareValue(PTimer timer, uint16_t value) {
	if (timer->timer->flags & TIMER_16bit) {
		// Setting a 16-bit register requires disabling interrupts for a short period.
		// The assembler-code will involve writing the high part to the TEMP register
		// before writing the low part directly into the low register, which also copies the TEMP register.
		uint8_t sreg = SREG;
		// Use as many significant bits as possible.
		if (timer->timer->flags & TIMER_RESOLUTION_9bit) {
			value = value >> (16 - 9);
		} else if (timer->timer->flags & TIMER_RESOLUTION_10bit) {
			value = value >> (16 - 10);
		}
		cli();
		// 16-bit register access -- high byte first. m1284P-manual page 113.
		// Compiler will turn these two sub-accesses around, so code them separately.
		*((uint8_t*) timer->outputCompareRegister + 1) = HIBYTE(value);
		*((uint8_t*) timer->outputCompareRegister) = LOBYTE(value);
		SREG = sreg; // re-enable interrupts
	} else {
		*timer->outputCompareRegister = HIBYTE(value);
	}
}

uint16_t getTimerCompareValue(PTimer timer) {
	uint16_t result;
	if (timer->timer->flags & TIMER_16bit) {
		// See comment above about 16-bit registers.
		uint8_t sreg = SREG;
		cli();
		// Reading OCR-register does not require any particular ordering of reading the bytes.
		result = *((uint16_t*) timer->outputCompareRegister);
		SREG = sreg; // re-enable interrupts
		
		// Shift the value back. Non-significant bits are lost.
		if (timer->timer->flags & TIMER_RESOLUTION_9bit) {
			result = result << (16 - 9);
		} else if (timer->timer->flags & TIMER_RESOLUTION_10bit) {
			result = result << (16 - 10);
		}
	} else {
		// Use the 8-bit value as the high part of a word, filled with zeros.
		result = MAKE_WORD(*timer->outputCompareRegister, 0x0);
	}
	return result;
}
