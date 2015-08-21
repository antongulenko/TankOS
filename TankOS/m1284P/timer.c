/*
 * Created: 28.04.2012 11:29:04
 *  Author: Anton
 */

#include <kernel/kernel_init.h>
#include <kernel/klib.h>
#include "timer.h"

// 9 or 10 bit resolution ignored.
static TimerType types[] = { TimerResolution8, TimerResolution16, TimerResolution8, TimerResolution16 };

Timer newTimer_m1284P(uint8_t num, TimerPart part, BOOL pwm) {
    if (num > 3) {
        klog("imt\n"); // Illegal m1284P timer
        return Invalid(Timer);
    }

    volatile uint8_t *ocr_registers[] = {
        &OCR0A, &OCR0B,
        (uint8_t*) &OCR1A, (uint8_t*) &OCR1B,
        &OCR2A, &OCR2B,
        (uint8_t*) &OCR3A, (uint8_t*) &OCR3B };

    uint8_t index = num * 2 + part;
    volatile uint8_t *ocr = ocr_registers[index];
    TimerType type = types[num];

    if (pwm) {
        Pin outputPins[] = {
	        pinB3,   // Pin 4
	        pinB4,   // Pin 5
	        pinD5,   // Pin 19
	        pinD4,   // Pin 18
	        pinD7,   // Pin 21
	        pinD6,   // Pin 20
	        pinB6,   // Pin 7
            pinB7 }; // Pin 8
        Pin pin = outputPins[index];
        return newPwmTimer(ocr, type, pin);
    } else {
		return newTimer(ocr, type);
    }
}
