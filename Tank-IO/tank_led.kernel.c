/*
 * Created: 28.04.2012 11:02:16
 *  Author: Anton
 */

#include "tank_led.h"
#include <platform/kernel_init.h>
#include <platform/Avr/m1284P/port.h>
#include <string.h>

Led whiteLed1, whiteLed2, whiteLed3, whiteLed4, whiteLed5;
Led redLed1, redLed2, redLed3, redLed4, redLed5;
Led greenLed1, greenLed2, greenLed3, greenLed4, greenLed5;

LedGroup redLeds, whiteLeds, greenLeds, leftLeds, middleLeds, rightLeds, allLeds;

#define ELEMS(arr) (sizeof(arr) / sizeof arr[0])

static Led whiteLedsArray[5];
static Led redLedsArray[5];
static Led greenLedsArray[5];
static Led allLedsArray[15];

static void init_tank_leds() {
    whiteLed1 = newLed(pinB2);
	whiteLed2 = newLed(pinB1);
	whiteLed3 = newLed(pinB0);
	whiteLed4 = newLed(pinB3);
	whiteLed5 = newLed(pinB4);

    redLed1 = newLed(pinB5);
	redLed2 = newLed(pinB6);
	redLed3 = newLed(pinB7);
	redLed4 = newLed(pinD0);
	redLed5 = newLed(pinD1);

	greenLed1 = newLed(pinD2);
	greenLed2 = newLed(pinD3);
	greenLed3 = newLed(pinD4);
    greenLed4 = newLed(pinD5);
    greenLed5 = newLed(pinD6);

    memcpy(whiteLedsArray, (Led[]) { whiteLed1, whiteLed2, whiteLed3, whiteLed4, whiteLed5 }, sizeof(whiteLedsArray));
    memcpy(redLedsArray, (Led[]) { redLed1, redLed2, redLed3, redLed4, redLed5 }, sizeof(redLedsArray));
    memcpy(greenLedsArray, (Led[]) { greenLed1, greenLed2, greenLed3, greenLed4, greenLed5 }, sizeof(greenLedsArray));

    memcpy(allLedsArray,
               (Led[]) { greenLed1, greenLed2, greenLed3, greenLed4, greenLed5,
                         redLed5, redLed4, redLed3, redLed2, redLed1, // Inverted for nicer run_leds effect
                         whiteLed1, whiteLed2, whiteLed3, whiteLed4, whiteLed5
			   }, sizeof(allLedsArray));

	redLeds = newLedGroup(redLedsArray, ELEMS(redLedsArray));
	whiteLeds = newLedGroup(whiteLedsArray, ELEMS(whiteLedsArray));
	greenLeds = newLedGroup(greenLedsArray, ELEMS(greenLedsArray));
	leftLeds = greenLeds;
    middleLeds =  redLeds;
	rightLeds = whiteLeds;
    allLeds = newLedGroup(allLedsArray, ELEMS(allLedsArray));
}
KERNEL_INIT(init_tank_leds)
