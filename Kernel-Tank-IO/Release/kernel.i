# 1 ".././kernel.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 ".././kernel.c"
# 9 ".././kernel.c"
# 1 "..\\..\\AntonAvrLib/kernel/reset_condition.kernel.h" 1
# 12 "..\\..\\AntonAvrLib/kernel/reset_condition.kernel.h"
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
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/delay.h" 1 3
# 42 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/delay.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/inttypes.h" 1 3
# 77 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 43 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/delay.h" 2 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/delay_basic.h" 1 3
# 40 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/delay_basic.h" 3
static inline void _delay_loop_1(uint8_t __count) __attribute__((always_inline));
static inline void _delay_loop_2(uint16_t __count) __attribute__((always_inline));
# 80 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/delay_basic.h" 3
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/delay_basic.h" 3
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 44 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/delay.h" 2 3
# 83 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/delay.h" 3
static inline void _delay_us(double __us) __attribute__((always_inline));
static inline void _delay_ms(double __ms) __attribute__((always_inline));
# 131 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/delay.h" 3
void
_delay_ms(double __ms)
{
 uint16_t __ticks;
 double __tmp ;

 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((20000000) / 1e3) * __ms;
# 149 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 174 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/delay.h" 3
}
# 208 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/delay.h" 3
void
_delay_us(double __us)
{
 uint8_t __ticks;
 double __tmp ;

 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((20000000) / 1e6) * __us;
# 226 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 244 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/delay.h" 3
}
# 17 "..\\..\\AntonAvrLib/kernel/../anton_std.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 1 3
# 99 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/sfr_defs.h" 1 3
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
# 18 "..\\..\\AntonAvrLib/kernel/../anton_std.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/interrupt.h" 1 3
# 19 "..\\..\\AntonAvrLib/kernel/../anton_std.h" 2

typedef enum {
 FALSE,
 TRUE
} BOOL;

typedef uint8_t byte;

asm ("__RAMPZ__ = 0x3b");
# 10 "..\\..\\AntonAvrLib/kernel/kernel_init.h" 2
# 13 "..\\..\\AntonAvrLib/kernel/reset_condition.kernel.h" 2
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

void blinkLed(PLed led, const uint8_t times);
void blinkLeds(PLedGroup leds, uint16_t ledMask, uint8_t times);
void blinkAllLeds(PLedGroup leds, uint8_t times);

void flashLed(PLed led, const uint16_t millis);
void flashLeds(PLedGroup leds, uint16_t ledMask, uint16_t millis);
void flashAllLeds(PLedGroup leds, uint16_t millis);



void blinkByte(PLedGroup display, PLedGroup notifier, byte data);
# 12 "..\\..\\AntonAvrLib/kernel/reset_condition.h" 2


uint8_t getResetStatus();


uint16_t resetStatusBitmask();





void blink_reset_condition(PLedGroup leds);


void blink_reset_condition_byte(PLedGroup blinker, PLedGroup notifier);
# 14 "..\\..\\AntonAvrLib/kernel/reset_condition.kernel.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/wdt.h" 1 3
# 15 "..\\..\\AntonAvrLib/kernel/reset_condition.kernel.h" 2

uint8_t current_reset_status = 0;

void init_reset_condition() {



 current_reset_status = (*(volatile uint8_t *)((0x34) + 0x20));
 (*(volatile uint8_t *)((0x34) + 0x20)) = 0;

  __asm__ __volatile__ ( "in __tmp_reg__, __SREG__" "\n\t" "cli" "\n\t" "sts %0, %1" "\n\t" "sts %0, __zero_reg__" "\n\t" "out __SREG__,__tmp_reg__" "\n\t" : : "M" (((uint16_t) &((*(volatile uint8_t *)(0x60))))), "r" ((uint8_t)((1 << (4)) | (1 << (3)))) : "r0" );

}
void init_reset_condition_kernel_init() __attribute__((naked, section(".init8"))); void init_reset_condition_kernel_init() { init_reset_condition(); }

