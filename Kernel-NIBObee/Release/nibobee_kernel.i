# 1 ".././nibobee_kernel.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 ".././nibobee_kernel.c"
# 9 ".././nibobee_kernel.c"
# 1 "..\\..\\AntonAvrLib/kernel/reset_condition.kernel" 1



# 1 "..\\..\\AntonAvrLib/kernel/kernel_init.h" 1
# 9 "..\\..\\AntonAvrLib/kernel/kernel_init.h"
# 1 "..\\..\\AntonAvrLib/kernel/../anton_std.h" 1
# 14 "..\\..\\AntonAvrLib/kernel/../anton_std.h"
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/include/stdint.h" 1 3 4


# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdint.h" 1 3 4
# 121 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdint.h" 3 4
typedef int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 142 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 159 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 213 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 273 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 4 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/include/stdint.h" 2 3 4
# 15 "..\\..\\AntonAvrLib/kernel/../anton_std.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 1 3
# 47 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/include/stddef.h" 1 3 4
# 211 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/include/stddef.h" 3 4
typedef unsigned int size_t;
# 323 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/include/stddef.h" 3 4
typedef int wchar_t;
# 48 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 2 3
# 68 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;


typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef int (*__compar_fn_t)(const void *, const void *);
# 106 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern void abort(void) __attribute__((__noreturn__));




extern int abs(int __i) __attribute__((__const__));
# 120 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern long labs(long __i) __attribute__((__const__));
# 143 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern void *bsearch(const void *__key, const void *__base, size_t __nmemb,
       size_t __size, int (*__compar)(const void *, const void *));







extern div_t div(int __num, int __denom) __asm__("__divmodhi4") __attribute__((__const__));





extern ldiv_t ldiv(long __num, long __denom) __asm__("__divmodsi4") __attribute__((__const__));
# 175 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern void qsort(void *__base, size_t __nmemb, size_t __size,
    __compar_fn_t __compar);
# 208 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern long strtol(const char *__nptr, char **__endptr, int __base);
# 242 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern unsigned long strtoul(const char *__nptr, char **__endptr, int __base);
# 254 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern long atol(const char *__s) __attribute__((__pure__));
# 266 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern int atoi(const char *__s) __attribute__((__pure__));
# 278 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern void exit(int __status) __attribute__((__noreturn__));
# 290 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern void *malloc(size_t __size) __attribute__((__malloc__));






extern void free(void *__ptr);




extern size_t __malloc_margin;




extern char *__malloc_heap_start;




extern char *__malloc_heap_end;






extern void *calloc(size_t __nele, size_t __size) __attribute__((__malloc__));
# 338 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern void *realloc(void *__ptr, size_t __size) __attribute__((__malloc__));

extern double strtod(const char *__nptr, char **__endptr);

extern double atof(const char *__nptr);
# 364 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern int rand(void);



extern void srand(unsigned int __seed);






extern int rand_r(unsigned long *__ctx);
# 406 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern char *itoa(int __val, char *__s, int __radix);
# 434 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern char *ltoa(long int __val, char *__s, int __radix);
# 460 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern char *utoa(unsigned int __val, char *__s, int __radix);
# 486 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern char *ultoa(unsigned long int __val, char *__s, int __radix);
# 504 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern long random(void);




extern void srandom(unsigned long __seed);







extern long random_r(unsigned long *__ctx);
# 563 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern char *dtostre(double __val, char *__s, unsigned char __prec,
       unsigned char __flags);
# 580 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern char *dtostrf(double __val, signed char __width,
                     unsigned char __prec, char *__s);
# 16 "..\\..\\AntonAvrLib/kernel/../anton_std.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 1 3
# 99 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/sfr_defs.h" 1 3
# 126 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/sfr_defs.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/inttypes.h" 1 3
# 77 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/sfr_defs.h" 2 3
# 100 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 2 3
# 162 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/iom1284p.h" 1 3
# 163 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 2 3
# 534 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/portpins.h" 1 3
# 535 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 2 3

# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/common.h" 1 3
# 537 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 2 3

# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/version.h" 1 3
# 539 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 2 3


# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/fuse.h" 1 3
# 239 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 542 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 2 3


# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/lock.h" 1 3
# 545 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 2 3
# 17 "..\\..\\AntonAvrLib/kernel/../anton_std.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/interrupt.h" 1 3
# 18 "..\\..\\AntonAvrLib/kernel/../anton_std.h" 2

typedef enum {
 FALSE,
 TRUE
} BOOL;

asm ("__RAMPZ__ = 0x3b");
# 10 "..\\..\\AntonAvrLib/kernel/kernel_init.h" 2
# 5 "..\\..\\AntonAvrLib/kernel/reset_condition.kernel" 2
# 1 "..\\..\\AntonAvrLib/kernel/reset_condition.h" 1
# 11 "..\\..\\AntonAvrLib/kernel/reset_condition.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/led.h" 1
# 11 "..\\..\\AntonAvrLib/kernel/devices/led.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/port.h" 1
# 11 "..\\..\\AntonAvrLib/kernel/devices/port.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/../../anton_std.h" 1
# 12 "..\\..\\AntonAvrLib/kernel/devices/port.h" 2

typedef struct {
 volatile uint8_t *port;
 volatile uint8_t *pin;
 volatile uint8_t *ddr;
} Port, *PPort;

typedef struct {
 PPort port;
 uint8_t mask;
} Pin, *PPin;

void setPortOutput(PPort port);
void setPortInput(PPort port);

void setPinOutput(PPin pin);
void setPinInput(PPin pin);

