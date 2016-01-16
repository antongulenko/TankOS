
#include "twi-master.h"
#include "usb-odroid.h"
#include <stdio.h>

#define SLA_ACK_RETRIES 10

static hid_device *dev;

static void error(char *desc) {
    twi_error = TWI_Bus_Error;
    twi_error_description = desc;
    dev_close(dev);
    dev = NULL;
}

static BOOL check(char *desc, BOOL result) {
    printf("Checking: %s\n", desc);
    if (!result) {
        static char helper_buf[128];
        snprintf(helper_buf, sizeof(helper_buf) - 1, "Error communicating with USB device for %s", desc);
        error(helper_buf);
        return FALSE;
    }
    return TRUE;
}

static BOOL twi_master_prepare(TWIDevice targetDevice) {
    if (dev == NULL) return FALSE;
    twi_error_description = NULL;
    twi_error = TWI_No_Error;
    return check("init", i2c_init(dev));
}

static BOOL wait_sla_ack() {
    for (int i = 0; i < SLA_ACK_RETRIES; i++) {
        unsigned char res = 0xff;
        if (!check("sla-ack", i2c_slave_ack(dev, &res))) {
            return FALSE;
        }
        if (res == I2C_DATA_ACK)
            return TRUE;
    }
    error("No SLA ack");
    return FALSE;
}

static BOOL twi_start(BOOL restart) {
    BOOL ok;
    if (restart) {
        ok = i2c_start(dev, I2C_REP_START_CMD);
    } else {
        ok = i2c_start(dev, I2C_START_CMD);
    }
    return check("start", ok) && wait_sla_ack();
}

static BOOL twi_master_doSend(TWIDevice targetDevice, TWIBuffer data) {
    printTwiBuffer("sending", data);
    if (!check("write-addr", i2c_write(dev, TWI_SLA_WRITE(targetDevice)))) return FALSE;
    if (!wait_sla_ack()) return FALSE;

    for (int i = 0; i < data.size; i++) {
        if (!check("write", i2c_write(dev, data.data[i]))) return FALSE;
        if (!wait_sla_ack()) return FALSE;
    }
    return TRUE;
}

static BOOL twi_master_doReceive(TWIDevice targetDevice, TWIBuffer data) {
    printTwiBuffer("reading", data);
    if (!check("write-addr", i2c_write(dev, TWI_SLA_READ(targetDevice)))) return FALSE;
    if (!wait_sla_ack()) return FALSE;

    for (int i = 0; i < data.size; i++) {
        if (!check("read", i2c_read(dev, data.data + i))) return FALSE;
        if (i < data.size - 1) {
            if (!check("master-ack", i2c_master_ack(dev, I2C_DATA_ACK))) return FALSE;
        } else {
            if (!check("master-ack", i2c_master_ack(dev, I2C_DATA_NOACK))) return FALSE;
        }
    }
    return TRUE;
}

void twi_init_master(char *param) {
    dev = dev_open();
    if (!dev) error("Failed to open USB device");
}

void twiSend(TWIDevice targetDevice, TWIBuffer data) {
    if (!twi_master_prepare(targetDevice)) return;
    if (!twi_start(FALSE)) return;
    twi_master_doSend(targetDevice, data);
    check("stop", i2c_stop(dev));
}

void twiReceive(TWIDevice targetDevice, TWIBuffer data) {
    if (!twi_master_prepare(targetDevice)) return;
    if (!twi_start(FALSE)) return;
    twi_master_doReceive(targetDevice, data);
    check("stop", i2c_stop(dev));
}

void twiSendReceive(TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer receiveBuffer) {
    if (!twi_master_prepare(targetDevice)) return;
    if (!twi_start(FALSE)) return;
    twi_master_doSend(targetDevice, sendData);
    if (twi_error != TWI_No_Error) return;
    if (!twi_start(TRUE)) return;
    twi_master_doReceive(targetDevice, receiveBuffer);
    check("stop", i2c_stop(dev));
}
