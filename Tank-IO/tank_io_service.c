#define RPC_CLIENT_IMPLEMENTATION
#include "tank_io_service.h"

int tank_io_button_status_format(int (*print)(const char *fmt, ...), void *results, uint16_t results_length) {
    if (results_length != sizeof(ButtonStatusResult)) return 0;
    ButtonStatusResult *status = (ButtonStatusResult*) results;
    return print("Buttons: status %02x, pressed %02x, released %02x", status->statusMask, status->wasPressedMask, status->wasReleasedMask);
}