void writePort(PPort port, uint8_t value);
uint8_t readPort(PPort port);

void writePin(PPin pin, BOOL value);
void setPinOne(PPin pin);
void setPinZero(PPin pin);

BOOL readPin(PPin pin);
# 12 "..\\..\\AntonAvrLib/kernel/devices/led.h" 2


typedef struct {
 PPin pin;
} Led, *PLed;

typedef struct {
 PLed *leds;
 uint8_t count;
} LedGroup, *PLedGroup;

void enableLed(PLed led);
void disableLed(PLed led);
void setLed(PLed led, BOOL value);


void setLeds(PLedGroup leds, uint16_t mask);

void enableLeds(PLedGroup leds);
void disableLeds(PLedGroup leds);

void blinkLeds(PLedGroup leds, uint16_t ledMask, const uint8_t times);
void blinkAllLeds(PLedGroup leds, const uint8_t times);
# 12 "..\\..\\AntonAvrLib/kernel/reset_condition.h" 2


uint8_t getResetStatus();


uint16_t resetStatusBitmask();





void blink_reset_condition(PLedGroup leds);
# 6 "..\\..\\AntonAvrLib/kernel/reset_condition.kernel" 2

uint8_t current_reset_status = 0;

void init_reset_condition() {



 current_reset_status = (*(volatile uint8_t *)((0x34) + 0x20));
 (*(volatile uint8_t *)((0x34) + 0x20)) = 0;
}
void init_reset_condition_kernel_init() __attribute__((naked, section(".init8"))); void init_reset_condition_kernel_init() { init_reset_condition(); }

uint8_t getResetStatus() {
 return current_reset_status;
}
# 10 ".././nibobee_kernel.c" 2
# 1 ".././nibobee_led.kernel" 1
# 11 ".././nibobee_led.kernel"
# 1 "..\\..\\AntonAvrLib/kernel/devices/port_m1284P.kernel" 1
# 11 "..\\..\\AntonAvrLib/kernel/devices/port_m1284P.kernel"
# 1 "..\\..\\AntonAvrLib/kernel/devices/../kernel_init.h" 1
# 12 "..\\..\\AntonAvrLib/kernel/devices/port_m1284P.kernel" 2
# 1 "..\\..\\AntonAvrLib/kernel/devices/port_m1284P.h" 1
# 13 "..\\..\\AntonAvrLib/kernel/devices/port_m1284P.h"
Port PortA; Pin PinA0; Pin PinA1; Pin PinA2; Pin PinA3; Pin PinA4; Pin PinA5; Pin PinA6; Pin PinA7;
Port PortB; Pin PinB0; Pin PinB1; Pin PinB2; Pin PinB3; Pin PinB4; Pin PinB5; Pin PinB6; Pin PinB7;
Port PortC; Pin PinC0; Pin PinC1; Pin PinC2; Pin PinC3; Pin PinC4; Pin PinC5; Pin PinC6; Pin PinC7;
Port PortD; Pin PinD0; Pin PinD1; Pin PinD2; Pin PinD3; Pin PinD4; Pin PinD5; Pin PinD6; Pin PinD7;
# 13 "..\\..\\AntonAvrLib/kernel/devices/port_m1284P.kernel" 2

void init_ports_m1284P() {
 PortA = (Port) { &(*(volatile uint8_t *)((0x02) + 0x20)), &(*(volatile uint8_t *)((0x00) + 0x20)), &(*(volatile uint8_t *)((0x01) + 0x20)) }; PinA0 = (Pin) { &PortA, (1 << (0)) }; PinA1 = (Pin) { &PortA, (1 << (1)) }; PinA2 = (Pin) { &PortA, (1 << (2)) }; PinA3 = (Pin) { &PortA, (1 << (3)) }; PinA4 = (Pin) { &PortA, (1 << (4)) }; PinA5 = (Pin) { &PortA, (1 << (5)) }; PinA6 = (Pin) { &PortA, (1 << (6)) }; PinA7 = (Pin) { &PortA, (1 << (7)) };;
 PortB = (Port) { &(*(volatile uint8_t *)((0x05) + 0x20)), &(*(volatile uint8_t *)((0x03) + 0x20)), &(*(volatile uint8_t *)((0x04) + 0x20)) }; PinB0 = (Pin) { &PortB, (1 << (0)) }; PinB1 = (Pin) { &PortB, (1 << (1)) }; PinB2 = (Pin) { &PortB, (1 << (2)) }; PinB3 = (Pin) { &PortB, (1 << (3)) }; PinB4 = (Pin) { &PortB, (1 << (4)) }; PinB5 = (Pin) { &PortB, (1 << (5)) }; PinB6 = (Pin) { &PortB, (1 << (6)) }; PinB7 = (Pin) { &PortB, (1 << (7)) };;
 PortC = (Port) { &(*(volatile uint8_t *)((0x08) + 0x20)), &(*(volatile uint8_t *)((0x06) + 0x20)), &(*(volatile uint8_t *)((0x07) + 0x20)) }; PinC0 = (Pin) { &PortC, (1 << (0)) }; PinC1 = (Pin) { &PortC, (1 << (1)) }; PinC2 = (Pin) { &PortC, (1 << (2)) }; PinC3 = (Pin) { &PortC, (1 << (3)) }; PinC4 = (Pin) { &PortC, (1 << (4)) }; PinC5 = (Pin) { &PortC, (1 << (5)) }; PinC6 = (Pin) { &PortC, (1 << (6)) }; PinC7 = (Pin) { &PortC, (1 << (7)) };;
 PortD = (Port) { &(*(volatile uint8_t *)((0x0B) + 0x20)), &(*(volatile uint8_t *)((0x09) + 0x20)), &(*(volatile uint8_t *)((0x0A) + 0x20)) }; PinD0 = (Pin) { &PortD, (1 << (0)) }; PinD1 = (Pin) { &PortD, (1 << (1)) }; PinD2 = (Pin) { &PortD, (1 << (2)) }; PinD3 = (Pin) { &PortD, (1 << (3)) }; PinD4 = (Pin) { &PortD, (1 << (4)) }; PinD5 = (Pin) { &PortD, (1 << (5)) }; PinD6 = (Pin) { &PortD, (1 << (6)) }; PinD7 = (Pin) { &PortD, (1 << (7)) };;
}
void init_ports_m1284P_kernel_init() __attribute__((naked, section(".init8"))); void init_ports_m1284P_kernel_init() { init_ports_m1284P(); }
# 12 ".././nibobee_led.kernel" 2
# 1 "..\\..\\AntonAvrLib/kernel/devices/led.kernel" 1
# 12 "..\\..\\AntonAvrLib/kernel/devices/led.kernel"
# 1 "..\\..\\AntonAvrLib/kernel/devices/led.h" 1
# 13 "..\\..\\AntonAvrLib/kernel/devices/led.kernel" 2

