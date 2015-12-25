#include "hall.h"

#include <kernel/klib.h>
#include <platform/platform_Avr/pin_change.h>

// TODO these values are controller-specific
#define NUM_PORTS 4
#define NUM_PINS 8

typedef struct _HallSensor {
	Pin pin;
	BOOL state;
	HallSensorCallback callback;
	void *callbackData;
	struct _HallSensor **container; // Pointer inside HallSensorArray
} _HallSensor;

#define SENSOR Get(_HallSensor, sensor)

typedef struct HallSensorArray {
	_HallSensor *arr[NUM_PINS];
} HallSensorArray;

static HallSensorArray *sensors[NUM_PORTS];

static inline HallSensorArray *getSensorArray(uint8_t portNum) {
	if (portNum >= NUM_PORTS) return NULL;
	return sensors[portNum];
}

static void hallSensorPinInterrupt(uint8_t portNum, uint8_t pinBits) {
	HallSensorArray *arr = getSensorArray(portNum);
	if (arr == NULL) return;
	for (uint8_t i = 0; i < NUM_PINS; i++) {
		_HallSensor *sensor = arr->arr[i];
		if (sensor != NULL) {
			BOOL newState = (pinBits & _BV(i)) != 0;
			if (sensor->state != newState) {
				sensor->state = newState;
				if (sensor->callback != NULL) {
					sensor->callback(sensor->callbackData);
				}
			}
		}
	}
}

HallSensor newHallSensor(uint8_t portNum, uint8_t pinNum, Pin pin) {
	if (pinNum >= NUM_PINS) return Invalid(HallSensor);
	HallSensorArray *arr = getSensorArray(portNum);
	if (arr != NULL) {
		if (arr->arr[pinNum] != NULL)
			return Invalid(HallSensor);
	} else {
		arr = kalloc(sizeof(HallSensorArray));
		if (arr == NULL) return Invalid(HallSensor);
		sensors[portNum] = arr;
	}

	_HallSensor *sensor = kalloc(sizeof(_HallSensor));
	if (!sensor) return Invalid(HallSensor);
	if (!occupyPin(pin, PinHallSensor)) {
		free(sensor);
		return Invalid(HallSensor);
	}
	arr->arr[pinNum] = sensor;

	setPinInput(pin);
	enablePinChangeInterrupt(portNum, pinNum);
	setPinInterruptHandler(portNum, hallSensorPinInterrupt);
	sensor->pin = pin;
	sensor->state = FALSE;
	sensor->callback = NULL;
	sensor->callbackData = NULL;
	sensor->container = &(arr->arr[pinNum]);
	return As(HallSensor, sensor);
}

HallSensor destroyHallSensor(HallSensor sensor) {
	if (IsValid(sensor)) {
		// TODO Should disable pin interrupt.
		deOccupyPin(SENSOR->pin, PinHallSensor);
		*(SENSOR->container) = NULL;
		free(SENSOR);
	}
	return Invalid(HallSensor);
}

BOOL hallSensorValid(HallSensor sensor) {
	if (!IsValid(sensor)) return FALSE;
	if (pinOccupation(SENSOR->pin) != PinHallSensor) return FALSE;
	if (*(SENSOR->container) != SENSOR) return FALSE;
	return TRUE;
}

void setHallCallback(HallSensor sensor, HallSensorCallback callback, void *callbackData) {
	if (IsValid(sensor)) {
		SENSOR->callback = callback;
		SENSOR->callbackData = callbackData;
	}
}

BOOL hallSensorState(HallSensor sensor) {
	if (!IsValid(sensor)) return FALSE;
	return SENSOR->state;
}

unsigned int countHallSensors() {
	unsigned int result = 0;
	for (int i = 0; i < NUM_PORTS; i++) {
		HallSensorArray *arr = getSensorArray(i);
		if (arr != NULL) {
			for (int j = 0; j < NUM_PINS; j++) {
				if (arr->arr[j] != NULL)
					result++;
			}
		}
	}
	return result;
}
