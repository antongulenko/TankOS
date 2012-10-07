#ifndef TANK_IO_PROTOCOL_H_
#define TANK_IO_PROTOCOL_H_

#define TANK_IO_ADDRESS (11 << 2)

// A random value, that is returned by TANK_IO_isInitialized to mean
// "true". "Random" value to assert correct communication.
#define TANK_IO_INITIALIZED 214

typedef enum {
	LEDS_ALL,
	LEDS_LEFT,
	LEDS_RIGHT,
	LEDS_MIDDLE,
	LEDS_RED,
	LEDS_YELLOW,
	LEDS_WHITE,
	LEDS_GREEN
} TankIoLeds;

// Bitmask-bits for the result of TANK_IO_buttonStatus
typedef enum {
	BUTTON_1 = _BV(0),
	BUTTON_2 = _BV(1),
	BUTTON_3 = _BV(2),
	BUTTON_4 = _BV(3),
	BUTTON_SWITCH = _BV(4)
} TankButton;

typedef struct {
	TankIoLeds leds;
	uint16_t mask;
} MaskedLeds;

typedef struct {
	TankIoLeds leds;
	uint8_t index;
} SingleLed;

typedef struct {
	SingleLed led;
	BOOL value;
} SetLedParam;

typedef struct {
	SingleLed led;
	uint8_t times;
} BlinkLedParam;

typedef struct {
	MaskedLeds leds;
	uint8_t times;
} BlinkLedsParam;

typedef struct {
	TankIoLeds leds;
	uint8_t times;
} BlinkAllLedsParam;

typedef struct {
	SingleLed led;
	uint16_t milliseconds;
} FlashLedParam;

typedef struct {
	MaskedLeds leds;
	uint16_t milliseconds;
} FlashLedsParam;

typedef struct {
	TankIoLeds leds;
	uint16_t milliseconds;
} FlashAllLedsParam;

typedef struct {
	TankIoLeds display;
	TankIoLeds notifier;
	byte data;
} BlinkByteParam;

enum {
	// == System
	// Triggers a hardware-reset
	TANK_IO_reset = 0xA0, // () => ()
	// Returns FALSE, while the IO-controller is not yet operational
	TANK_IO_isInitialized = 0xA1, // () => uint8_t
	
	// == Input
	TANK_IO_buttonStatus = 0xA2, // () => uint8_t
	// Buttons, that have been pressed since the last call to this.
	TANK_IO_pressedButtons = 0xA3, // () => uint8_t
	
	// == Output. Mirrors API of kernel/devices/led.h
	TANK_IO_enableLed = 0xA4, // SingleLed => ()
	TANK_IO_disableLed = 0xA5, // SingleLed => ()
	TANK_IO_setLed = 0xA6, // SetLedParam => ()

	TANK_IO_setLeds = 0xA7, // MaskedLeds => ()
	TANK_IO_enableLeds = 0xA8, // TankIoLeds => ()
	TANK_IO_disableLeds = 0xA9, // TankIoLeds => ()

	TANK_IO_blinkLed = 0xAA, // BlinkLedParam => ()
	TANK_IO_blinkLeds = 0xAB, // BlinkLedsParam => ()
	TANK_IO_blinkAllLeds = 0xAC, // BlinkAllLedsParam => ()

	TANK_IO_flashLed = 0xAD, // FlashLedParam => ()
	TANK_IO_flashLeds = 0xAE, // FlashLedsParam => ()
	TANK_IO_flashAllLeds = 0xAF, // FlashAllLedsParam => ()

	TANK_IO_blinkByte = 0xB0, // BlinkByteParam => ()
};

#endif