static void initLed(PLed led) {
 setPinOutput(led->pin);
}
# 13 ".././nibobee_led.kernel" 2
# 1 ".././nibobee_led.h" 1
# 11 ".././nibobee_led.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/led.h" 1
# 12 ".././nibobee_led.h" 2

Led LeftYellow;
Led LeftRed;
Led RightRed;
Led RightYellow;
LedGroup RedLeds;
LedGroup YellowLeds;
LedGroup RightLeds;
LedGroup LeftLeds;
LedGroup AllLeds;
# 14 ".././nibobee_led.kernel" 2
# 1 "..\\..\\AntonAvrLib/kernel/kernel_init.h" 1
# 15 ".././nibobee_led.kernel" 2

PLed redLedsArray[] = { &LeftRed, &RightRed };
PLed yellowLedsArray[] = { &LeftYellow, &RightYellow };
PLed rightLedsArray[] = { &RightYellow, &RightRed };
PLed leftLedsArray[] = { &LeftYellow, &LeftRed };
PLed allLedsArray[] = { &LeftYellow, &LeftRed, &RightYellow, &RightRed };

void init_nibobee_leds() {
 LeftYellow = (Led) { &PinB0 }; initLed(&LeftYellow);
 LeftRed = (Led) { &PinB1 }; initLed(&LeftRed);
 RightRed = (Led) { &PinB2 }; initLed(&RightRed);
 RightYellow = (Led) { &PinB3 }; initLed(&RightYellow);

 RedLeds = (LedGroup) { redLedsArray, 2 };
 YellowLeds = (LedGroup) { yellowLedsArray, 2 };
 RightLeds = (LedGroup) { rightLedsArray, 2 };
 LeftLeds = (LedGroup) { leftLedsArray, 2 };
 AllLeds = (LedGroup) { allLedsArray, 4 };
}
void init_nibobee_leds_kernel_init() __attribute__((naked, section(".init8"))); void init_nibobee_leds_kernel_init() { init_nibobee_leds(); }
# 11 ".././nibobee_kernel.c" 2
# 1 ".././nibobee_button.kernel" 1
# 13 ".././nibobee_button.kernel"
# 1 "..\\..\\AntonAvrLib/kernel/devices/button.kernel" 1
# 12 "..\\..\\AntonAvrLib/kernel/devices/button.kernel"
# 1 "..\\..\\AntonAvrLib/kernel/devices/external_interrupts.h" 1
# 14 "..\\..\\AntonAvrLib/kernel/devices/external_interrupts.h"
void enablePinChangeInterrupt(uint8_t pcNumber);
void disblePinChangeInterrupt(uint8_t pcNumber);
# 13 "..\\..\\AntonAvrLib/kernel/devices/button.kernel" 2
# 1 "..\\..\\AntonAvrLib/kernel/devices/button.h" 1
# 14 "..\\..\\AntonAvrLib/kernel/devices/button.h"
typedef struct {
 PPin pin;
} Button, *PButton;

typedef struct {
 PButton button;
 uint8_t pinChangeInterruptNumber;
} InterruptButton, *PInterruptButton;


BOOL buttonStatus(PButton button);
# 14 "..\\..\\AntonAvrLib/kernel/devices/button.kernel" 2

void initButton(PButton button) {
 setPinInput(button->pin);
}

void initInterruptButton(PInterruptButton button) {
 enablePinChangeInterrupt(button->pinChangeInterruptNumber);
 setPinInput(button->button->pin);
}
# 14 ".././nibobee_button.kernel" 2
# 1 ".././nibobee_button.h" 1
# 11 ".././nibobee_button.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/button.h" 1
# 12 ".././nibobee_button.h" 2

Button ButtonRightBackward;
Button ButtonRightForward;
Button ButtonLeftBackward;
Button ButtonLeftForward;
# 15 ".././nibobee_button.kernel" 2

