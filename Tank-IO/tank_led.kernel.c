/*
 * Created: 28.04.2012 11:02:16
 *  Author: Anton
 */

#include "tank_led.h"
#include <kernel/kernel_init.h>
#include <m1284P/port.h>
#include <string.h>

Led whiteLed1, whiteLed2, whiteLed3, whiteLed4, whiteLed5;
Led redLed1, redLed2, redLed3, redLed4, redLed5;
Led greenLed1, greenLed2, greenLed3, yellowLed1, yellowLed2;

LedGroup redLeds, yellowLeds, whiteLeds, greenLeds, leftLeds, middleLeds, rightLeds, allLeds;

#define ELEMS(arr) (sizeof(arr) / sizeof arr[0])

static Led whiteLedsArray[5];
static Led redLedsArray[5];
static Led greenLedsArray[3];
static Led yellowLedsArray[2];
static Led middleLedsArray[5];
static Led allLedsArray[15];

static void init_tank_leds() {
    whiteLed1 = newLed(pinB0);
	whiteLed2 = newLed(pinB1);
	whiteLed3 = newLed(pinB2);
	whiteLed4 = newLed(pinB3);
	whiteLed5 = newLed(pinB4);

    redLed1 = newLed(pinD2);
	redLed2 = newLed(pinD3);
	redLed3 = newLed(pinD4);
	redLed4 = newLed(pinD5);
	redLed5 = newLed(pinD6);

	greenLed1 = newLed(pinB5);
	greenLed2 = newLed(pinB6);
	greenLed3 = newLed(pinB7);
	yellowLed1 = newLed(pinD0);
	yellowLed2 = newLed(pinD1);

    memcpy(whiteLedsArray, (Led[]) { whiteLed1, whiteLed2, whiteLed3, whiteLed4, whiteLed5 }, sizeof(whiteLedsArray));
    memcpy(redLedsArray, (Led[]) { redLed1, redLed2, redLed3, redLed4, redLed5 }, sizeof(redLedsArray));
    memcpy(greenLedsArray, (Led[]) { greenLed1, greenLed2, greenLed3 }, sizeof(greenLedsArray));
    memcpy(yellowLedsArray, (Led[]) { yellowLed1, yellowLed2 }, sizeof(yellowLedsArray));
    memcpy(middleLedsArray, (Led[]) { greenLed1, greenLed2, greenLed3, yellowLed1, yellowLed2 }, sizeof(middleLedsArray));
    memcpy(allLedsArray,
               (Led[]) { whiteLed1, whiteLed2, whiteLed3, whiteLed4, whiteLed5,
				greenLed1, greenLed2, greenLed3, yellowLed1, yellowLed2,
				redLed1, redLed2, redLed3, redLed4, redLed5 }, sizeof(allLedsArray));

	redLeds = newLedGroup(redLedsArray, ELEMS(redLedsArray));
	yellowLeds = newLedGroup(yellowLedsArray, ELEMS(yellowLedsArray));
	whiteLeds = newLedGroup(whiteLedsArray, ELEMS(whiteLedsArray));
	greenLeds = newLedGroup(greenLedsArray, ELEMS(greenLedsArray));
	leftLeds = whiteLeds;
    middleLeds = newLedGroup(middleLedsArray, ELEMS(middleLedsArray));
	rightLeds = redLeds;
    allLeds = newLedGroup(allLedsArray, ELEMS(allLedsArray));
}
KERNEL_INIT(init_tank_leds)
