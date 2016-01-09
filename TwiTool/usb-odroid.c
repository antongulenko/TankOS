
#include "usb-odroid.h"

#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <sys/time.h>

//instructions
#define _mod_ver  "0.51x0.01"	// python HKUSBIO module version
#define _mod_date "2/25/2013x11/16/2013/"	// module date
#define u_ad0 0x37	// read ADC value from RA0
#define u_ad1 0x38	// read ADC value from RA1
#define u_i2c_init 0x40	// i2c_init(void)
#define u_i2c_idle 0x41	// i2c_idle(void)
#define u_i2c_strt 0x42	// i2c_start(uchar)
#define u_i2c_stop 0x43	// i2c_stop(void)
#define u_i2c_slak 0x44	// uchar i2c_slave_ack(void)
#define u_i2c_writ 0x45	// void i2c_write(uchar)
#define u_i2c_mack 0x46	// void i2c_master_ack(uchar)
#define u_i2c_read 0x47	// uchar i2c_read(void)
#define u_i2c_dtrd 0x48	// uchar i2c_isdatardy(void)
#define u_spi_init 0x50	// void spi_init(mode, baud, sample)
#define u_spi_tran 0x51	// uchar spi_transfer(regAddr)
#define u_spi_cs 0x52	// void spi_cs(enable|disable)
#define u_rom 0x85	// get PIC rom version
#define u_led 0x80	// toggle LED 
#define u_swc 0x81	// get switch pressed or not
#define u_gpd 0x84	// configure GPIO direction on a pin
#define u_gpi 0x82	// read value on GPIO pin
#define u_gpo 0x83	// write value to GPIO pin
#define u_uss 0x86	// send a string to the UART
#define u_tst 0x87	// test if UART has a char available
#define u_urc 0x88	// read a single char from UART
#define u_usc 0x89	// send a single char to the UART
#define h_getr 0x98	// SFR register to read
#define h_setr 0x99	// SFR register to set
#define h_getb 0x9a	// SFR read register bit
#define h_setb 0x9b	// SFR set register bit

//buffer
#define MAX_STR 65

//init() see beginning of main() in main.c 

//o_buf : send to PIC
//i_buf : recived from PIC

//other gpio functions over sfr

#define CHECK_DEVICE if (device == NULL) return FALSE;

hid_device* dev_open() {
	hid_device *device = hid_open(0x04D8, 0x003F, NULL);
	if (device) {
		hid_set_nonblocking(device, TRUE);
	}
	return device;
}

void dev_close(hid_device *device) {
	if (device)
		hid_close(device);
}

void checkmSec(int msec) {
	struct timeval ts, te;
	long tdiff, ms;

	gettimeofday(&ts, NULL);

	while(1) {
		gettimeofday(&te, NULL);

		tdiff = (1000000*(te.tv_sec - ts.tv_sec)) + (te.tv_usec - ts.tv_usec);

		ms = tdiff / 1000;

		if(ms > msec)
			break;
	}
}

//init() see beginning of main() in main.c 

//o_buf : send to PIC
//i_buf : recived from PIC

//other gpio functions over sfr

const char * module_version() {
	static char  a[80];
	strcpy(a, "Module Version: ");
	strcat(a, _mod_ver);
	strcat(a, " Date: ");
	strcat(a, _mod_date);
	return &a[0];
} 

BOOL rom_version(hid_device *device, char **result) {	// get PIC ROM version
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	unsigned char i_buf[MAX_STR];
	// read ROM version
	o_buf[0] = u_rom; //0 oder 1 ?
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	checkmSec(50);
	if (hid_read(device, i_buf, sizeof(i_buf)) == -1) return FALSE;
	static char a[80];
	strcpy(a, "ROM v");
	strncat(a, (char*) &i_buf[1], 1);
	strcat(a,".");
	strncat(a, (char*) &i_buf[2], 2); 
	//return &i_buf[0];
	*result = &a[0];
	return TRUE;
}

BOOL toggle_led(hid_device *device) {	// toggle LED
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	o_buf[0] = u_led;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	return TRUE;
}