void init_nibobee_buttons() {
 ButtonLeftBackward = (Button) { &PinC4 }; initButton(&ButtonLeftBackward);
 ButtonLeftForward = (Button) { &PinC5 }; initButton(&ButtonLeftForward);
 ButtonRightBackward = (Button) { &PinC6 }; initButton(&ButtonRightBackward);
 ButtonRightForward = (Button) { &PinC7 }; initButton(&ButtonRightForward);
}
void init_nibobee_buttons_kernel_init() __attribute__((naked, section(".init8"))); void init_nibobee_buttons_kernel_init() { init_nibobee_buttons(); }
# 12 ".././nibobee_kernel.c" 2
# 1 ".././nibobee_motor.kernel" 1
# 12 ".././nibobee_motor.kernel"
# 1 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.kernel" 1
# 12 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.kernel"
# 1 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.h" 1
# 11 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/timer.h" 1
# 19 "..\\..\\AntonAvrLib/kernel/devices/timer.h"
typedef enum {
 wgm_normal,
 clear_timer_on_match,


 pwm_fast_FF,
 pwm_phase_correct_FF,


 pwm_phase_correct,
 pwm_fast,


 pwm_phase_correct_9bit,
 pwm_phase_correct_10bit,
 pwm_fast_9bit,
 pwm_fast_10bit,
 pwm_phase_and_frequency_correct
} WaveformGenerationMode;

typedef enum {

 no_output,
 toggle_on_match,
 clear_on_match,
 set_on_match
} CompareMatchOutputMode;

typedef enum {
 no_clock,
 prescale_1,
 prescale_8,
 prescale_32,
 prescale_64,
 prescale_128,
 prescale_256,
 prescale_1024,
 external_falling_edge,
 external_rising_edge
} TimerClockSelect;





typedef struct {
 uint8_t flags;
 volatile uint8_t *controlRegisterA;
 volatile uint8_t *controlRegisterB;
 volatile uint8_t *interruptMaskRegister;
} TimerConfig, *PTimerConfig;

typedef enum {
 TIMER_A,
 TIMER_B
} TIMER_TYPE;

typedef struct {
 PTimerConfig timer;
 volatile uint8_t *outputCompareRegister;
 TIMER_TYPE type;
 PPin outputComparePin;
} Timer, *PTimer;


void setTimerClockSelect(PTimerConfig timer, TimerClockSelect cs);
void setWaveformGenerationMode(PTimerConfig timer, WaveformGenerationMode wgm);

void setCompareMatchOutputMode(PTimer timer, CompareMatchOutputMode com);

void enableTimerInterrupt(PTimer timer);
void enableOutputCompare(PTimer timer);
void disableOutputCompare(PTimer timer);


void setTimerCompareValue(PTimer timer, uint16_t value);


uint16_t getTimerCompareValue(PTimer timer);
# 12 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.h" 2


TimerConfig Timer0;
TimerConfig Timer1;
TimerConfig Timer2;
TimerConfig Timer3;

Timer Timer0A;
Timer Timer0B;
Timer Timer1A;
Timer Timer1B;
Timer Timer2A;
Timer Timer2B;
Timer Timer3A;
Timer Timer3B;
# 13 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.kernel" 2
# 1 "..\\..\\AntonAvrLib/kernel/devices/port_m1284P.kernel" 1
# 14 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.kernel" 2

void init_timer_m1284P() {
 Timer0 = (TimerConfig) {0, (uint8_t*) &(*(volatile uint8_t *)((0x24) + 0x20)), (uint8_t*) &(*(volatile uint8_t *)((0x25) + 0x20)), &(*(volatile uint8_t *)(0x6E))};
 Timer1 = (TimerConfig) {(1 << 2), (uint8_t*) &(*(volatile uint8_t *)(0x80)), (uint8_t*) &(*(volatile uint8_t *)(0x81)), &(*(volatile uint8_t *)(0x6F))};
 Timer2 = (TimerConfig) {(1 << 1), (uint8_t*) &(*(volatile uint8_t *)(0xB0)), (uint8_t*) &(*(volatile uint8_t *)(0xB1)), &(*(volatile uint8_t *)(0x70))};
 Timer3 = (TimerConfig) {(1 << 2), (uint8_t*) &(*(volatile uint8_t *)(0x90)), (uint8_t*) &(*(volatile uint8_t *)(0x91)), &(*(volatile uint8_t *)(0x71))};

 Timer0A = (Timer) {&Timer0, (uint8_t*) &(*(volatile uint8_t *)((0x27) + 0x20)), TIMER_A, &PinB3};
 Timer0B = (Timer) {&Timer0, (uint8_t*) &(*(volatile uint8_t *)((0x28) + 0x20)), TIMER_B, &PinB4};
 Timer1A = (Timer) {&Timer1, (uint8_t*) &(*(volatile uint16_t *)(0x88)), TIMER_A, &PinD5};
 Timer1B = (Timer) {&Timer1, (uint8_t*) &(*(volatile uint16_t *)(0x8A)), TIMER_B, &PinD4};
 Timer2A = (Timer) {&Timer2, (uint8_t*) &(*(volatile uint8_t *)(0xB3)), TIMER_A, &PinD7};
 Timer2B = (Timer) {&Timer2, (uint8_t*) &(*(volatile uint8_t *)(0xB4)), TIMER_B, &PinD6};
 Timer3A = (Timer) {&Timer3, (uint8_t*) &(*(volatile uint16_t *)(0x98)), TIMER_A, &PinB6};
 Timer3B = (Timer) {&Timer3, (uint8_t*) &(*(volatile uint16_t *)(0x9A)), TIMER_B, &PinB7};
}
void init_timer_m1284P_kernel_init() __attribute__((naked, section(".init8"))); void init_timer_m1284P_kernel_init() { init_timer_m1284P(); }
# 13 ".././nibobee_motor.kernel" 2
# 1 "..\\..\\AntonAvrLib/kernel/devices/motor.kernel" 1
# 12 "..\\..\\AntonAvrLib/kernel/devices/motor.kernel"
# 1 "..\\..\\AntonAvrLib/kernel/devices/motor.h" 1
# 20 "..\\..\\AntonAvrLib/kernel/devices/motor.h"
typedef struct {
 uint8_t flags;
 PPin direction;
 PTimer pwmTimer;
} Motor, *PMotor;

