#include "tank_io_service.h"
#include <twi/rpc/server_handler_functions.h>

static RpcHandlerStatus tank_io_button_status_handler(TWIBuffer *resultBuffer) {
    ButtonStatusResult result = {
        .statusMask = buttonStatusMask(buttons),
        .wasPressedMask = wasPressedMask(buttons),
        .wasReleasedMask = wasReleasedMask(buttons)
    };
    FILL_RESULT(resultBuffer, ButtonStatusResult, result);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOARGS(tank_io_button_status_handler, TANK_IO_BUTTON_STATUS)

static RpcHandlerStatus tank_io_set_leds_handler(SetLedsParameters *params, uint16_t size) {
    if (size != sizeof(SetLedsParameters)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    TankLedGroup group = (TankLedGroup) params->group;
    if (params->group > ALL_LEDS) {
        return TWI_RPC_handler_illegal_parameters;
    }
    if (params->status >= LedsInvalid) {
        return TWI_RPC_handler_illegal_parameters;
    }
    ControlledLeds leds = TANK_LED_GROUPS[group];
    controlLeds(leds, params->status);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_io_set_leds_handler, TANK_IO_SET_LEDS, SetLedsParameters)
