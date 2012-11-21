/*
 * timer.h
 *
 * Created: 23.04.2012 16:46:50
 *  Author: Anton
 */ 

#ifndef _TIMER_H_
#define _TIMER_H_

#include "../../anton_std.h"
#include "port.h"

// Uncovered timer/counter features:
// - Force output compare (all timers)
// - Input Capture (timer 1 and 3)
// - Asynchronous status register (timer 2)

typedef enum {
	wgm_normal,
	clear_timer_on_match,
	
	// TOP value is set by setTimerCompareValue()
	// On 16-bit timers, if one of TIMER_RESOLUTION_9bit or TIMER_RESOLUTION_10bit
	// is set, the setting with the reduced resolution will be used.
	pwm_phase_correct,
	pwm_fast,
	
	// Following only for Timer 1 & 3 (16-bit timers).
	pwm_phase_and_frequency_correct // TOP value is set by setTimerCompareValueXX()
} WaveformGenerationMode;

typedef enum {
	// The meanings of these vary slightly depending on the WGM.
	no_output,
	toggle_on_match,
	clear_on_match,
	set_on_match
} CompareMatchOutputMode;

typedef enum {
	no_clock,
	prescale_1,
	prescale_8,
	prescale_32, // only valid for timer 3
	prescale_64,
	prescale_128, // only valid for timer 3
	prescale_256,
	prescale_1024,
	external_falling_edge, // not valid for timer 3
	external_rising_edge // not valid for timer 3
} TimerClockSelect;

#define TIMER_NORMAL 0
#define TIMER_ASYNCHRONOUS (1 << 1)
#define TIMER_16bit (1 << 2)

// These flags affect the waveform-generation mode of the timer.
// The first two values are only valid for 16-bit timers (TIMER_16bit).
// These values also affect the handling of compare-output values.
typedef enum {
	TIMER_RESOLUTION_full, // Full 8/16 bit (default)
	TIMER_RESOLUTION_9bit,
	TIMER_RESOLUTION_10bit,
	TIMER_RESOLUTION_ocra // Value of OCRA determines resolution
} TIMER_RESOLUTION;

typedef struct {
	uint8_t flags; // Bitmask of the TIMER_* defines above
	TIMER_RESOLUTION resolution;
	volatile uint8_t *controlRegisterA;
	volatile uint8_t *controlRegisterB;
	volatile uint8_t *interruptMaskRegister;
} TimerPair, *PTimerPair;

typedef enum {
	TIMER_A,
	TIMER_B
} TIMER_TYPE;

typedef struct {
	PTimerPair timer;
	volatile uint8_t *outputCompareRegister;
	TIMER_TYPE type;
	PPin outputComparePin;
} Timer, *PTimer;

// Configuration-routines for timers. This alters the timer-control-registers only.
void setTimerClockSelect(PTimerPair timer, TimerClockSelect cs);
void setWaveformGenerationMode(PTimerPair timer, WaveformGenerationMode wgm);

void setCompareMatchOutputMode(PTimer timer, CompareMatchOutputMode com);

void enableTimerInterrupt(PTimer timer);
void disableTimerInterrupt(PTimer timer);
void enableOutputCompare(PTimer timer);
void disableOutputCompare(PTimer timer);

// If an 8-bit timer is used, the value is rounded by ignoring the LOW 8 bit.
void setTimerCompareValue(PTimer timer, uint16_t value);

// If an 8-bit timer is used, the LOW 8 bit of the result will be zero
uint16_t getTimerCompareValue(PTimer timer);

#define DEFINE_TIMER_PAIR(pairName) extern const PTimerPair pairName;
#define DEFINE_TIMER(timerName) extern const PTimer timerName;

#define INIT_TIMER_PAIR(pairName, flags, regA, regB, interrReg)						\
	pairName##_ = (TimerPair) {flags, TIMER_RESOLUTION_full, (uint8_t*) &regA, (uint8_t*) &regB, &interrReg};
#define INIT_TIMER(timerName, pairName, ocr, timerType, ocPin)				\
	timerName##_ = (Timer) {pairName, (uint8_t*) &ocr, timerType, ocPin};

#define DEFINE_TIMER_PAIR_IMPL(pairName)	\
	TimerPair pairName##_;				\
	const PTimerPair pairName = &pairName##_;
#define DEFINE_TIMER_IMPL(timerName)	\
	Timer timerName##_;				\
	const PTimer timerName = &timerName##_;

#endif