typedef struct {
 Motor motor;
 PPin direction2;
} Motor2Pins, *PMotor2Pins;

typedef enum {
 FORWARD = 0,
 BACKWARD = 1,
 MOTOR_STOPPED = 2
} MotorDirection;


void stopMotor(PMotor motor);



uint16_t getSpeed(PMotor motor);
MotorDirection getDirection(PMotor motor);
void setSpeed(PMotor motor, uint16_t speed, MotorDirection direction);
void setSpeedForward(PMotor motor, uint16_t speed);
void setSpeedBackward(PMotor motor, uint16_t speed);







int16_t getDirSpeed(PMotor motor);
void setDirSpeed(PMotor motor, int16_t speed);
# 13 "..\\..\\AntonAvrLib/kernel/devices/motor.kernel" 2


void initMotor(PMotor motor) {
 setTimerCompareValue(motor->pwmTimer, 0);
 setPinOutput(motor->direction);
}

void initMotor2Pins(PMotor2Pins motor) {
 initMotor((PMotor) motor);
 setPinOutput(motor->direction2);
 stopMotor((PMotor) motor);
}
# 14 ".././nibobee_motor.kernel" 2
# 1 ".././nibobee_motor.h" 1
# 11 ".././nibobee_motor.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.h" 1
# 12 ".././nibobee_motor.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/devices/motor.h" 1
# 13 ".././nibobee_motor.h" 2

Motor LeftMotor;
Motor RightMotor;
# 15 ".././nibobee_motor.kernel" 2

void init_nibobee_motors() {
 LeftMotor = (Motor) { 0, &PinD6, &Timer1A }; initMotor(&LeftMotor);
 RightMotor = (Motor) { 0, &PinD7, &Timer1B }; initMotor(&RightMotor);
}
void init_nibobee_motors_kernel_init() __attribute__((naked, section(".init8"))); void init_nibobee_motors_kernel_init() { init_nibobee_motors(); }
# 13 ".././nibobee_kernel.c" 2
# 1 ".././shared/base.kernel" 1
# 11 ".././shared/base.kernel"
# 1 ".././shared/scheduler.kernel" 1




# 1 "..\\..\\AntonAvrLib/kernel/processes/process_ext.kernel" 1
# 11 "..\\..\\AntonAvrLib/kernel/processes/process_ext.kernel"
# 1 "..\\..\\AntonAvrLib/kernel/processes/process_ext.h" 1
# 16 "..\\..\\AntonAvrLib/kernel/processes/process_ext.h"
# 1 "..\\..\\AntonAvrLib/kernel/processes/process.h" 1
# 11 "..\\..\\AntonAvrLib/kernel/processes/process.h"
# 1 "..\\..\\AntonAvrLib/kernel/processes/../../anton_std.h" 1
# 12 "..\\..\\AntonAvrLib/kernel/processes/process.h" 2

typedef struct Process__ { uint16_t unused; } *Process;;




typedef void ProcessEntryPoint( );


Process getCurrentProcess();
# 30 "..\\..\\AntonAvrLib/kernel/processes/process.h"
Process createProcess(ProcessEntryPoint entryPoint);






Process createProcess2(ProcessEntryPoint entryPoint, void *processArgument);







Process createProcess3(ProcessEntryPoint entryPoint, void *processArgument, uint16_t stackSize, uint8_t additionalMemory);



void *getProcessMemory(Process proc);




void switchProcess(Process newProcess);
# 17 "..\\..\\AntonAvrLib/kernel/processes/process_ext.h" 2


uint8_t getProcessStackSize(Process process);




uint16_t getFreeProcessStackSize(Process process);



uint16_t getProcessNumber(Process process);




void freeProcess(Process process);
# 12 "..\\..\\AntonAvrLib/kernel/processes/process_ext.kernel" 2
# 1 "..\\..\\AntonAvrLib/kernel/processes/process_internal.h" 1
# 16 "..\\..\\AntonAvrLib/kernel/processes/process_internal.h"
uint16_t __default_stack_size = 512;



uint8_t __main_process_additional_memory = 0;







typedef struct {
 void *stackPointer;


} PCB, *PPCB;


extern Process __current_process;
# 48 "..\\..\\AntonAvrLib/kernel/processes/process_internal.h"
void switchContext(PPCB oldProcess, PPCB newProcess);
# 13 "..\\..\\AntonAvrLib/kernel/processes/process_ext.kernel" 2

uint16_t __nextProcessNumber = 1;


typedef struct {
 uint16_t processNumber;
 uint16_t stackSize;


 void *stackTop;
} PCBExt, *PPCBExt;
# 39 "..\\..\\AntonAvrLib/kernel/processes/process_ext.kernel"
# 1 "..\\..\\AntonAvrLib/kernel/processes/process.kernel" 1
# 11 "..\\..\\AntonAvrLib/kernel/processes/process.kernel"
# 1 "..\\..\\AntonAvrLib/kernel/processes/../kernel_init.h" 1
# 12 "..\\..\\AntonAvrLib/kernel/processes/process.kernel" 2



# 1 "..\\..\\AntonAvrLib/kernel/processes/scheduler_internal.h" 1
# 16 "..\\..\\AntonAvrLib/kernel/processes/scheduler_internal.h"
extern Process schedule(BOOL invokedFromTimer);


void processor_idle();





void processor_loop_idle();
# 16 "..\\..\\AntonAvrLib/kernel/processes/process.kernel" 2

Process __current_process = ((void *)0);