uint8_t getResetStatus() {
 return current_reset_status;
}
# 10 ".././kernel.c" 2
# 1 ".././shared/base_before.kernel.h" 1
# 12 ".././shared/base_before.kernel.h"
# 1 "..\\..\\AntonAvrLib/kernel/kernel_init.h" 1
# 13 ".././shared/base_before.kernel.h" 2
# 1 ".././shared/../kernel.h" 1
# 13 ".././shared/../kernel.h"
# 1 ".././shared/../shared/kernel_base.h" 1
# 12 ".././shared/../shared/kernel_base.h"
# 1 "..\\..\\AntonAvrLib/kernel/millisecond_clock.h" 1
# 15 "..\\..\\AntonAvrLib/kernel/millisecond_clock.h"
 uint32_t volatile milliseconds_running = 0;






uint32_t get_milliseconds_running();
# 13 ".././shared/../shared/kernel_base.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/reset_condition.h" 1
# 14 ".././shared/../shared/kernel_base.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/processes/mutex/mutex.h" 1
# 11 "..\\..\\AntonAvrLib/kernel/processes/mutex/mutex.h"
# 1 "..\\..\\AntonAvrLib/kernel/processes/mutex/../../../anton_std.h" 1
# 12 "..\\..\\AntonAvrLib/kernel/processes/mutex/mutex.h" 2


typedef struct Mutex__ { uint16_t unused; } *Mutex;

Mutex mutex_create();

void mutex_lock(Mutex mutex);
BOOL mutex_trylock(Mutex mutex);
void mutex_release(Mutex mutex);
# 15 ".././shared/../shared/kernel_base.h" 2
# 1 "..\\..\\AntonAvrLib/anton_std.h" 1
# 16 ".././shared/../shared/kernel_base.h" 2
# 14 ".././shared/../kernel.h" 2
# 1 ".././shared/../tank_button.h" 1
# 11 ".././shared/../tank_button.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/button.h" 1
# 19 "..\\..\\AntonAvrLib/kernel/devices/button.h"
typedef struct {
 uint8_t flags;
 PPin pin;
 uint8_t pinChangeInterruptNumber;
} Button, *PButton;


BOOL buttonStatus(PButton button);
# 12 ".././shared/../tank_button.h" 2
# 1 ".././shared/../shared/tank_IO_protocol.h" 1
# 10 ".././shared/../shared/tank_IO_protocol.h"
typedef enum {
 LEDS_ALL,
 LEDS_LEFT,
 LEDS_RIGHT,
 LEDS_MIDDLE,
 LEDS_RED,
 LEDS_YELLOW,
 LEDS_WHITE,
 LEDS_GREEN
} TankIoLeds;


typedef enum {
 BUTTON_1 = (1 << (0)),
 BUTTON_2 = (1 << (1)),
 BUTTON_3 = (1 << (2)),
 BUTTON_4 = (1 << (3)),
 BUTTON_SWITCH = (1 << (4))
} TankButton;

typedef struct {
 TankIoLeds leds;
 uint16_t mask;
} MaskedLeds;

typedef struct {
 TankIoLeds leds;
 uint8_t index;
} SingleLed;

typedef struct {
 SingleLed led;
 BOOL value;
} SetLedParam;

typedef struct {
 SingleLed led;
 uint8_t times;
} BlinkLedParam;

typedef struct {
 MaskedLeds leds;
 uint8_t times;
} BlinkLedsParam;

typedef struct {
 TankIoLeds leds;
 uint8_t times;
} BlinkAllLedsParam;

typedef struct {
 SingleLed led;
 uint16_t milliseconds;
} FlashLedParam;

typedef struct {
 MaskedLeds leds;
 uint16_t milliseconds;
} FlashLedsParam;

typedef struct {
 TankIoLeds leds;
 uint16_t milliseconds;
} FlashAllLedsParam;

typedef struct {
 TankIoLeds display;
 TankIoLeds notifier;
 byte data;
} BlinkByteParam;

enum {


 TANK_IO_reset = 0xA0,

 TANK_IO_isInitialized = 0xA1,


 TANK_IO_buttonStatus = 0xA2,

 TANK_IO_pressedButtons = 0xA3,


