/*
 * read_button_loop.test.c
 *
 *  Created on: 07.12.2012
 *      Author: Anton
 */

#include <unity.h>
#include <tank_os_common.h>
#include <misc/ButtonLoopReader.h>
#include <kernel/devices/button.h>
#include "fake_port.h"

int timeToLive, expectedPresses;

// random values
PButton Btn1 = (PButton) 400;
PButton Btn2 = (PButton) 800;

#define BtnIndex(btn) (btn == Btn1 ? 0 : 1)

// These are just fake values so we can distinguish the two buttons.
int timesPressed[2], timesReleased[2];
PButton buttonArray[2];
BOOL lastButtonStatus[2];
ButtonLoopReader reader;

void my_button_pressed(PButton button);
void my_button_released(PButton button);

void setUp() {
	init_fake_port();
	reader = ButtonLoopReader_Create(2, buttonArray,
			my_button_pressed, my_button_released);
	
	expectedPresses = 0;
	timesPressed[0] = FALSE;
	timesPressed[1] = FALSE;
	timesReleased[0] = FALSE;
	timesReleased[1] = FALSE;
	lastButtonStatus[0] = FALSE;
	lastButtonStatus[1] = FALSE;
	buttonArray[0] = Btn1;
	buttonArray[1] = Btn2;
}

void tearDown() {
	TEST_ASSERT_EQUAL_MESSAGE(expectedPresses, timesPressed[0], "Wrong # of presses");
	TEST_ASSERT_EQUAL_MESSAGE(expectedPresses, timesPressed[1], "Wrong # of presses");
	TEST_ASSERT_EQUAL_MESSAGE(expectedPresses, timesReleased[0], "Wrong # of releases");
	TEST_ASSERT_EQUAL_MESSAGE(expectedPresses, timesReleased[1], "Wrong # of releases");
	ButtonLoopReader_Destroy(reader);
}

void invokeLoop() {
	// buttonStatus is queried twice because we have two buttons,
	// and twice because we have two states (pressed and released).
	timeToLive = expectedPresses * 4;
	ButtonLoopReader_Start(reader);
}

void my_button_pressed(PButton button) {
	TEST_ASSERT_EQUAL_MESSAGE(timesPressed[BtnIndex(button)],
			timesReleased[BtnIndex(button)], "Pressed != Released");
	timesPressed[BtnIndex(button)]++;
	timeToLive--;
	if (timeToLive <= 0)
		ButtonLoopReader_Stop(reader);
}

void my_button_released(PButton button) {
	TEST_ASSERT_EQUAL_MESSAGE(timesReleased[BtnIndex(button)],
			timesPressed[BtnIndex(button)] - 1, "Pressed - 1 != Released");
	timesReleased[BtnIndex(button)]++;
	timeToLive--;
	if (timeToLive <= 0)
		ButtonLoopReader_Stop(reader);
}

BOOL buttonStatus(PButton button) {
	// Toggle the button satus with each query.
	BOOL result = lastButtonStatus[BtnIndex(button)];
	lastButtonStatus[BtnIndex(button)] = !lastButtonStatus[BtnIndex(button)];
	return result;
}

void test_loop() {
	expectedPresses = 1;
	invokeLoop();
}

void test_loop_2() {
	expectedPresses = 3;
	invokeLoop();
}

void test_loop_3() {
	expectedPresses = 7;
	invokeLoop();
}