static Process initializeProcessInternal(uint8_t additionalMemory, void *stackPointer) {
 PPCB process = (PPCB) calloc(1, sizeof(PCB) + additionalMemory);
 if (!process) { return ((Process) ((void *)0)); }
 process->stackPointer = stackPointer;
 return (Process) process;
}


void init_process_base() {






 __malloc_heap_end = (void*) (0x40FF - __default_stack_size);
 __malloc_margin = 0;



 __current_process = initializeProcessInternal(__main_process_additional_memory, ((void *)0));
}







void ProcessGraveyard() {
 processor_loop_idle();
}



void MainProcessEnd() __attribute__((section (".fini1")));
void MainProcessEnd() {
 ProcessGraveyard();
}

Process createProcessBase3(ProcessEntryPoint entryPoint, void *parameter, uint16_t stackSize, uint8_t additionalMem) {




 uint8_t *stackTop = (uint8_t*) calloc(stackSize, sizeof(uint8_t));
 if (!stackTop) { return ((Process) ((void *)0)); }
 uint8_t *stackBottom = stackTop + stackSize - 1;

 *(stackBottom - 0) = (uint8_t)((uint16_t)(uint16_t) ProcessGraveyard);
 *(stackBottom - 1) = (uint8_t)(((uint16_t)(uint16_t) ProcessGraveyard)>>8);
 *(stackBottom - 2) = (uint8_t)((uint16_t)(uint16_t) entryPoint);
 *(stackBottom - 3) = (uint8_t)(((uint16_t)(uint16_t) entryPoint)>>8);

 Process result = initializeProcessInternal(additionalMem, (void*) (stackBottom - (34 + 4)));
 if (result == ((Process) ((void *)0))) { free(stackTop); return ((Process) ((void *)0)); }



 if (!parameter) parameter = result;
 *(stackBottom - (6 + 24)) = (uint8_t)((uint16_t)(uint16_t) parameter);
 *(stackBottom - (6 + 25)) = (uint8_t)(((uint16_t)(uint16_t) parameter)>>8);
 return result;
}

Process createProcessBase2(ProcessEntryPoint entryPoint, void *parameter) {
 return createProcessBase3(entryPoint, parameter, __default_stack_size, 0);
}

Process createProcessBase(ProcessEntryPoint entryPoint) {
 return createProcessBase2(entryPoint, ((void *)0));
}


void switchContext(PPCB oldProcess, PPCB newProcess) {
 asm volatile ( "push r0				\n" "in r0, __SREG__		\n" "cli					\n" "push r0				\n" "in r0, __RAMPZ__		\n" "push r0				\n" "push r1				\n" "clr r1				\n" "push r2			\n" "push r3			\n" "push r4			\n" "push r5			\n" "push r6			\n" "push r7			\n" "push r8			\n" "push r9			\n" "push r10			\n" "push r11			\n" "push r12			\n" "push r13			\n" "push r14			\n" "push r15			\n" "push r16			\n" "push r17			\n" "push r18			\n" "push r19			\n" "push r20			\n" "push r21			\n" "push r22			\n" "push r23			\n" "push r24			\n" "push r25			\n" "push r26			\n" "push r27			\n" "push r28			\n" "push r29			\n" "push r30			\n" "push r31			\n" );
 asm volatile("movw r26, r24");
 asm volatile ( "in r0, __SP_L__			\n" "st X+, r0					\n" "in r0, __SP_H__			\n" "st X+, r0					\n" );
 asm volatile("movw r26, r22");
 asm volatile( "ld r0, X+					\n" "out __SP_L__, r0			\n" "ld r0, X+					\n" "out __SP_H__, r0			\n" );
 asm volatile( "pop r31			\n" "pop r30			\n" "pop r29			\n" "pop r28			\n" "pop r27			\n" "pop r26			\n" "pop r25			\n" "pop r24			\n" "pop r23			\n" "pop r22			\n" "pop r21			\n" "pop r20			\n" "pop r19			\n" "pop r18			\n" "pop r17			\n" "pop r16			\n" "pop r15			\n" "pop r14			\n" "pop r13			\n" "pop r12			\n" "pop r11			\n" "pop r10			\n" "pop r9				\n" "pop r8				\n" "pop r7				\n" "pop r6				\n" "pop r5				\n" "pop r4				\n" "pop r3				\n" "pop r2				\n" "pop r1				\n" "pop r0						\n" "out __RAMPZ__, r0			\n" "pop r0						\n" "out __SREG__, r0			\n" "pop r0						\n" );
}

inline Process getCurrentProcess() {
 return (Process) __current_process;
}

void switchProcess(Process newProcess) {
 Process oldCurrentProcess = __current_process;
 __current_process = newProcess;
 switchContext((PPCB) oldCurrentProcess, (PPCB) newProcess);
}

inline void *getProcessMemoryBase(Process proc) {
 return proc + sizeof(PCB);
}
# 40 "..\\..\\AntonAvrLib/kernel/processes/process_ext.kernel" 2
# 49 "..\\..\\AntonAvrLib/kernel/processes/process_ext.kernel"
Process createProcess3(ProcessEntryPoint entryPoint, void *processArgument, uint16_t stackSize, uint8_t additionalMemory) {
 Process proc = createProcessBase3(entryPoint, processArgument, stackSize, sizeof(PCBExt) + additionalMemory);
 if (proc == ((Process) ((void *)0))) return proc;
 PPCBExt ext = ((PPCBExt)getProcessMemoryBase((Process) proc));
 ext->processNumber = __nextProcessNumber++;
 ext->stackSize = stackSize;
 ext->stackTop = ((uint8_t*)((PPCB)proc)->stackPointer) + (34 + 4) - stackSize + 1;
 return proc;
}