 TANK_IO_enableLed = 0xA4,
 TANK_IO_disableLed = 0xA5,
 TANK_IO_setLed = 0xA6,

 TANK_IO_setLeds = 0xA7,
 TANK_IO_enableLeds = 0xA8,
 TANK_IO_disableLeds = 0xA9,

 TANK_IO_blinkLed = 0xAA,
 TANK_IO_blinkLeds = 0xAB,
 TANK_IO_blinkAllLeds = 0xAC,

 TANK_IO_flashLed = 0xAD,
 TANK_IO_flashLeds = 0xAE,
 TANK_IO_flashAllLeds = 0xAF,

 TANK_IO_blinkByte = 0xB0,
};
# 13 ".././shared/../tank_button.h" 2

Button Button1_; const PButton Button1 = &Button1_;
Button Button2_; const PButton Button2 = &Button2_;
Button Button3_; const PButton Button3 = &Button3_;
Button Button4_; const PButton Button4 = &Button4_;
Button ButtonSwitch_; const PButton ButtonSwitch = &ButtonSwitch_;

uint8_t buttonStatusMask();



void updateButtonStatus();



uint8_t pressedButtons();
# 15 ".././shared/../kernel.h" 2
# 1 ".././shared/../tank_led.h" 1
# 11 ".././shared/../tank_led.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/led.h" 1
# 12 ".././shared/../tank_led.h" 2

Led White1_; const PLed White1 = &White1_;
Led White2_; const PLed White2 = &White2_;
Led White3_; const PLed White3 = &White3_;
Led White4_; const PLed White4 = &White4_;
Led White5_; const PLed White5 = &White5_;

Led Red1_; const PLed Red1 = &Red1_;
Led Red2_; const PLed Red2 = &Red2_;
Led Red3_; const PLed Red3 = &Red3_;
Led Red4_; const PLed Red4 = &Red4_;
Led Red5_; const PLed Red5 = &Red5_;

Led Green1_; const PLed Green1 = &Green1_;
Led Green2_; const PLed Green2 = &Green2_;
Led Green3_; const PLed Green3 = &Green3_;
Led Yellow1_; const PLed Yellow1 = &Yellow1_;
Led Yellow2_; const PLed Yellow2 = &Yellow2_;

LedGroup RedLeds_; const PLedGroup RedLeds = &RedLeds_;
LedGroup YellowLeds_; const PLedGroup YellowLeds = &YellowLeds_;
LedGroup WhiteLeds_; const PLedGroup WhiteLeds = &WhiteLeds_;
LedGroup GreenLeds_; const PLedGroup GreenLeds = &GreenLeds_;
LedGroup MiddleLeds_; const PLedGroup MiddleLeds = &MiddleLeds_;
LedGroup AllLeds_; const PLedGroup AllLeds = &AllLeds_;
# 16 ".././shared/../kernel.h" 2
# 14 ".././shared/base_before.kernel.h" 2
# 27 ".././shared/base_before.kernel.h"
# 1 ".././shared/timer.kernel.h" 1






# 1 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.kernel.h" 1
# 11 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.kernel.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/../kernel_init.h" 1
# 12 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.kernel.h" 2
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
# 68 "..\\..\\AntonAvrLib/kernel/devices/timer.h"
typedef struct {
 uint8_t flags;
 volatile uint8_t *controlRegisterA;
 volatile uint8_t *controlRegisterB;
 volatile uint8_t *interruptMaskRegister;
} TimerPair, *PTimerPair;

typedef enum {
 TIMER_A,
 TIMER_B
} TIMER_TYPE;

typedef struct {
 PTimerPair timer;
 volatile uint8_t *outputCompareRegister;
 TIMER_TYPE type;
 PPin outputComparePin;
} Timer, *PTimer;


void setTimerClockSelect(PTimerPair timer, TimerClockSelect cs);
void setWaveformGenerationMode(PTimerPair timer, WaveformGenerationMode wgm);

void setCompareMatchOutputMode(PTimer timer, CompareMatchOutputMode com);

