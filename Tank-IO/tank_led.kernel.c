/*
 * Created: 28.04.2012 11:02:16
 *  Author: Anton
 */

#include "tank_led.h"
#include <platform/kernel_init.h>
#include <platform/platform_Avr/avr_atmega1284p/port.h>
#include <string.h>
#include <timer.h>

Led greenLed1, greenLed2, greenLed3, greenLed4, greenLed5;
Led redLed1, redLed2, redLed3, redLed4, redLed5;
Led yellowLed1, yellowLed2, yellowLed3, yellowLed4, yellowLed5;

LedGroup redLeds, yellowLeds, greenLeds, leftLeds, middleLeds, rightLeds, allLeds;

#define ELEMS(arr) (sizeof(arr) / sizeof arr[0])

static Led yellowLedsArray[5];
static Led redLedsArray[5];
static Led greenLedsArray[5];
static Led allLedsArray[15];

ControlledLeds yellowLed1c, yellowLed2c, yellowLed3c, yellowLed4c, yellowLed5c;
ControlledLeds redLed1c, redLed2c, redLed3c, redLed4c, redLed5c;
ControlledLeds greenLed1c, greenLed2c, greenLed3c, greenLed4c, greenLed5c;
ControlledLeds redLedsC, yellowLedsC, greenLedsC, leftLedsC, middleLedsC, rightLedsC, allLedsC;

static void init_tank_leds() {
    // Timer for led_control
    enableMillisecondTimerInterrupt_B();

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

    yellowLed1 = newLed(pinB2);
	yellowLed2 = newLed(pinB1);
	yellowLed3 = newLed(pinB0);
	yellowLed4 = newLed(pinB3);
	yellowLed5 = newLed(pinB4);

    memcpy(yellowLedsArray, (Led[]) { yellowLed1, yellowLed2, yellowLed3, yellowLed4, yellowLed5 }, sizeof(yellowLedsArray));
    memcpy(redLedsArray, (Led[]) { redLed1, redLed2, redLed3, redLed4, redLed5 }, sizeof(redLedsArray));
    memcpy(greenLedsArray, (Led[]) { greenLed1, greenLed2, greenLed3, greenLed4, greenLed5 }, sizeof(greenLedsArray));

    memcpy(allLedsArray,
               (Led[]) { greenLed1, greenLed2, greenLed3, greenLed4, greenLed5,
                         redLed5, redLed4, redLed3, redLed2, redLed1, // Inverted for nicer run_leds effect
                         yellowLed1, yellowLed2, yellowLed3, yellowLed4, yellowLed5
			   }, sizeof(allLedsArray));

	redLeds = newLedGroup(redLedsArray, ELEMS(redLedsArray));
	yellowLeds = newLedGroup(yellowLedsArray, ELEMS(yellowLedsArray));
	greenLeds = newLedGroup(greenLedsArray, ELEMS(greenLedsArray));
	leftLeds = greenLeds;
    middleLeds =  redLeds;
	rightLeds = yellowLeds;
    allLeds = newLedGroup(allLedsArray, ELEMS(allLedsArray));

    // ============ led_control ==============

    yellowLed1c = newControlledLed(yellowLed1);
    yellowLed2c = newControlledLed(yellowLed2);
    yellowLed3c = newControlledLed(yellowLed3);
    yellowLed4c = newControlledLed(yellowLed4);
    yellowLed5c = newControlledLed(yellowLed5);
    redLed1c = newControlledLed(redLed1);
    redLed2c = newControlledLed(redLed2);
    redLed3c = newControlledLed(redLed3);
    redLed4c = newControlledLed(redLed4);
    redLed5c = newControlledLed(redLed5);
    greenLed1c = newControlledLed(greenLed1);
    greenLed2c = newControlledLed(greenLed2);
    greenLed3c = newControlledLed(greenLed3);
    greenLed4c = newControlledLed(greenLed4);
    greenLed5c = newControlledLed(greenLed5);
    redLedsC = newControlledLedGroup(redLeds);
    yellowLedsC = newControlledLedGroup(yellowLeds);
    greenLedsC = newControlledLedGroup(greenLeds);
    leftLedsC = newControlledLedGroup(leftLeds);
    middleLedsC = newControlledLedGroup(middleLeds);
    rightLedsC = newControlledLedGroup(rightLeds);
    allLedsC = newControlledLedGroup(allLeds);
}
KERNEL_INIT(init_tank_leds)
