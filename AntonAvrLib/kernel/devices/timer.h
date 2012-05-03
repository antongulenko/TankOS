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
	
	// TOP value is always 0xFF
	pwm_fast_FF,
	pwm_phase_correct_FF,
	
	// TOP value is set by setTimerCompareValueXX()
	pwm_phase_correct,
	pwm_fast,
	
	// Following only for Timer 1 & 3 (16-bit timers). TOP value is the max 9/10 bit number (except for last)
	pwm_phase_correct_9bit,
	pwm_phase_correct_10bit,
	pwm_fast_9bit,
	pwm_fast_10bit,
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

typedef struct {
	uint8_t flags; // Bitmask of the TIMER_* defines above
	volatile uint8_t *controlRegisterA;
	volatile uint8_t *controlRegisterB;
	volatile uint8_t *interruptMaskRegister;
} TimerConfig, *PTimerConfig;

typedef enum {
	TIMER_A,
	TIMER_B
} TIMER_TYPE;

typedef struct {
	PTimerConfig timer;
	volatile uint8_t *outputCompareRegister;
	TIMER_TYPE type;
	PPin outputComparePin;
} Timer, *PTimer;

// Configuration-routines for timers. This alters the timer-control-registers only.
void setTimerClockSelect(PTimerConfig timer, TimerClockSelect cs);
void setWaveformGenerationMode(PTimerConfig timer, WaveformGenerationMode wgm);

void setCompareMatchOutputMode(PTimer timer, CompareMatchOutputMode com);

void enableTimerInterrupt(PTimer timer);
void enableOutputCompare(PTimer timer);
void disableOutputCompare(PTimer timer);

// If an 8-bit timer is used, the value is rounded by ignoring the LOW 8 bit.
void setTimerCompareValue(PTimer timer, uint16_t value);

// If an 8-bit timer is used, the LOW 8 bit of the result will be zero
uint16_t getTimerCompareValue(PTimer timer);

#ifdef _KERNEL_
#	define DEFINE_TIMER_CONFIG(configName)	\
	TimerConfig configName;
#	define DEFINE_TIMER(timerName)	\
	Timer timerName;
#	define INIT_TIMER_CONFIG(configName, flags, regA, regB, interrReg)	\
	configName = (TimerConfig) {flags, (uint8_t*) &regA, (uint8_t*) &regB, &interrReg};
#	define INIT_TIMER(timerName, configName, ocr, timerType, ocPin)	\
	timerName = (Timer) {&configName, (uint8_t*) &ocr, timerType, &ocPin};
#else
#	define DEFINE_TIMER_CONFIG(configName)	\
	extern TimerConfig configName;
#	define DEFINE_TIMER(timerName)	\
	extern Timer timerName;
#endif

#endif