void enableTimerInterrupt(PTimer timer);
void disableTimerInterrupt(PTimer timer);
void enableOutputCompare(PTimer timer);
void disableOutputCompare(PTimer timer);


void setTimerCompareValue(PTimer timer, uint16_t value);


uint16_t getTimerCompareValue(PTimer timer);
# 12 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/devices/port_m1284P.h" 1
# 13 "..\\..\\AntonAvrLib/kernel/devices/port_m1284P.h"
Port PortA_; const PPort PortA = &PortA_; Pin PinA0_; const PPin PinA0 = &PinA0_; Pin PinA1_; const PPin PinA1 = &PinA1_; Pin PinA2_; const PPin PinA2 = &PinA2_; Pin PinA3_; const PPin PinA3 = &PinA3_; Pin PinA4_; const PPin PinA4 = &PinA4_; Pin PinA5_; const PPin PinA5 = &PinA5_; Pin PinA6_; const PPin PinA6 = &PinA6_; Pin PinA7_; const PPin PinA7 = &PinA7_;
Port PortB_; const PPort PortB = &PortB_; Pin PinB0_; const PPin PinB0 = &PinB0_; Pin PinB1_; const PPin PinB1 = &PinB1_; Pin PinB2_; const PPin PinB2 = &PinB2_; Pin PinB3_; const PPin PinB3 = &PinB3_; Pin PinB4_; const PPin PinB4 = &PinB4_; Pin PinB5_; const PPin PinB5 = &PinB5_; Pin PinB6_; const PPin PinB6 = &PinB6_; Pin PinB7_; const PPin PinB7 = &PinB7_;
Port PortC_; const PPort PortC = &PortC_; Pin PinC0_; const PPin PinC0 = &PinC0_; Pin PinC1_; const PPin PinC1 = &PinC1_; Pin PinC2_; const PPin PinC2 = &PinC2_; Pin PinC3_; const PPin PinC3 = &PinC3_; Pin PinC4_; const PPin PinC4 = &PinC4_; Pin PinC5_; const PPin PinC5 = &PinC5_; Pin PinC6_; const PPin PinC6 = &PinC6_; Pin PinC7_; const PPin PinC7 = &PinC7_;
Port PortD_; const PPort PortD = &PortD_; Pin PinD0_; const PPin PinD0 = &PinD0_; Pin PinD1_; const PPin PinD1 = &PinD1_; Pin PinD2_; const PPin PinD2 = &PinD2_; Pin PinD3_; const PPin PinD3 = &PinD3_; Pin PinD4_; const PPin PinD4 = &PinD4_; Pin PinD5_; const PPin PinD5 = &PinD5_; Pin PinD6_; const PPin PinD6 = &PinD6_; Pin PinD7_; const PPin PinD7 = &PinD7_;
# 13 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.h" 2

TimerPair Timer0_; const PTimerPair Timer0 = &Timer0_;
TimerPair Timer1_; const PTimerPair Timer1 = &Timer1_;
TimerPair Timer2_; const PTimerPair Timer2 = &Timer2_;
TimerPair Timer3_; const PTimerPair Timer3 = &Timer3_;

