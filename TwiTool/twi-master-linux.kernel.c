
// This is a Linux-native implementation of twi/driver/_master.c
// This module implements twi/driver/master.h

#include "twi-master.h"
#include <linux/i2c-dev.h>
#include <sys/ioctl.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>

#define TWI_ACTION_TIMEOUT_MILLIS 1

const char *i2c_file_prefix = "/dev/i2c-";

static int file;
static char filename[30];
static char error_str[100];
static char helper_buf[50];

static void error(char *desc) {
    char *errstr = strerror(errno);
    snprintf(error_str, sizeof(error_str) - 1, "%s [File %s] Error: %s", desc, filename, errstr);
    twi_error = TWI_Bus_Error;
    twi_error_description = error_str;
}

static BOOL twi_master_prepare(TWIDevice targetDevice) {
    twi_error_description = NULL;
    twi_error = TWI_No_Error;
    int addr = targetDevice.address;
    if (ioctl(file, I2C_SLAVE, addr) < 0) {
        error("ioctl I2C_SLAVE failed");
        return FALSE;
    }
    return TRUE;
}

static void twi_master_doSend(TWIDevice targetDevice, TWIBuffer data) {
    printTwiBuffer("sending", data);
    int res = write(file, data.data, data.size);
    if (res != data.size) {
        snprintf(helper_buf, sizeof(helper_buf) - 1, "%i bytes have been written instead of %i", res, data.size);
        error(helper_buf);
    } else {
        delay_ms(TWI_ACTION_TIMEOUT_MILLIS);
    }
}

static void twi_master_doReceive(TWIDevice targetDevice, TWIBuffer data) {
    int res = read(file, data.data, data.size);
    if (res != data.size) {
        snprintf(helper_buf, sizeof(helper_buf) - 1, "%i bytes have been read instead of %i", res, data.size);
        error(helper_buf);
    } else {
        printTwiBuffer("received", data);
        delay_ms(TWI_ACTION_TIMEOUT_MILLIS);
    }
}

void twi_init_linux(char *param) {
    char *bus_number = param;
    snprintf(filename, sizeof(filename) - 1, "%s%s", i2c_file_prefix, bus_number);
    file = open(filename, O_RDWR);
    if (file < 0) error("Failed to open");
}

void twiSend(TWIDevice targetDevice, TWIBuffer data) {
    if (!twi_master_prepare(targetDevice)) return;
    twi_master_doSend(targetDevice, data);
}

void twiReceive(TWIDevice targetDevice, TWIBuffer data) {
    if (!twi_master_prepare(targetDevice)) return;
    twi_master_doReceive(targetDevice, data);
}

void twiSendReceive(TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer receiveBuffer) {
    if (!twi_master_prepare(targetDevice)) return;
    twi_master_doSend(targetDevice, sendData);
    if (twi_error != TWI_No_Error) return;
    twi_master_doReceive(targetDevice, receiveBuffer);
}