Process createProcess2(ProcessEntryPoint entryPoint, void *processArgument) {
 return createProcess3(entryPoint, processArgument, __default_stack_size, 0);
}

Process createProcess(ProcessEntryPoint entryPoint) {
 return createProcess2(entryPoint, ((void *)0));
}

void freeProcess(Process process) {
 if (process == getCurrentProcess()) return;
 PPCBExt pcb = ((PPCBExt)getProcessMemoryBase((Process) process));
 if (pcb->processNumber != 0) {
  free(pcb->stackTop);
 }
 free(process);
}

uint8_t getProcessStackSize(Process process) {
 return ((PPCBExt)getProcessMemoryBase((Process) process))->stackSize;
}

uint16_t getFreeProcessStackSize(Process process) {
 PPCBExt pcb = ((PPCBExt)getProcessMemoryBase((Process) process));
 return (uint16_t) ((uint8_t*) pcb->stackTop - ((uint8_t*)((PPCB)process)->stackPointer));
}

uint16_t getProcessNumber(Process process) {
 return ((PPCBExt)getProcessMemoryBase((Process) process))->processNumber;
}

inline void *getProcessMemory(Process proc) {
 return ((PPCBExt)getProcessMemoryBase((Process) proc)) + sizeof(PCBExt);
}





void init_process() {


 __main_process_additional_memory += sizeof(PCBExt);
 init_process_base();
 PPCBExt initialProcess = ((PPCBExt)getProcessMemoryBase((Process) __current_process));
 initialProcess->processNumber = 0;
 initialProcess->stackSize = __default_stack_size;
 initialProcess->stackTop = __malloc_heap_end;
}
# 6 ".././shared/scheduler.kernel" 2
# 1 "..\\..\\AntonAvrLib/kernel/processes/DMS/dms_scheduler.kernel" 1
# 17 "..\\..\\AntonAvrLib/kernel/processes/DMS/dms_scheduler.kernel"
Process dms_schedule(BOOL invokedFromTimer);
# 7 ".././shared/scheduler.kernel" 2
# 1 "..\\..\\AntonAvrLib/kernel/processes/RoundRobin/rr_scheduler.kernel" 1
# 11 "..\\..\\AntonAvrLib/kernel/processes/RoundRobin/rr_scheduler.kernel"
# 1 "..\\..\\AntonAvrLib/kernel/processes/RoundRobin/rr_api.h" 1
# 11 "..\\..\\AntonAvrLib/kernel/processes/RoundRobin/rr_api.h"
# 1 "..\\..\\AntonAvrLib/kernel/processes/RoundRobin/../process.h" 1
# 12 "..\\..\\AntonAvrLib/kernel/processes/RoundRobin/rr_api.h" 2


typedef struct Thread__ { uint16_t unused; } *Thread;
typedef void ThreadEntryPoint();


typedef enum {
 PrioLowest = 0,
 PrioLow,
 PrioBelowNormal,
 PrioNormal,
 PrioAboveNormal,
 PrioHigh,
 PrioHighest
} ThreadPriority;




Thread createThread(ThreadEntryPoint entry);
Thread createThread2(ThreadEntryPoint entry, ThreadPriority prio);
Thread createThread3(ThreadEntryPoint entry, ThreadPriority prio, void *threadParameter);
Thread createThread4(ThreadEntryPoint entry, ThreadPriority prio, void *threadParameter, uint16_t stackSize);

Thread getCurrentThread();
# 12 "..\\..\\AntonAvrLib/kernel/processes/RoundRobin/rr_scheduler.kernel" 2







Process rr_schedule(BOOL invokedFromTimer);



void rr_captureMainProcess(ThreadPriority prio);
# 8 ".././shared/scheduler.kernel" 2

# 1 "..\\..\\AntonAvrLib/kernel/devices/timer.h" 1
# 10 ".././shared/scheduler.kernel" 2


# 1 "..\\..\\AntonAvrLib/kernel/processes/timed_scheduler.kernel" 1
# 18 "..\\..\\AntonAvrLib/kernel/processes/timed_scheduler.kernel"
# 1 "..\\..\\AntonAvrLib/kernel/processes/../millisecond_clock.kernel" 1





uint32_t milliseconds_running = 0;
# 19 "..\\..\\AntonAvrLib/kernel/processes/timed_scheduler.kernel" 2






# 1 "..\\..\\AntonAvrLib/kernel/processes/scheduler.kernel" 1
# 11 "..\\..\\AntonAvrLib/kernel/processes/scheduler.kernel"
# 1 "..\\..\\AntonAvrLib/kernel/processes/scheduler.h" 1
# 12 "..\\..\\AntonAvrLib/kernel/processes/scheduler.h"
void schedule_next();
# 12 "..\\..\\AntonAvrLib/kernel/processes/scheduler.kernel" 2



# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/sleep.h" 1 3
# 16 "..\\..\\AntonAvrLib/kernel/processes/scheduler.kernel" 2