Timer Timer0A_; const PTimer Timer0A = &Timer0A_;
Timer Timer0B_; const PTimer Timer0B = &Timer0B_;
Timer Timer1A_; const PTimer Timer1A = &Timer1A_;
Timer Timer1B_; const PTimer Timer1B = &Timer1B_;
Timer Timer2A_; const PTimer Timer2A = &Timer2A_;
Timer Timer2B_; const PTimer Timer2B = &Timer2B_;
Timer Timer3A_; const PTimer Timer3A = &Timer3A_;
Timer Timer3B_; const PTimer Timer3B = &Timer3B_;
# 13 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.kernel.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/devices/port_m1284P.kernel.h" 1
# 14 "..\\..\\AntonAvrLib/kernel/devices/port_m1284P.kernel.h"
void init_ports_m1284P() {
 PortA_ = (Port) { &(*(volatile uint8_t *)((0x02) + 0x20)), &(*(volatile uint8_t *)((0x00) + 0x20)), &(*(volatile uint8_t *)((0x01) + 0x20)) }; PinA0_ = (Pin) { PortA, (1 << (0)) }; PinA1_ = (Pin) { PortA, (1 << (1)) }; PinA2_ = (Pin) { PortA, (1 << (2)) }; PinA3_ = (Pin) { PortA, (1 << (3)) }; PinA4_ = (Pin) { PortA, (1 << (4)) }; PinA5_ = (Pin) { PortA, (1 << (5)) }; PinA6_ = (Pin) { PortA, (1 << (6)) }; PinA7_ = (Pin) { PortA, (1 << (7)) };;
 PortB_ = (Port) { &(*(volatile uint8_t *)((0x05) + 0x20)), &(*(volatile uint8_t *)((0x03) + 0x20)), &(*(volatile uint8_t *)((0x04) + 0x20)) }; PinB0_ = (Pin) { PortB, (1 << (0)) }; PinB1_ = (Pin) { PortB, (1 << (1)) }; PinB2_ = (Pin) { PortB, (1 << (2)) }; PinB3_ = (Pin) { PortB, (1 << (3)) }; PinB4_ = (Pin) { PortB, (1 << (4)) }; PinB5_ = (Pin) { PortB, (1 << (5)) }; PinB6_ = (Pin) { PortB, (1 << (6)) }; PinB7_ = (Pin) { PortB, (1 << (7)) };;
 PortC_ = (Port) { &(*(volatile uint8_t *)((0x08) + 0x20)), &(*(volatile uint8_t *)((0x06) + 0x20)), &(*(volatile uint8_t *)((0x07) + 0x20)) }; PinC0_ = (Pin) { PortC, (1 << (0)) }; PinC1_ = (Pin) { PortC, (1 << (1)) }; PinC2_ = (Pin) { PortC, (1 << (2)) }; PinC3_ = (Pin) { PortC, (1 << (3)) }; PinC4_ = (Pin) { PortC, (1 << (4)) }; PinC5_ = (Pin) { PortC, (1 << (5)) }; PinC6_ = (Pin) { PortC, (1 << (6)) }; PinC7_ = (Pin) { PortC, (1 << (7)) };;
 PortD_ = (Port) { &(*(volatile uint8_t *)((0x0B) + 0x20)), &(*(volatile uint8_t *)((0x09) + 0x20)), &(*(volatile uint8_t *)((0x0A) + 0x20)) }; PinD0_ = (Pin) { PortD, (1 << (0)) }; PinD1_ = (Pin) { PortD, (1 << (1)) }; PinD2_ = (Pin) { PortD, (1 << (2)) }; PinD3_ = (Pin) { PortD, (1 << (3)) }; PinD4_ = (Pin) { PortD, (1 << (4)) }; PinD5_ = (Pin) { PortD, (1 << (5)) }; PinD6_ = (Pin) { PortD, (1 << (6)) }; PinD7_ = (Pin) { PortD, (1 << (7)) };;
}
void init_ports_m1284P_kernel_init() __attribute__((naked, section(".init8"))); void init_ports_m1284P_kernel_init() { init_ports_m1284P(); }
# 14 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.kernel.h" 2

