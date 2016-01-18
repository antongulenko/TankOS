
#include "i2c-gpio.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <platform/twi/driver.h>

static void help() {
    fprintf(stderr,
        "Parameters: <scl> <sda> <addr> (read|write|cleanup)\n"
        "Example:\n"
        "i2c-gpio.main.out 187 188 2a read\n"
    );
}

int main(int argc, char **argv) {
    if (argc != 5) {
        help();
        return 1;
    }
    struct GpioI2C bus;
    bus.sclPinNum = argv[1];
    bus.sdaPinNum = argv[2];
    char *addrStr = argv[3];
    char *ioStr = argv[4];
    int addrVal = (int) strtol(addrStr, NULL, 16);
    byte address;
    if (!strcmp(ioStr, "read")) {
        address = TWI_SLA_READ((TWIDevice) { addrVal });
    } else if (!strcmp(ioStr, "write")) {
        address = TWI_SLA_WRITE((TWIDevice) { addrVal });
    } else if (!strcmp(ioStr, "cleanup")) {
        fprintf(stderr, "Unexporting pins %s and %s, deleting %s\n", bus.sclPinNum, bus.sdaPinNum, LOCK_FILE);
        int res = i2c_gpio_cleanup(&bus);
        if (res < 0) {
            fprintf(stderr, "Error unexporting: %s\n", i2c_gpio_errstring(res));
        }
        return res >= 0;
    } else {
        help();
        return 1;
    }
    fprintf(stderr, "Testing %02x (%s address: %02x)\n", addrVal, ioStr, address);

    int res;
    if ((res = i2c_gpio_init(&bus) < 0)) {
        fprintf(stderr, "Init failed: %s\n", i2c_gpio_errstring(res));
    } else {
        res = i2c_gpio_try_address(&bus, address);
        if (res < 0)
            fprintf(stderr, "Testing %02x failed: %s\n", address, i2c_gpio_errstring(res));
        else
            fprintf(stderr, "Result of testing %02x: %i\n", address, res);
    }
    res = i2c_gpio_destroy(&bus);
    if (res < 0)
        fprintf(stderr, "Cleanup failed: %s\n", i2c_gpio_errstring(res));
}
