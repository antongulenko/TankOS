
#include "twi-master.h"
#include "i2c-gpio.h"
#include <stdio.h>
#include <string.h>

#define TWI_ACTION_TIMEOUT_MILLIS 1

static struct GpioI2C bus;
static BOOL arbitration_lost;

static void error(char *desc, int code) {
    twi_error = TWI_Bus_Error;
    if (code < 0) {
        static char error_str[2048];
        snprintf(error_str, sizeof(error_str), "%s: %s", desc, i2c_gpio_errstring(code));
        twi_error_description = error_str;
    } else {
        twi_error_description = desc;
    }
}

static void cleanUp() {
    if (!arbitration_lost) {
        int res = i2c_gpio_stop(&bus);
        if (res < 0) {
            if (twi_error == TWI_No_Error)
                // Don't overwrite previous errors
                error("Stop", res);
            else
                fprintf(stderr, "Additional error generating Stop: %s\n", i2c_gpio_errstring(res));
        }
    }
    int res = i2c_gpio_destroy(&bus);
    if (res < 0) {
        if (twi_error == TWI_No_Error)
            // Don't overwrite previous errors
            error("Cleanup", res);
        else
            fprintf(stderr, "Additional error cleaning up: %s\n", i2c_gpio_errstring(res));
    }
}

static void prepare() {
    arbitration_lost = FALSE;
    twi_error_description = NULL;
    twi_error = TWI_No_Error;
}

static BOOL doStart() {
    int res = i2c_gpio_start(&bus);
    if (res < 0) {
        error("Start", res);
        return FALSE;
    }
    return TRUE;
}

static BOOL doRepstart() {
    int res = i2c_gpio_repstart(&bus);
    if (res < 0) {
        error("Repeated Start", res);
        return FALSE;
    }
    return TRUE;
}

static BOOL doAddress(TWIDevice targetDevice, BOOL write) {
    int addr = write ? TWI_SLA_WRITE(targetDevice) : TWI_SLA_READ(targetDevice);
    int res = i2c_gpio_write(&bus, addr);
    if (res < 0) {
        if (res == ERR_ARBITRATION_LOST) {
            arbitration_lost = TRUE;
        }
        error("Write SLA addr", res);
        return FALSE;
    }
    if (res == 1) return TRUE;
    error("SLA NACK", 0);
    return FALSE;
}

static BOOL doSend(TWIDevice targetDevice, TWIBuffer data) {
    if (!doAddress(targetDevice, TRUE)) return FALSE;
    printTwiBuffer("sending", data);
    for (int i = 0; i < data.size; i++) {
        byte val = data.data[i];
        int res = i2c_gpio_write(&bus, val);
        if (res < 0) {
            if (res == ERR_ARBITRATION_LOST) {
                arbitration_lost = TRUE;
            }
            static char buf[30];
            snprintf(buf, sizeof(buf), "Write data byte %i", i);
            error(buf, res);
            return FALSE;
        } else if (res == 1) {
            continue;
        } else {
            static char buf[30];
            snprintf(buf, sizeof(buf), "DATA NACK (byte %i)", i);
            error(buf, 0);
        }
    }
    delay_ms(TWI_ACTION_TIMEOUT_MILLIS);
    return TRUE;
}

static BOOL doReceive(TWIDevice targetDevice, TWIBuffer data) {
    if (!doAddress(targetDevice, FALSE)) return FALSE;
    for (int i = 0; i < data.size; i++) {
        int val = i2c_gpio_read(&bus);
        if (val < 0) {
            static char buf[30];
            snprintf(buf, sizeof(buf), "Read data byte %i", i);
            error(buf, val);
            return FALSE;
        }
        data.data[i] = (byte) val;
    }
    printTwiBuffer("received", data);
    delay_ms(TWI_ACTION_TIMEOUT_MILLIS);
    return TRUE;
}

// Parameter: "<scl> <sda>"
void twi_init_master(char *param) {
    char *paramCopy = malloc(strlen(param)); // Is never deallocated
    strcpy(paramCopy, param);
    const char delim[] = " ";
    char *scl = strtok(paramCopy, delim);
    char *sda = strtok(NULL, delim);
    char *end = strtok(NULL, delim);
    if (scl == NULL || sda == NULL || end != NULL) {
        static char buf[256];
        snprintf(buf, sizeof(buf), "Illegal module parameters: %s. Need: \"<scl> <sda>\"", param);
        error(buf, 0);
        return;
    }
    bus.sclPinNum = scl;
    bus.sdaPinNum = sda;
    int res = i2c_gpio_init(&bus);
    if (res < 0) {
        error("Init failed", res);
        res = i2c_gpio_destroy(&bus);
        if (res < 0)
            fprintf(stderr, "Additional error cleaning up: %s\n", i2c_gpio_errstring(res));
    }
}

void twiSend(TWIDevice targetDevice, TWIBuffer data) {
    prepare(targetDevice);
    if (doStart()) {
        doSend(targetDevice, data);
        cleanUp();
    }
}

void twiReceive(TWIDevice targetDevice, TWIBuffer data) {
    prepare(targetDevice);
    if (doStart()) {
        doReceive(targetDevice,data);
        cleanUp();
    }
}

void twiSendReceive(TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer receiveBuffer) {
    prepare(targetDevice);
    if (doStart()) {
        if (doSend(targetDevice, sendData))
            if (doRepstart())
                doReceive(targetDevice, receiveBuffer);
        cleanUp();
    }
}