void init_timer_m1284P() {
 Timer0_ = (TimerPair) {0, (uint8_t*) &(*(volatile uint8_t *)((0x24) + 0x20)), (uint8_t*) &(*(volatile uint8_t *)((0x25) + 0x20)), &(*(volatile uint8_t *)(0x6E))};
 Timer1_ = (TimerPair) {(1 << 2), (uint8_t*) &(*(volatile uint8_t *)(0x80)), (uint8_t*) &(*(volatile uint8_t *)(0x81)), &(*(volatile uint8_t *)(0x6F))};
 Timer2_ = (TimerPair) {(1 << 1), (uint8_t*) &(*(volatile uint8_t *)(0xB0)), (uint8_t*) &(*(volatile uint8_t *)(0xB1)), &(*(volatile uint8_t *)(0x70))};
 Timer3_ = (TimerPair) {(1 << 2), (uint8_t*) &(*(volatile uint8_t *)(0x90)), (uint8_t*) &(*(volatile uint8_t *)(0x91)), &(*(volatile uint8_t *)(0x71))};

 Timer0A_ = (Timer) {Timer0, (uint8_t*) &(*(volatile uint8_t *)((0x27) + 0x20)), TIMER_A, PinB3};
 Timer0B_ = (Timer) {Timer0, (uint8_t*) &(*(volatile uint8_t *)((0x28) + 0x20)), TIMER_B, PinB4};
 Timer1A_ = (Timer) {Timer1, (uint8_t*) &(*(volatile uint16_t *)(0x88)), TIMER_A, PinD5};
 Timer1B_ = (Timer) {Timer1, (uint8_t*) &(*(volatile uint16_t *)(0x8A)), TIMER_B, PinD4};
 Timer2A_ = (Timer) {Timer2, (uint8_t*) &(*(volatile uint8_t *)(0xB3)), TIMER_A, PinD7};
 Timer2B_ = (Timer) {Timer2, (uint8_t*) &(*(volatile uint8_t *)(0xB4)), TIMER_B, PinD6};
 Timer3A_ = (Timer) {Timer3, (uint8_t*) &(*(volatile uint16_t *)(0x98)), TIMER_A, PinB6};
 Timer3B_ = (Timer) {Timer3, (uint8_t*) &(*(volatile uint16_t *)(0x9A)), TIMER_B, PinB7};
}
void init_timer_m1284P_kernel_init() __attribute__((naked, section(".init8"))); void init_timer_m1284P_kernel_init() { init_timer_m1284P(); }
# 8 ".././shared/timer.kernel.h" 2






void init_timer() {
 setWaveformGenerationMode(Timer3, clear_timer_on_match);
 setTimerClockSelect(Timer3, prescale_8);





 setTimerCompareValue(Timer3A, ((uint16_t) 2500));
 setTimerCompareValue(Timer3B, ((uint16_t) 2500));
}
void init_timer_kernel_init() __attribute__((naked, section(".init8"))); void init_timer_kernel_init() { init_timer(); }
# 28 ".././shared/base_before.kernel.h" 2


# 1 "..\\..\\AntonAvrLib/kernel/timer_base.kernel.h" 1
# 23 "..\\..\\AntonAvrLib/kernel/timer_base.kernel.h"
# 1 "..\\..\\AntonAvrLib/kernel/millisecond_clock.h" 1
# 24 "..\\..\\AntonAvrLib/kernel/timer_base.kernel.h" 2




void in_timer_tick() __attribute__((weak));
void in_timer_tick() {};
# 31 ".././shared/base_before.kernel.h" 2





# 1 "..\\..\\AntonAvrLib/kernel/simple_timer.kernel.h" 1






void __vector_32 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_32 (void) {
 milliseconds_running++; in_timer_tick();
}
# 37 ".././shared/base_before.kernel.h" 2


# 1 "..\\..\\AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h" 1
# 14 "..\\..\\AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h"
typedef struct {
 BOOL interruptsWereEnabled;
} AtomicMutex;

Mutex mutex_create() {
 return (Mutex) malloc(sizeof(AtomicMutex));
}

void mutex_lock(Mutex mutex) {
 ((AtomicMutex *) mutex)->interruptsWereEnabled = (*(volatile uint8_t *)((0x3F) + 0x20)) & (1 << (7));
 __asm__ __volatile__ ("cli" ::: "memory");
}

BOOL mutex_trylock(Mutex mutex) {
 mutex_lock(mutex);
 return TRUE;
}

void mutex_release(Mutex mutex) {

  __asm__ __volatile__ ("sei" ::: "memory");
}
# 40 ".././shared/base_before.kernel.h" 2


# 1 "..\\..\\AntonAvrLib/kernel/sleep_after_main.kernel.h" 1



# 1 "..\\..\\AntonAvrLib/kernel/../misc/idle.h" 1





void processor_idle();






void processor_loop_idle();
# 5 "..\\..\\AntonAvrLib/kernel/sleep_after_main.kernel.h" 2


