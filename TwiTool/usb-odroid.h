#ifndef __odroid_usb_io__
#define __odroid_usb_io__
// Source: http://forum.odroid.com/viewtopic.php?f=63&t=2755

#include <tank_os_common.h>
#include <usb-hid.h>

//registers
#define INTCON 0xf2   
#define INTCON2 0xf1  
#define INTCON3 0xf0 
#define SSP1CON3 0xcb 
#define SSP1MSK 0xca  
#define SSP1BUF 0xc9  
#define SSP1ADD 0xc8 
#define SSP1STAT 0xc7
#define SSP1CON1 0xc6 
#define SSP1CON2 0xc5 
#define TMR2 0xbc    
#define T2CON 0xba    
#define PSTR1CON 0xb9 
#define BAUDCON1 0xb8 
#define PWM1CON 0xb7 
#define SPBRGH1 0xb0
#define TRISE 0x96    
#define TRISD 0x95    
#define TRISC 0x94   
#define TRISB 0x93    
#define TRISA 0x92    
#define LATE 0x8d     
#define LATD 0x8c    
#define LATC 0x8b 
#define LATB 0x8a     
#define LATA 0x89     
#define PORTE 0x84   
#define PORTD 0x83    
#define PORTC 0x82   
#define PORTB 0x81    
#define PORTA 0x80   
#define ANSELE 0x5f
#define ANSELD 0x5e   
#define ANSELC 0x5d   
#define ANSELB 0x5c  
#define ANSELA 0x5b   
#define GP_RAM1 0x52  
#define GP_RAM2 0x51  
#define GP_RAM3 0x50 
#define GP_RAM4 0x4f
#define SPBRG1 0xaf   
#define CCPTMRS 0x59  
#define CCP1CON 0xbd 
#define CCPR1H 0xbf   
#define CCPR1L 0xbe   
#define T2CON 0xba    
#define PR2 0xbb 
#define VREFCON1 0x7c
#define VREFCON2 0x7b 
#define VREFCON0 0x7d 
#define ADCON0  0xc2

//bits
#define SSP1STAT_SMP 7 
#define SSP1STAT_CKE 6 
#define SSP1STAT_BF 0 
#define SSP1CON1_WCOL 7 
#define SSP1CON1_SSPOV 6 
#define SSP1CON1_SSPEN 5 
#define SSP1CON1_CKP 4
#define VREFCON1_DACEN 7 
#define VREFCON1_DACLPS 6 
#define VREFCON1_DACOE 5 
#define VREFCON1_DACNSS 0 
#define VREFCON1_DACPSS1 3 
#define VREFCON1_DACPSS0 2

//constants
#define rd4 1		// GPIO pin rd4	def=input
#define rd5 2		// GPIO pin rd5	def=input
#define rd6 3		// GPIO pin rd6	def=output
#define rd7 4		// GPIO pin rd7	def=output
#define pwm_rd5 2
#define pwm_rd6 3
#define pwm_rd7 4
#define pwm_rc1 5
#define dir_output 0	// control GPIO pin direction
#define dir_input 1
#define SPI_LOW_BAUD 0// 750khz
#define SPI_MED_BAUD 1// 3mhz
#define SPI_HI_BAUD  2// 12mhz
#define SPI_SAMP_MID 0// sample input in middle data input time
#define SPI_SAMP_END 1// sample input at end of data input
#define SPI_MODE0 0
#define SPI_MODE1 1
#define SPI_MODE2 2
#define SPI_MODE3 3
#define SPI_CS_ENABLE 0
#define SPI_CS_DISABLE 1
#define I2C_DATA_ACK 0	// i2c constants
#define I2C_DATA_NOACK 1
#define I2C_WRITE_CMD 0
#define I2C_READ_CMD 1
#define I2C_START_CMD 0
#define I2C_REP_START_CMD 1
#define I2C_REQ_ACK 0
#define I2C_REQ_NOACK 0

hid_device* dev_open();
void dev_close(hid_device *device);

const char * module_version();
BOOL rom_version(hid_device *device, char **result); // get PIC ROM version

BOOL toggle_led(hid_device *device);
BOOL read_switch(hid_device *device, char *result);

BOOL gpio_init(hid_device *device, unsigned char pin, unsigned char pdir); // set GPIO direction on pin
BOOL gpio_out(hid_device *device, char pin);
BOOL gpio_in(hid_device *device, char pin, unsigned char *result);

BOOL adc_ra0(hid_device *device, unsigned int *result);
BOOL adc_ra1(hid_device *device, unsigned int *result);

BOOL ser_test(hid_device *device, unsigned char *result); // check if a char available on serial port
BOOL ser_putc(hid_device *device,char schar); // send a char to the serial port
BOOL ser_puts(hid_device *device, const char * strval); // send a string to the serial port
BOOL ser_getc(hid_device *device, unsigned char *result); // get a single char from the serial port

BOOL sfr_get_reg(hid_device *device, unsigned char reg, unsigned char *result); // get a SFR register
BOOL sfr_set_reg(hid_device *device, unsigned char reg, unsigned char rval, unsigned char *result); // set a SFR register
BOOL sfr_get_regbit(hid_device *device, unsigned char reg, unsigned char bval, unsigned char *result); // get a SFR register bit
BOOL sfr_set_regbit(hid_device *device, unsigned char reg, unsigned char rbit, unsigned char bval, unsigned char *result); // set a SFR register bit

BOOL i2c_init(hid_device *device);
BOOL i2c_idle(hid_device *device);
BOOL i2c_start(hid_device *device, char cval);
BOOL i2c_stop(hid_device *device);
BOOL i2c_slave_ack(hid_device *device, unsigned char *result);
BOOL i2c_write(hid_device *device, char cval);
BOOL i2c_master_ack(hid_device *device, char cval); // 1=nack, 0=ack
BOOL i2c_read(hid_device *device, unsigned char *result);
BOOL i2c_isdatardy(hid_device *device, unsigned char *result);

BOOL spi_init(hid_device *device, unsigned char mode, unsigned char baud, unsigned char sample);
BOOL spi_transfer(hid_device *device, unsigned char value, unsigned char *result);
BOOL spi_cs(hid_device *device, unsigned char select);

#endif
