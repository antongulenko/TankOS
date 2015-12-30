#include "hall.h"

#include <kernel/klib.h>
#include <platform/platform_Avr/pin_change.h>
#include <uthash/utlist.h>

typedef struct _HallSensor {
	Pin pin;
	uint8_t portNum;
	uint8_t pinNum;
	BOOL state;
	HallSensorCallback callback;
	void *callbackData;
	struct _HallSensor *next;
} _HallSensor;

#define SENSOR Get(_HallSensor, sensor)

static _HallSensor *sensors[NUM_PORTS];

static void hallSensorPinInterrupt(uint8_t portNum, uint8_t pinBits) {
	if (portNum >= NUM_PORTS) return;
	_HallSensor *sensor;
	LL_FOREACH(sensors[portNum], sensor) {
		BOOL newState = (pinBits & _BV(sensor->pinNum)) != 0;
		if (sensor->state != newState) {
			sensor->state = newState;
			if (sensor->callback != NULL) {
				sensor->callback(sensor->callbackData);
			}
		}
	}
}

HallSensor newHallSensor(uint8_t portNum, uint8_t pinNum, Pin pin) {
	if (portNum >= NUM_PORTS) return Invalid(HallSensor);
	_HallSensor *sensor = kalloc(sizeof(struct _HallSensor));
	if (!sensor) return Invalid(HallSensor);
	if (!occupyPin(pin, PinHallSensor)) {
		free(sensor);
		return Invalid(HallSensor);
	}

	setPinInput(pin);
	enablePinChangeInterrupt(portNum, pinNum);
	addPinInterruptHandler(portNum, hallSensorPinInterrupt);
	sensor->portNum = portNum;
	sensor->pinNum = pinNum;
	sensor->pin = pin;
	sensor->state = readPin(pin);
	sensor->callback = NULL;
	sensor->callbackData = NULL;
	sensor->next = NULL;
	LL_APPEND(sensors[portNum], sensor);
	return As(HallSensor, sensor);
}

HallSensor destroyHallSensor(HallSensor sensor) {
	if (IsValid(sensor)) {
		// TODO Should disable pin interrupt.
		deOccupyPin(SENSOR->pin, PinHallSensor);
		removePinInterruptHandler(SENSOR->portNum, hallSensorPinInterrupt);
		LL_DELETE(sensors[SENSOR->portNum], SENSOR);
		free(SENSOR);
	}
	return Invalid(HallSensor);
}

BOOL hallSensorValid(HallSensor sensor) {
	if (!IsValid(sensor)) return FALSE;
	if (pinOccupation(SENSOR->pin) != PinHallSensor) return FALSE;
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
		_HallSensor *sensor;
		LL_FOREACH(sensors[i], sensor) {
			result++;
		}
	}
	return result;
}
