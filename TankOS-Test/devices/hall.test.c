
#include <unity.h>
#include <devices/hall.h>
#include <mocks/port.h>
#include <mocks/pin_change.h>

HallSensor hall1, hall2, hall3;
BOOL called1, called2, called3;

static void callback(void *data) {
	if (data == &hall1) {
		TEST_ASSERT_FALSE(called1);
		called1 = TRUE;
	} else if (data == &hall2) {
		TEST_ASSERT_FALSE(called2);
		called2 = TRUE;
	} else if (data == &hall3) {
		TEST_ASSERT_FALSE(called3);
		called3 = TRUE;
	} else {
		TEST_FAIL_MESSAGE("Illegal data passed into hall callback");
	}
}

void setUp() {
	initPinChangeInterrupts();
	init_fake_port();
	TEST_ASSERT_EQUAL(0, countHallSensors());
	hall1 = newHallSensor(0, 0, testPin1);
	TEST_ASSERT(IsValid(hall1));
	TEST_ASSERT(hallSensorValid(hall1));
	hall2 = newHallSensor(0, 1, testPin2);
	TEST_ASSERT(IsValid(hall2));
	TEST_ASSERT(hallSensorValid(hall2));
	hall3 = newHallSensor(1, 0, testPin3);
	TEST_ASSERT(IsValid(hall3));
	TEST_ASSERT(hallSensorValid(hall3));
	TEST_ASSERT_EQUAL(3, countHallSensors());
	called1 = called2 = called3 = FALSE;
}

void tearDown() {
	hall1 = destroyHallSensor(hall1);
	TEST_ASSERT_FALSE(IsValid(hall1));
	TEST_ASSERT_EQUAL(PinNoOccupation, pinOccupation(testPin1));
	hall2 = destroyHallSensor(hall2);
	TEST_ASSERT_FALSE(IsValid(hall2));
	TEST_ASSERT_EQUAL(PinNoOccupation, pinOccupation(testPin2));
	hall3 = destroyHallSensor(hall3);
	TEST_ASSERT_FALSE(IsValid(hall3));
	TEST_ASSERT_EQUAL(PinNoOccupation, pinOccupation(testPin3));
	TEST_ASSERT_EQUAL(0, countHallSensors());
	destroy_fake_port();
}

void test_init() {
	TEST_ASSERT_FALSE(hallSensorState(hall1));
	TEST_ASSERT_FALSE(hallSensorState(hall2));
	TEST_ASSERT_FALSE(hallSensorState(hall3));
}

void test_reuse() {
	TEST_ASSERT_FALSE(IsValid(newHallSensor(0, 0, testPin1)));
	TEST_ASSERT_FALSE(IsValid(newHallSensor(0, 1, testPin2)));
	TEST_ASSERT_FALSE(IsValid(newHallSensor(1, 0, testPin3)));
}

void test_pin_change_enabled() {
	TEST_ASSERT_TRUE(pinChangeInterruptEnabled[0][0]);
	TEST_ASSERT_TRUE(pinChangeInterruptEnabled[0][1]);
	TEST_ASSERT_TRUE(pinChangeInterruptEnabled[1][0]);
	TEST_ASSERT_FALSE(pinChangeInterruptEnabled[0][2]);
	TEST_ASSERT_FALSE(pinChangeInterruptEnabled[1][1]);
}

void test_callback() {
	setHallCallback(hall1, &callback, &hall1);
	setHallCallback(hall2, &callback, &hall2);
	
	// Pin1 still down
	TEST_ASSERT(invokePinChangeInterrupt(0, 0));
	TEST_ASSERT_FALSE(called1 || called2 || called3);
	TEST_ASSERT_FALSE(hallSensorState(hall1));
	
	// Pin1 now up
	TEST_ASSERT(invokePinChangeInterrupt(0, _BV(0)));
	TEST_ASSERT(called1);
	called1 = FALSE;
	TEST_ASSERT_FALSE(called2 || called3);
	TEST_ASSERT(hallSensorState(hall1));

	// Pin1 still up
	TEST_ASSERT(invokePinChangeInterrupt(0, _BV(0)));
	TEST_ASSERT_FALSE(called1 || called2 || called3);
	TEST_ASSERT(hallSensorState(hall1));

	// Pin1 now down again
	TEST_ASSERT(invokePinChangeInterrupt(0, 0));
	TEST_ASSERT(called1);
	TEST_ASSERT_FALSE(hallSensorState(hall1));
	TEST_ASSERT_FALSE(called2 || called3);
}