void MainProcessEnd() __attribute__((section (".fini1")));
void MainProcessEnd() {
 processor_loop_idle();
}
# 43 ".././shared/base_before.kernel.h" 2
# 11 ".././kernel.c" 2
# 1 ".././tank_led.kernel.h" 1
# 11 ".././tank_led.kernel.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/port_m1284P.kernel.h" 1
# 12 ".././tank_led.kernel.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/devices/led.kernel.h" 1
# 12 "..\\..\\AntonAvrLib/kernel/devices/led.kernel.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/led.h" 1
# 13 "..\\..\\AntonAvrLib/kernel/devices/led.kernel.h" 2

static void initLed(PLed led) {
 setPinOutput(led->pin);
}
# 13 ".././tank_led.kernel.h" 2
# 1 ".././tank_led.h" 1
# 14 ".././tank_led.kernel.h" 2


PLed redLedsArray[] = { &Red1_, &Red2_, &Red3_, &Red4_, &Red5_ };
PLed yellowLedsArray[] = { &Yellow1_, &Yellow2_ };
PLed whiteLedsArray[] = { &White1_, &White2_, &White3_, &White4_, &White5_ };
PLed greenLedsArray[] = { &Green1_, &Green2_, &Green3_ };
PLed middleLedsArray[] = { &Green1_, &Green2_, &Green3_, &Yellow1_, &Yellow2_ };
PLed allLedsArray[] = {
    &White1_, &White2_, &White3_, &White4_, &White5_,
    &Green1_, &Green2_, &Green3_, &Yellow1_, &Yellow2_,
    &Red1_, &Red2_, &Red3_, &Red4_, &Red5_ };

void init_tank_leds() {
 White1_ = (Led) { PinB0 }; initLed(White1);
 White2_ = (Led) { PinB1 }; initLed(White2);
 White3_ = (Led) { PinB2 }; initLed(White3);
 White4_ = (Led) { PinB3 }; initLed(White4);
 White5_ = (Led) { PinB4 }; initLed(White5);

 Green1_ = (Led) { PinB5 }; initLed(Green1);
 Green2_ = (Led) { PinB6 }; initLed(Green2);
 Green3_ = (Led) { PinB7 }; initLed(Green3);
 Yellow1_ = (Led) { PinD0 }; initLed(Yellow1);
 Yellow2_ = (Led) { PinD1 }; initLed(Yellow2);

 Red1_ = (Led) { PinD2 }; initLed(Red1);
 Red2_ = (Led) { PinD3 }; initLed(Red2);
 Red3_ = (Led) { PinD4 }; initLed(Red3);
 Red4_ = (Led) { PinD5 }; initLed(Red4);
 Red5_ = (Led) { PinD6 }; initLed(Red5);

 RedLeds_ = (LedGroup) { redLedsArray, 5 };
 YellowLeds_ = (LedGroup) { yellowLedsArray, 2 };
 WhiteLeds_ = (LedGroup) { whiteLedsArray, 5 };
 GreenLeds_ = (LedGroup) { greenLedsArray, 3 };
 MiddleLeds_ = (LedGroup) { middleLedsArray, 5 };
 AllLeds_ = (LedGroup) { allLedsArray, 15 };
}
void init_tank_leds_kernel_init() __attribute__((naked, section(".init8"))); void init_tank_leds_kernel_init() { init_tank_leds(); }
# 12 ".././kernel.c" 2
# 1 ".././tank_button.kernel.h" 1
# 13 ".././tank_button.kernel.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/button.kernel.h" 1
# 15 "..\\..\\AntonAvrLib/kernel/devices/button.kernel.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/external_interrupts.h" 1
# 15 "..\\..\\AntonAvrLib/kernel/devices/external_interrupts.h"
void enablePinChangeInterrupt(uint8_t pcNumber);
void disblePinChangeInterrupt(uint8_t pcNumber);
# 16 "..\\..\\AntonAvrLib/kernel/devices/button.kernel.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/devices/button.h" 1
# 17 "..\\..\\AntonAvrLib/kernel/devices/button.kernel.h" 2

