#ifndef _TANK_IO_SERVICE_TWI_
#define _TANK_IO_SERVICE_TWI_

#include <twi/rpc/client_functions.h>
#include "tank_button.h"
#include "tank_led.h"

// inline array, indexed by below TankLedGroup enum values
#define TANK_LED_GROUPS ((ControlledLeds[]) { \
    yellowLed1c, yellowLed2c, yellowLed3c, yellowLed4c, yellowLed5c, \
    redLed1c, redLed2c, redLed3c, redLed4c, redLed5c, \
    greenLed1c, greenLed2c, greenLed3c, greenLed4c, greenLed5c, \
    yellowLedsC, greenLedsC, redLedsC, \
    middleLedsC, leftLedsC, rightLedsC, \
    allLedsC \
})

typedef enum {
    YELLOW_LED_1, YELLOW_LED_2, YELLOW_LED_3, YELLOW_LED_4, YELLOW_LED_5,
    RED_LED_1, RED_LED_2, RED_LED_3, RED_LED_4, RED_LED_5,
    GREEN_LED_1, GREEN_LED_2, GREEN_LED_3, GREEN_LED_4, GREEN_LED_5,
    YELLOW_LEDS, GREEN_LEDS, RED_LEDS,
    MIDDLE_LEDS, LEFT_LEDS, RIGHT_LEDS,
    ALL_LEDS
} TankLedGroup;

typedef enum {
    TANK_IO_BUTTON_STATUS = 20,
    TANK_IO_SET_LEDS
} PROTOCOL_TANK_IO_SERVICE; // Start at 20

typedef struct ButtonStatusResult {
    uint8_t statusMask;
    uint8_t wasPressedMask;
    uint8_t wasReleasedMask;
} ButtonStatusResult;

typedef struct SetLedsParameters {
    uint16_t group; // enum TankLedGroup
    uint16_t status; // enum LedStatus
} SetLedsParameters;

TWI_RPC_FUNCTION_NOARGS(tank_io_button_status, TANK_IO_BUTTON_STATUS, ButtonStatusResult)
TWI_RPC_FUNCTION_VOID(tank_io_set_leds, TANK_IO_SET_LEDS, SetLedsParameters)

#endif // _TANK_IO_SERVICE_TWI_