BOOL read_switch(hid_device *device, char *result) {	// read switch press
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	unsigned char i_buf[MAX_STR];
	o_buf[0] = u_swc;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	checkmSec(50);
	if (hid_read(device, i_buf, sizeof(i_buf)) == -1) return FALSE;
	if (i_buf[1]==0) {*result=TRUE;}
	else {*result=FALSE;}
	return TRUE;
}

BOOL gpio_init(hid_device *device,unsigned char pin, unsigned char pdir) {	// set GPIO direction on pin
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	o_buf[0]=u_gpd;
	o_buf[1]=pin;
	o_buf[2]=pdir;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	return TRUE;
}

BOOL gpio_out(hid_device *device, char pin) {	// otuput a value on GPIO pin
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	o_buf[0]=u_gpo;
	o_buf[1]=pin;
	o_buf[2]=1;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	return TRUE;
}

BOOL gpio_in(hid_device *device, char pin, unsigned char *result) {	// read value on GPIO pin
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	unsigned char i_buf[MAX_STR];
	o_buf[0]=u_gpi;
	o_buf[1]=pin;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	checkmSec(50);
	if (hid_read(device, i_buf, sizeof(i_buf)) == -1) return FALSE;
	*result = i_buf[1];
	return TRUE;
}

BOOL adc_ra0(hid_device *device, unsigned int *result) { // do ADC conversion on RA0
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	unsigned char i_buf[MAX_STR];
	o_buf[0]=u_ad0;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	checkmSec(50);
	if (hid_read(device, i_buf, sizeof(i_buf)) == -1) return FALSE;
	*result = i_buf[2] << 8;
	*result |= i_buf[1];
	return TRUE;
}

BOOL adc_ra1(hid_device *device, unsigned int *result) {	// do ADC conversion on RA1
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	unsigned char i_buf[MAX_STR];
	o_buf[0]=u_ad1;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	checkmSec(50);
	if (hid_read(device, i_buf, sizeof(i_buf)) == -1) return FALSE;
	*result = i_buf[2] << 8;
	*result |= i_buf[1];
	return TRUE;
}

BOOL ser_test(hid_device *device, unsigned char *result) {	// check if a char available on serial port
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	unsigned char i_buf[MAX_STR];
	o_buf[0]=u_tst;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	checkmSec(50);
	if (hid_read(device, i_buf, sizeof(i_buf)) == -1) return FALSE;
	*result = i_buf[1];
	return TRUE;
}

BOOL ser_putc(hid_device *device,char schar) {	// send a char to the serial port
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	o_buf[0]=u_usc;
	o_buf[1]=schar;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	return TRUE;
}

BOOL ser_puts(hid_device *device, const char * strval) {	// send a string to the serial port
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	o_buf[0]=u_uss;
	strcat((char*) o_buf, strval);
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	return TRUE;
}

BOOL ser_getc(hid_device *device, unsigned char *result) { // get a single char from the serial port
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	unsigned char i_buf[MAX_STR];
	o_buf[0]=u_urc;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	checkmSec(50);
	if (hid_read(device, i_buf, sizeof(i_buf)) == -1) return FALSE;
	*result = i_buf[1];
	return TRUE;
}

BOOL sfr_get_reg(hid_device *device, unsigned char reg, unsigned char *result) {	// get a SFR register
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	unsigned char i_buf[MAX_STR];
	o_buf[0]=h_getr;
	o_buf[10]=reg;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	checkmSec(50);
	if (hid_read(device, i_buf, sizeof(i_buf)) == -1) return FALSE;
	*result = i_buf[1];
	return TRUE;
}

BOOL sfr_set_reg(hid_device *device, unsigned char reg, unsigned char rval, unsigned char *result) {	// set a SFR register
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	unsigned char i_buf[MAX_STR];
	o_buf[0]=h_setr;
	o_buf[10]=reg;		// register to select
	o_buf[11]=rval;	// value to set
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	checkmSec(50);
	if (hid_read(device, i_buf, sizeof(i_buf)) == -1) return FALSE;
	*result = i_buf[1];
	return TRUE;
}