void initButton(PButton button) {
 setPinInput(button->pin);
 if (button->flags & (1 << (1)))
  setPinOne(button->pin);


 if (button->flags & (1 << (2)))

  enablePinChangeInterrupt(button->pinChangeInterruptNumber);
}
# 14 ".././tank_button.kernel.h" 2
# 1 ".././tank_button.h" 1
# 15 ".././tank_button.kernel.h" 2


Mutex buttonMutex;
uint8_t buttonsPressedSinceLastCall = 0;
uint8_t wasPressed = 0;

void init_tank_buttons() {

 Button1_ = (Button) { (1 << (0)) | (1 << (1)), PinC5, 21 }; initButton(Button1);
 Button2_ = (Button) { (1 << (0)) | (1 << (1)), PinC4, 20 }; initButton(Button2);
 Button3_ = (Button) { (1 << (0)) | (1 << (1)), PinC3, 19 }; initButton(Button3);
 Button4_ = (Button) { (1 << (0)) | (1 << (1)), PinC2, 18 }; initButton(Button4);
 ButtonSwitch_ = (Button) { (1 << (0)) | (1 << (1)), PinD7, 31 }; initButton(ButtonSwitch);
 buttonMutex = mutex_create();
}
void init_tank_buttons_kernel_init() __attribute__((naked, section(".init8"))); void init_tank_buttons_kernel_init() { init_tank_buttons(); }

uint8_t buttonStatusMask() {
 uint8_t buttons = 0;
 if (buttonStatus(Button1)) buttons |= BUTTON_1;
 if (buttonStatus(Button2)) buttons |= BUTTON_2;
 if (buttonStatus(Button3)) buttons |= BUTTON_3;
 if (buttonStatus(Button4)) buttons |= BUTTON_4;
 if (buttonStatus(ButtonSwitch)) buttons |= BUTTON_SWITCH;
 return buttons;
}

uint8_t pressedButtons() {
 mutex_lock(buttonMutex);
 uint8_t result = buttonsPressedSinceLastCall;
 buttonsPressedSinceLastCall = 0;
 mutex_release(buttonMutex);
 return result;
}

void updateButtonStatus() {
 uint8_t pressedNow = buttonStatusMask();
 uint8_t newlyPressed = 0;

 if (!(wasPressed & BUTTON_1) && (pressedNow & BUTTON_1))
  newlyPressed |= BUTTON_1;
 if (!(wasPressed & BUTTON_2) && (pressedNow & BUTTON_2))
  newlyPressed |= BUTTON_2;
 if (!(wasPressed & BUTTON_3) && (pressedNow & BUTTON_3))
  newlyPressed |= BUTTON_3;
 if (!(wasPressed & BUTTON_4) && (pressedNow & BUTTON_4))
  newlyPressed |= BUTTON_4;
 if (!(wasPressed & BUTTON_SWITCH) && (pressedNow & BUTTON_SWITCH))
  newlyPressed |= BUTTON_SWITCH;

 mutex_lock(buttonMutex);
 buttonsPressedSinceLastCall |= newlyPressed;
 mutex_release(buttonMutex);

 wasPressed = pressedNow;
}
# 13 ".././kernel.c" 2





# 1 ".././shared/base_after.kernel.h" 1
# 13 ".././shared/base_after.kernel.h"
void before_timer() __attribute__((weak));
void before_timer() {}


void init_kernel() {

 (*(volatile uint8_t *)((0x30) + 0x20)) |= (1 << (7));
 (*(volatile uint8_t *)(0x64)) |= (1 << (5)) | (1 << (6));
# 29 ".././shared/base_after.kernel.h"

 before_timer();

 enableTimerInterrupt(Timer3A);




 __asm__ __volatile__ ("sei" ::: "memory");
}
void init_kernel_kernel_init() __attribute__((naked, section(".init8"))); void init_kernel_kernel_init() { init_kernel(); }
# 19 ".././kernel.c" 2



void tankIO_system_initialized() __attribute__((weak));
void tankIO_system_initialized_kernel_init() __attribute__((naked, section(".init8"))); void tankIO_system_initialized_kernel_init() { tankIO_system_initialized(); }