void test_callback_2() {
	setHallCallback(hall1, &callback, &hall1);
	setHallCallback(hall2, &callback, &hall2);
	
	// Pin1 and 2 still down
	TEST_ASSERT(invokePinChangeInterrupt(0, 0));
	TEST_ASSERT_FALSE(called1 || called2 || called3);
	TEST_ASSERT_FALSE(hallSensorState(hall1));
	TEST_ASSERT_FALSE(hallSensorState(hall2));
	
	// Pin1 and 2 now up
	TEST_ASSERT(invokePinChangeInterrupt(0, 0xff));
	TEST_ASSERT(called1 && called2);
	called1 = called2 = FALSE;
	TEST_ASSERT_FALSE(called3);
	TEST_ASSERT(hallSensorState(hall1));
	TEST_ASSERT(hallSensorState(hall2));

	// Pin1 and 2 still up
	TEST_ASSERT(invokePinChangeInterrupt(0, 0xff));
	TEST_ASSERT_FALSE(called1 || called2 || called3);
	TEST_ASSERT(hallSensorState(hall1));
	TEST_ASSERT(hallSensorState(hall2));

	// Pin1 and 2 now down again
	TEST_ASSERT(invokePinChangeInterrupt(0, 0));
	TEST_ASSERT(called1 && called2);
	TEST_ASSERT_FALSE(hallSensorState(hall1));
	TEST_ASSERT_FALSE(hallSensorState(hall2));
	TEST_ASSERT_FALSE(called3);
}

void test_unregistererd_handler() {
	TEST_ASSERT(invokePinChangeInterrupt(0, 0xff));
	TEST_ASSERT(invokePinChangeInterrupt(1, 0xff));
	TEST_ASSERT_FALSE(invokePinChangeInterrupt(2, 0xff));
	TEST_ASSERT_FALSE(invokePinChangeInterrupt(3, 0xff));
	TEST_ASSERT_FALSE(called1 || called2 || called3);
}

void test_callback_3() {
	setHallCallback(hall1, &callback, &hall1);
	setHallCallback(hall2, &callback, &hall2);
	setHallCallback(hall3, &callback, &hall3);
	
	// Pins still down
	TEST_ASSERT(invokePinChangeInterrupt(0, 0));
	TEST_ASSERT_FALSE(called1 || called2 || called3);
	TEST_ASSERT_FALSE(hallSensorState(hall1));
	TEST_ASSERT_FALSE(hallSensorState(hall2));
	TEST_ASSERT_FALSE(hallSensorState(hall3));
	
	// Pins now up
	TEST_ASSERT(invokePinChangeInterrupt(0, 0xff));
	TEST_ASSERT(called1 && called2);
	called1 = called2 = FALSE;
	TEST_ASSERT_FALSE(called3);
	TEST_ASSERT(invokePinChangeInterrupt(1, 0xff));
	TEST_ASSERT(called3);
	called3 = FALSE;
	TEST_ASSERT(hallSensorState(hall1));
	TEST_ASSERT(hallSensorState(hall2));
	TEST_ASSERT(hallSensorState(hall3));

	// Pins still up
	TEST_ASSERT(invokePinChangeInterrupt(0, 0xff));
	TEST_ASSERT(invokePinChangeInterrupt(1, 0xff));
	TEST_ASSERT_FALSE(called1 || called2 || called3);
	TEST_ASSERT(hallSensorState(hall1));
	TEST_ASSERT(hallSensorState(hall2));
	TEST_ASSERT(hallSensorState(hall3));

	// Pins now down again
	TEST_ASSERT(invokePinChangeInterrupt(0, 0));
	TEST_ASSERT(called1 && called2);
	TEST_ASSERT_FALSE(called3);
	TEST_ASSERT(invokePinChangeInterrupt(1, 0));
	TEST_ASSERT(called3);
	TEST_ASSERT_FALSE(hallSensorState(hall1));
	TEST_ASSERT_FALSE(hallSensorState(hall2));
	TEST_ASSERT_FALSE(hallSensorState(hall3));
	
}