BOOL sfr_get_regbit(hid_device *device, unsigned char reg, unsigned char bval, unsigned char *result) {	// get a SFR register bit
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	unsigned char i_buf[MAX_STR];
	o_buf[0]=h_getb;
	o_buf[10]=reg; // register to select
	o_buf[11]=bval;	// bit value to get
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	checkmSec(50);
	if (hid_read(device, i_buf, sizeof(i_buf)) == -1) return FALSE;
	*result = i_buf[1];
	return TRUE;
}

BOOL sfr_set_regbit(hid_device *device, unsigned char reg, unsigned char rbit, unsigned char bval, unsigned char *result) {	// set a SFR register bit
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	unsigned char i_buf[MAX_STR];
	o_buf[0]=h_setb;
	o_buf[10]=reg;		// register to select
	o_buf[11]=rbit;	// bit to set
	o_buf[12]=bval;	// bit value to set
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	checkmSec(50);
	if (hid_read(device, i_buf, sizeof(i_buf)) == -1) return FALSE;
	*result = i_buf[1];
	return TRUE;
}

BOOL i2c_init(hid_device *device) {	// init i2c
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	o_buf[0]=u_i2c_init;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	return TRUE;
}

BOOL i2c_idle(hid_device *device) {	// i2c idle
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	o_buf[0]=u_i2c_idle;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	return TRUE;
}

BOOL i2c_start(hid_device *device, char cval) {	// i2c start
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	o_buf[0]=u_i2c_strt;
	o_buf[1]=cval;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	return TRUE;
}

BOOL i2c_stop(hid_device *device) {	// i2c stop
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	o_buf[0]=u_i2c_stop;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	return TRUE;
}

BOOL i2c_slave_ack(hid_device *device, unsigned char *result) {	// i2c slave ack
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	unsigned char i_buf[MAX_STR];
	o_buf[0]=u_i2c_slak;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	checkmSec(50);
	if (hid_read(device, i_buf, sizeof(i_buf)) == -1) return FALSE;
	*result = i_buf[1];	// 1=no ack, 0=ack
	return TRUE;
}

BOOL i2c_write(hid_device *device, char cval) {	// i2c write
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	o_buf[0]=u_i2c_writ;
	o_buf[1]=cval;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	return TRUE;
}

BOOL i2c_master_ack(hid_device *device, char cval) {	// 1=nack, 0=ack
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	o_buf[0]=u_i2c_mack;
	o_buf[1]=cval;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	return TRUE;
}

BOOL i2c_read(hid_device *device, unsigned char *result) {	// i2c read
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	unsigned char i_buf[MAX_STR];
	o_buf[0]=u_i2c_read;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	checkmSec(50);
	if (hid_read(device, i_buf, sizeof(i_buf)) == -1) return FALSE;
	*result = i_buf[1];	//i2c_read char
	return TRUE;

}

BOOL i2c_isdatardy(hid_device *device, unsigned char *result) {	// check if i2c char avail
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	unsigned char i_buf[MAX_STR];
	o_buf[0]=u_i2c_dtrd;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	checkmSec(50);
	if (hid_read(device, i_buf, sizeof(i_buf)) == -1) return FALSE;
	*result = i_buf[1]; //i2c_read char
	return TRUE;
}

BOOL spi_init(hid_device *device, unsigned char mode, unsigned char baud, unsigned char sample) {	// SPI init
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	o_buf[0]=u_spi_init;
	o_buf[1]=mode;
	o_buf[2]=baud;
	o_buf[3]=sample;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	return TRUE;
}

BOOL spi_transfer(hid_device *device, unsigned char value, unsigned char *result) {	// SPI transfer
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	unsigned char i_buf[MAX_STR];
	o_buf[0]=u_spi_tran;
	o_buf[1]=value;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	checkmSec(50);
	if (hid_read(device, i_buf, sizeof(i_buf)) == -1) return FALSE;
	*result = i_buf[1];
	return TRUE;
}

BOOL spi_cs(hid_device *device, unsigned char select) {	// enable or disable SPI CS
	CHECK_DEVICE
	unsigned char o_buf[MAX_STR];
	o_buf[0]=u_spi_cs;
	o_buf[1]=select;
	if (hid_write(device, o_buf, sizeof(o_buf)) == -1) return FALSE;
	return TRUE;
}
