/*
 * timer.c
 *
 * Created: 23.04.2012 23:21:07
 *  Author: Anton
 */

#include "timer.h"
#include "port.h"

typedef struct {
	TimerType type;
    BOOL pwm;
	Pin outputComparePin;
    volatile uint8_t *ocr;
} _Timer;

#define TIMER Get(_Timer, timer)

Timer newTimer(volatile uint8_t *outputCompareRegister, TimerType type) {
    _Timer *timer = malloc(sizeof(_Timer));
    if (!timer) return Invalid(Timer);
    timer->type = type;
    timer->pwm = FALSE;
    timer->outputComparePin = Invalid(Pin);
    timer->ocr = outputCompareRegister;
    return As(Timer, timer);
}

Timer newPwmTimer(volatile uint8_t *outputCompareRegister, TimerType type, Pin outputComparePin) {
    _Timer *timer = malloc(sizeof(_Timer));
    if (!timer) return Invalid(Timer);
    if (!occupyPinDirectly(outputComparePin, PinPwmOutput, EmptyConfigData)) {
        free(timer);
        return Invalid(Timer);
    }
    timer->type = type;
    timer->pwm = TRUE;
    timer->outputComparePin = outputComparePin;
    timer->ocr = outputCompareRegister;
    setPinOutput(outputComparePin);
    return As(Timer, timer);
}

Timer destroyTimer(Timer timer) {
    if (IsValid(timer)) {
        if (TIMER->pwm)
            deOccupyPin(TIMER->outputComparePin, PinPwmOutput);
        free(TIMER);
    }
    return Invalid(Timer);
}

BOOL timerValid(Timer timer) {
    if (!IsValid(timer)) return FALSE;
    if (TIMER->pwm)
        return pinOccupation(TIMER->outputComparePin) == PinPwmOutput;
    return TRUE;
}

void setTimerValue(Timer timer, uint16_t value) {
    if (!IsValid(timer)) return;
	if (TIMER->type == TimerResolution8) {
        *TIMER->ocr = HIBYTE(value);
    } else {
		// Setting a 16-bit register requires disabling interrupts for a short period.
		// The assembler-code will involve writing the high part to the TEMP register
		// before writing the low part directly into the low register, which also copies the TEMP register.
		uint8_t sreg = SREG;
		// Use as many significant bits as possible.
		if (TIMER->type == TimerResolution9) {
			value = value >> (16 - 9);
		} else if (TIMER->type == TimerResolution10) {
			value = value >> (16 - 10);
		}
		cli();
		// 16-bit register access -- high byte first. m1284P-manual page 113.
		// Compiler will turn these two sub-accesses around, so code them separately.
		*(TIMER->ocr + 1) = HIBYTE(value);
		*TIMER->ocr = LOBYTE(value);
		SREG = sreg; // re-enable interrupts
	}
}

uint16_t getTimerValue(Timer timer) {
    if (!IsValid(timer)) return 0;
	uint16_t result;
	if (TIMER->type == TimerResolution8) {
        // Use the 8-bit value as the high part of a word, filled with zeros.
		result = MAKE_WORD(*TIMER->ocr, 0x0);
    } else {
		// See comment above about 16-bit registers.
		uint8_t sreg = SREG;
		cli();
		// Reading OCR-register does not require any particular ordering of reading the bytes.
		result = *((uint16_t*) TIMER->ocr);
		SREG = sreg; // re-enable interrupts

		// Shift the value back. Non-significant bits are lost.
		if (TIMER->type == TimerResolution9) {
			result = result << (16 - 9);
		} else if (TIMER->type == TimerResolution10) {
			result = result << (16 - 10);
		}
	}
	return result;
}

Pin getTimerOutputPin(Timer timer) {
    if (!IsValid(timer)) return Invalid(Pin);
    return TIMER->outputComparePin;
}

BOOL isPwmTimer(Timer timer) {
    if (!IsValid(timer)) return FALSE;
    return TIMER->pwm;
}
