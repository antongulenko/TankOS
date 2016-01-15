#ifndef __hall_sensor__
#define __hall_sensor__

#include <tank_os_common.h>
#include <devices/port.h>

DEFINE_HANDLE(HallSensor);

#define PinHallSensor 10

HallSensor newHallSensor(uint8_t portNum, uint8_t pinNum, Pin pin, BOOL inverted);
HallSensor destroyHallSensor(HallSensor sensor);
BOOL hallSensorValid(HallSensor sensor);

typedef void (*HallSensorCallback)(void *callbackData);

void setHallCallback(HallSensor sensor, HallSensorCallback callback, void *callbackData);
BOOL hallSensorState(HallSensor sensor);

unsigned int countHallSensors();

#endif // __hall_sensor__