void __vector_32 (void) __attribute__ ((signal,used, externally_visible)) __attribute__((naked)); void __vector_32 (void) {


 asm volatile ( "push r0				\n" "in r0, __SREG__		\n" "cli					\n" "push r0				\n" "in r0, __RAMPZ__		\n" "push r0				\n" "push r1				\n" "clr r1				\n" "push r2			\n" "push r3			\n" "push r4			\n" "push r5			\n" "push r6			\n" "push r7			\n" "push r8			\n" "push r9			\n" "push r10			\n" "push r11			\n" "push r12			\n" "push r13			\n" "push r14			\n" "push r15			\n" "push r16			\n" "push r17			\n" "push r18			\n" "push r19			\n" "push r20			\n" "push r21			\n" "push r22			\n" "push r23			\n" "push r24			\n" "push r25			\n" "push r26			\n" "push r27			\n" "push r28			\n" "push r29			\n" "push r30			\n" "push r31			\n" );



 milliseconds_running++;



 asm volatile("lds r26, __current_process");
 asm volatile("lds r27, __current_process + 1");
 asm volatile ( "in r0, __SP_L__			\n" "st X+, r0					\n" "in r0, __SP_H__			\n" "st X+, r0					\n" );

 __current_process = schedule(TRUE);
 if (__current_process == ((Process) ((void *)0))) {


  processor_loop_idle();
 }
 asm volatile("movw r26, r24");
 asm volatile( "ld r0, X+					\n" "out __SP_L__, r0			\n" "ld r0, X+					\n" "out __SP_H__, r0			\n" );
 asm volatile( "pop r31			\n" "pop r30			\n" "pop r29			\n" "pop r28			\n" "pop r27			\n" "pop r26			\n" "pop r25			\n" "pop r24			\n" "pop r23			\n" "pop r22			\n" "pop r21			\n" "pop r20			\n" "pop r19			\n" "pop r18			\n" "pop r17			\n" "pop r16			\n" "pop r15			\n" "pop r14			\n" "pop r13			\n" "pop r12			\n" "pop r11			\n" "pop r10			\n" "pop r9				\n" "pop r8				\n" "pop r7				\n" "pop r6				\n" "pop r5				\n" "pop r4				\n" "pop r3				\n" "pop r2				\n" "pop r1				\n" "pop r0						\n" "out __RAMPZ__, r0			\n" "pop r0						\n" "out __SREG__, r0			\n" "pop r0						\n" );


 asm volatile("reti");
}
# 26 "..\\..\\AntonAvrLib/kernel/processes/timed_scheduler.kernel" 2
# 13 ".././shared/scheduler.kernel" 2

void init_tank_scheduler() {
 PTimerConfig timerConf = &Timer3;
 PTimer timer = &Timer3A;

 setWaveformGenerationMode(timerConf, clear_timer_on_match);
 setTimerCompareValue(timer, 2500);
 setTimerClockSelect(timerConf, prescale_8);

}
void init_tank_scheduler_kernel_init() __attribute__((naked, section(".init8"))); void init_tank_scheduler_kernel_init() { init_tank_scheduler(); }

void start_tank_scheduler() {

 enableTimerInterrupt(&Timer3A);
 __asm__ __volatile__ ("sei" ::: "memory");
}
# 12 ".././shared/base.kernel" 2



void before_scheduler() __attribute__((weak));
void before_scheduler() {}


# 1 ".././shared/../kernel.h" 1
# 15 ".././shared/../kernel.h"
# 1 "..\\..\\AntonAvrLib/kernel/millisecond_clock.h" 1
# 14 "..\\..\\AntonAvrLib/kernel/millisecond_clock.h"
extern uint32_t milliseconds_running;
# 16 ".././shared/../kernel.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/reset_condition.h" 1
# 17 ".././shared/../kernel.h" 2
# 1 "..\\..\\AntonAvrLib/anton_std.h" 1
# 18 ".././shared/../kernel.h" 2

# 1 "..\\..\\AntonAvrLib/kernel/processes/scheduler.h" 1
# 20 ".././shared/../kernel.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/processes/process_ext.h" 1
# 21 ".././shared/../kernel.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/processes/DMS/dms_api.h" 1
# 13 "..\\..\\AntonAvrLib/kernel/processes/DMS/dms_api.h"
# 1 "..\\..\\AntonAvrLib/kernel/processes/DMS/../process.h" 1
# 14 "..\\..\\AntonAvrLib/kernel/processes/DMS/dms_api.h" 2

typedef void JobEntryPoint();
# 27 "..\\..\\AntonAvrLib/kernel/processes/DMS/dms_api.h"
Process createPeriodicJob(JobEntryPoint entryPoint, uint32_t period, uint8_t userPriority);





Process createAperiodicJob(JobEntryPoint entryPoint, uint32_t minimalPeriod, uint8_t userPriority);


void triggerAperiodicJob(Process job);
# 22 ".././shared/../kernel.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/processes/RoundRobin/rr_api.h" 1
# 23 ".././shared/../kernel.h" 2

# 1 ".././shared/../nibobee_button.h" 1
# 25 ".././shared/../kernel.h" 2
# 1 ".././shared/../nibobee_led.h" 1
# 26 ".././shared/../kernel.h" 2
# 1 ".././shared/../nibobee_motor.h" 1
# 27 ".././shared/../kernel.h" 2
# 20 ".././shared/base.kernel" 2

Process schedule(BOOL fromTimer) {
 Process p = dms_schedule(fromTimer);
 if (!p) p = rr_schedule(fromTimer);
 return p;
}


void init_kernel() {

 (*(volatile uint8_t *)((0x30) + 0x20)) |= (1 << (7));
 (*(volatile uint8_t *)(0x64)) |= (1 << (5)) | (1 << (6));




 (*(volatile uint8_t *)(0x60)) = (1 << (4));

 (*(volatile uint8_t *)(0x60)) |=
   (1 << (2)) |

   (1 << (0));




 init_process();
 rr_captureMainProcess(PrioNormal);
 before_scheduler();
 start_tank_scheduler();
}
void init_kernel_kernel_init() __attribute__((naked, section(".init8"))); void init_kernel_kernel_init() { init_kernel(); }
# 14 ".././nibobee_kernel.c" 2
