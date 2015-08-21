
// This is a Linux-native implementation of twi/driver/_master.c
// This module implements twi/driver/master.h

#include "twi-master-linux.h"
#include <linux/i2c-dev.h>
#include <sys/ioctl.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>

const char *i2c_file_prefix = "/dev/i2c-";

unsigned short bus_number;

static int file;
static char filename[30];
static char error_str[100];
static char helper_buf[50];

TwiError twi_error = TWI_No_Error;
char *twi_error_description;

static void error(char *desc) {
    char *errstr = strerror(errno);
    snprintf(error_str, sizeof(error_str) - 1, "%s [File %s] Error: %s\n", desc, filename, errstr);
    twi_error = TWI_Bus_Error;
    twi_error_description = error_str;
}

static BOOL prepare(TWIDevice targetDevice) {
    twi_error_description = NULL;
    twi_error = TWI_No_Error;
    int addr = targetDevice.address;
    if (ioctl(file, I2C_SLAVE, addr) < 0) {
        error("ioctl I2C_SLAVE failed");
        return FALSE;
    }
    return TRUE;
}

void twiSend(TWIDevice targetDevice, TWIBuffer data) {
    if (!prepare(targetDevice)) return;
    int res = write(file, data.data, data.size);
    if (res != data.size) {
        snprintf(helper_buf, sizeof(helper_buf) - 1, "%i bytes have been written instead of %i", res, data.size);
        error(helper_buf);
    }
}

void twiReceive(TWIDevice targetDevice, TWIBuffer data) {
    if (!prepare(targetDevice)) return;
    int res = read(file, data.data, data.size);
    if (res != data.size) {
        snprintf(helper_buf, sizeof(helper_buf) - 1, "%i bytes have been read instead of %i", res, data.size);
        error(helper_buf);
    }
}

void twiSendReceive(TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer receiveBuffer) {
    if (!prepare(targetDevice)) return;
    twiSend(targetDevice, sendData);
    twiReceive(targetDevice, receiveBuffer);
}

void twiWaitForCompletion() {
    // No-op. TODO no multi threading.
}

void twi_init_linux() {
    snprintf(filename, sizeof(filename) - 1, "%s%d", i2c_file_prefix, bus_number);
    file = open(filename, O_RDWR);
    if (file < 0) error("Failed to open");
}
