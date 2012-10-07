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
# 11 ".././shared/../kernel.h"
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
# 12 ".././shared/../kernel.h" 2
# 1 ".././shared/../tank_motor.h" 1
# 11 ".././shared/../tank_motor.h"
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
# 12 ".././shared/../tank_motor.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/devices/motor.h" 1
# 22 "..\\..\\AntonAvrLib/kernel/devices/motor.h"
typedef struct {
 uint8_t flags;
 PPin direction;
 PTimer pwmTimer;




 uint16_t minValue;
 uint16_t maxValue;
} Motor, *PMotor;

typedef struct {
 Motor motor;
 PPin direction2;
} Motor2Pins, *PMotor2Pins;

typedef enum {
 BACKWARD = 0,
 FORWARD = 1,
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
# 13 ".././shared/../tank_motor.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/devices/motor_smooth.h" 1
# 11 "..\\..\\AntonAvrLib/kernel/devices/motor_smooth.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/motor.h" 1
# 12 "..\\..\\AntonAvrLib/kernel/devices/motor_smooth.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/devices/../processes/mutex/mutex.h" 1
# 13 "..\\..\\AntonAvrLib/kernel/devices/motor_smooth.h" 2



typedef struct {
 PMotor motor;


 uint16_t currentSpeed;
 MotorDirection currentDirection;


 uint16_t targetSpeed;
 MotorDirection targetDirection;


 BOOL tickRunning;
 uint16_t adjustmentStep;
 Mutex mutex;
} SmoothMotor, *PSmoothMotor;



void regulateStopMotor(PSmoothMotor motor);

void regulateSpeed(PSmoothMotor motor, uint16_t speed, MotorDirection direction);
void regulateSpeedForward(PSmoothMotor motor, uint16_t speed);
void regulateSpeedBackward(PSmoothMotor motor, uint16_t speed);

void regulateDirSpeed(PSmoothMotor motor, int16_t speed);
# 14 ".././shared/../tank_motor.h" 2

Motor2Pins LeftMotorBase_; const PMotor LeftMotorBase = (PMotor) &LeftMotorBase_;
Motor2Pins RightMotorBase_; const PMotor RightMotorBase = (PMotor) &RightMotorBase_;
SmoothMotor LeftMotor_; const PSmoothMotor LeftMotor = &LeftMotor_;
SmoothMotor RightMotor_; const PSmoothMotor RightMotor = &RightMotor_;
# 13 ".././shared/../kernel.h" 2


# 1 ".././shared/../shared/twi_bgx1.h" 1



# 1 "..\\..\\AntonAvrLib/kernel/TWI/twi_raw.h" 1



# 1 "..\\..\\AntonAvrLib/kernel/TWI/../../anton_std.h" 1
# 5 "..\\..\\AntonAvrLib/kernel/TWI/twi_raw.h" 2


typedef struct {
 uint8_t address;
} TWIDevice;

extern TWIDevice TWIBroadcast;

typedef struct {
 byte *data;
 uint16_t size;
} TWIBuffer;

typedef struct {
 TWIBuffer buffer;
 TWIDevice device;
 enum {
  TWI_IllegalOperation,
  TWI_Receive,
  TWI_Send
 } operationMode;
} TWIOperation;

typedef enum {
 TWI_No_Error,

 TWI_No_Info_Interrupt,
 TWI_Bus_Error,
 TWI_Illegal_Status,

 TWI_SlaveAddress_NoAck,
 TWI_Arbitration_Lost,

 TWI_Master_TooMuchDataTransmitted,






 TWI_Slave_NotEnoughDataTransmitted,
 TWI_Slave_TooMuchDataTransmitted,
 TWI_Slave_NotEnoughDataReceived


} TWIError;


extern volatile BOOL twi_running;
extern TWIError twi_error;





void WAIT_FOR_TWI();



void twiSend(TWIDevice targetDevice, TWIBuffer data);
void twiReceive(TWIDevice targetDevice, TWIBuffer receiveBuffer);
void twiSendReceive(TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer receiveBuffer);






void twiMultipleOperations(int count, TWIOperation *operations);



void turn_word(uint16_t *word);
# 5 ".././shared/../shared/twi_bgx1.h" 2

TWIDevice bgx1 = { 11 << 1 };
# 15 ".././shared/../shared/twi_bgx1.h"
# 1 "..\\..\\AntonAvrLib/kernel/TWI/twi_rpc_client.h" 1






# 1 "..\\..\\AntonAvrLib/kernel/TWI/twi_rpc.h" 1



# 1 "..\\..\\AntonAvrLib/kernel/TWI/twi_raw.h" 1
# 5 "..\\..\\AntonAvrLib/kernel/TWI/twi_rpc.h" 2




void twi_rpc_oneway(TWIDevice device, byte operation, TWIBuffer parameters);
void twi_rpc(TWIDevice device, byte operation, TWIBuffer parameters, TWIBuffer resultBuffer);




void twi_rpc_pseudo_oneway(TWIDevice device, byte operation, TWIBuffer parameters);
# 8 "..\\..\\AntonAvrLib/kernel/TWI/twi_rpc_client.h" 2
# 16 ".././shared/../shared/twi_bgx1.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/pgmspace.h" 1 3
# 87 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/pgmspace.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/include/stddef.h" 1 3 4
# 88 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/pgmspace.h" 2 3
# 217 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/pgmspace.h" 3
typedef void prog_void __attribute__((__progmem__));
typedef char prog_char __attribute__((__progmem__));
typedef unsigned char prog_uchar __attribute__((__progmem__));

typedef int8_t prog_int8_t __attribute__((__progmem__));
typedef uint8_t prog_uint8_t __attribute__((__progmem__));
typedef int16_t prog_int16_t __attribute__((__progmem__));
typedef uint16_t prog_uint16_t __attribute__((__progmem__));
typedef int32_t prog_int32_t __attribute__((__progmem__));
typedef uint32_t prog_uint32_t __attribute__((__progmem__));

typedef int64_t prog_int64_t __attribute__((__progmem__));
typedef uint64_t prog_uint64_t __attribute__((__progmem__));
# 907 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/pgmspace.h" 3
extern const prog_void * memchr_P(const prog_void *, int __val, size_t __len) __attribute__((__const__));
extern int memcmp_P(const void *, const prog_void *, size_t) __attribute__((__pure__));
extern void *memccpy_P(void *, const prog_void *, int __val, size_t);
extern void *memcpy_P(void *, const prog_void *, size_t);
extern void *memmem_P(const void *, size_t, const prog_void *, size_t) __attribute__((__pure__));
extern const prog_void * memrchr_P(const prog_void *, int __val, size_t __len) __attribute__((__const__));
extern char *strcat_P(char *, const prog_char *);
extern const prog_char * strchr_P(const prog_char *, int __val) __attribute__((__const__));
extern const prog_char * strchrnul_P(const prog_char *, int __val) __attribute__((__const__));
extern int strcmp_P(const char *, const prog_char *) __attribute__((__pure__));
extern char *strcpy_P(char *, const prog_char *);
extern int strcasecmp_P(const char *, const prog_char *) __attribute__((__pure__));
extern char *strcasestr_P(const char *, const prog_char *) __attribute__((__pure__));
extern size_t strcspn_P(const char *__s, const prog_char * __reject) __attribute__((__pure__));
extern size_t strlcat_P (char *, const prog_char *, size_t );
extern size_t strlcpy_P (char *, const prog_char *, size_t );
extern size_t strlen_P(const prog_char *) __attribute__((__const__));
extern size_t strnlen_P(const prog_char *, size_t) __attribute__((__const__));
extern int strncmp_P(const char *, const prog_char *, size_t) __attribute__((__pure__));
extern int strncasecmp_P(const char *, const prog_char *, size_t) __attribute__((__pure__));
extern char *strncat_P(char *, const prog_char *, size_t);
extern char *strncpy_P(char *, const prog_char *, size_t);
extern char *strpbrk_P(const char *__s, const prog_char * __accept) __attribute__((__pure__));
extern const prog_char * strrchr_P(const prog_char *, int __val) __attribute__((__const__));
extern char *strsep_P(char **__sp, const prog_char * __delim);
extern size_t strspn_P(const char *__s, const prog_char * __accept) __attribute__((__pure__));
extern char *strstr_P(const char *, const prog_char *) __attribute__((__pure__));
extern char *strtok_P(char *__s, const prog_char * __delim);
extern char *strtok_rP(char *__s, const prog_char * __delim, char **__last);

extern size_t strlen_PF (uint_farptr_t src) __attribute__((__const__));
extern size_t strnlen_PF (uint_farptr_t src, size_t len) __attribute__((__const__));
extern void *memcpy_PF (void *dest, uint_farptr_t src, size_t len);
extern char *strcpy_PF (char *dest, uint_farptr_t src);
extern char *strncpy_PF (char *dest, uint_farptr_t src, size_t len);
extern char *strcat_PF (char *dest, uint_farptr_t src);
extern size_t strlcat_PF (char *dst, uint_farptr_t src, size_t siz);
extern char *strncat_PF (char *dest, uint_farptr_t src, size_t len);
extern int strcmp_PF (const char *s1, uint_farptr_t s2) __attribute__((__pure__));
extern int strncmp_PF (const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
extern int strcasecmp_PF (const char *s1, uint_farptr_t s2) __attribute__((__pure__));
extern int strncasecmp_PF (const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
extern char *strstr_PF (const char *s1, uint_farptr_t s2);
extern size_t strlcpy_PF (char *dst, uint_farptr_t src, size_t siz);
extern int memcmp_PF(const void *, uint_farptr_t, size_t) __attribute__((__pure__));
# 17 ".././shared/../shared/twi_bgx1.h" 2




enum {

  CMD_Reset = 0x00,
  CMD_GetVersion = 0x01,
  CMD_GetStatus = 0x02,
  CMD_SetStatus = 0x03,




  CMD_Move = 0x10,
  CMD_Mode = 0x11,
  CMD_FillAll = 0x12,
  CMD_Print = 0x13,
  CMD_TextWidth = 0x14,
  CMD_SelectFont = 0x15,
  CMD_HLine = 0x16,
  CMD_VLine = 0x17,
  CMD_Box = 0x18,
  CMD_Bitmap = 0x19,
  CMD_EmbeddedImage = 0x1a,
  CMD_LineTo = 0x1b,


  CMD_TermClear = 0x30,
  CMD_TermGoto = 0x31,
  CMD_TermScroll = 0x32,
  CMD_TermPrint = 0x33,


  CMD_SyncPort = 0x40,
  CMD_GetAnalog = 0x41,
  CMD_SyncInterface = 0x42,
  CMD_SetIllumination = 0x43,

  CMD_INVALID = 0xff
};


void bgx1_reset() { TWIBuffer argBuf = (TWIBuffer) { (byte*) ((void *)0), 0 }; twi_rpc_pseudo_oneway(bgx1, CMD_Reset, argBuf); WAIT_FOR_TWI(); }
uint16_t bgx1_getVersion_base() { uint16_t result; TWIBuffer argBuf = (TWIBuffer) { (byte*) ((void *)0), 0 }; TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(uint16_t) }; twi_rpc(bgx1, CMD_GetVersion, argBuf, resBuf); WAIT_FOR_TWI(); return result; }
uint8_t bgx1_getStatus() { uint8_t result; TWIBuffer argBuf = (TWIBuffer) { (byte*) ((void *)0), 0 }; TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(uint8_t) }; twi_rpc(bgx1, CMD_GetStatus, argBuf, resBuf); WAIT_FOR_TWI(); return result; }
void bgx1_setStatus(uint8_t parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(uint8_t) }; twi_rpc_pseudo_oneway(bgx1, CMD_SetStatus, buf); WAIT_FOR_TWI(); }

typedef struct {
 uint8_t x;
 uint8_t y;
} Point, *PPoint, Rect, *PRect;

typedef struct {
 uint8_t width;
 uint8_t height;


} BitmapArguments, *PBitmapArguments;


typedef char StringArg;


void bgx1_move_base(Point parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(Point) }; twi_rpc_pseudo_oneway(bgx1, CMD_Move, buf); WAIT_FOR_TWI(); }
void bgx1_mode(uint8_t parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(uint8_t) }; twi_rpc_pseudo_oneway(bgx1, CMD_Mode, buf); WAIT_FOR_TWI(); }
void bgx1_fillAll(uint8_t parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(uint8_t) }; twi_rpc_pseudo_oneway(bgx1, CMD_FillAll, buf); WAIT_FOR_TWI(); }
Point bgx1_print_base(StringArg *parameters, uint16_t argSize) { TWIBuffer argBuf = (TWIBuffer) { (byte*) parameters, argSize }; Point result; TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(Point) }; twi_rpc(bgx1, CMD_Print, argBuf, resBuf); WAIT_FOR_TWI(); return result; }
uint8_t bgx1_textWidth_base(StringArg *parameters, uint16_t argSize) { TWIBuffer argBuf = (TWIBuffer) { (byte*) parameters, argSize }; uint8_t result; TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(uint8_t) }; twi_rpc(bgx1, CMD_TextWidth, argBuf, resBuf); WAIT_FOR_TWI(); return result; }
void bgx1_selectFont(uint8_t parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(uint8_t) }; twi_rpc_pseudo_oneway(bgx1, CMD_SelectFont, buf); WAIT_FOR_TWI(); }
Point bgx1_hLine(uint8_t parameters) { TWIBuffer argBuf = (TWIBuffer) { (byte*) &parameters, sizeof(uint8_t) }; Point result; TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(Point) }; twi_rpc(bgx1, CMD_HLine, argBuf, resBuf); WAIT_FOR_TWI(); return result; }
Point bgx1_vLine(uint8_t parameters) { TWIBuffer argBuf = (TWIBuffer) { (byte*) &parameters, sizeof(uint8_t) }; Point result; TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(Point) }; twi_rpc(bgx1, CMD_VLine, argBuf, resBuf); WAIT_FOR_TWI(); return result; }
Point bgx1_box_base(Rect parameters) { TWIBuffer argBuf = (TWIBuffer) { (byte*) &parameters, sizeof(Rect) }; Point result; TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(Point) }; twi_rpc(bgx1, CMD_Box, argBuf, resBuf); WAIT_FOR_TWI(); return result; }
Point bgx1_drawBitmap_base(BitmapArguments *parameters, uint16_t argSize) { TWIBuffer argBuf = (TWIBuffer) { (byte*) parameters, argSize }; Point result; TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(Point) }; twi_rpc(bgx1, CMD_Bitmap, argBuf, resBuf); WAIT_FOR_TWI(); return result; }
Point bgx1_embeddedImage(uint8_t parameters) { TWIBuffer argBuf = (TWIBuffer) { (byte*) &parameters, sizeof(uint8_t) }; Point result; TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(Point) }; twi_rpc(bgx1, CMD_EmbeddedImage, argBuf, resBuf); WAIT_FOR_TWI(); return result; }
Point bgx1_lineTo_base(Point parameters) { TWIBuffer argBuf = (TWIBuffer) { (byte*) &parameters, sizeof(Point) }; Point result; TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(Point) }; twi_rpc(bgx1, CMD_LineTo, argBuf, resBuf); WAIT_FOR_TWI(); return result; }


void bgx1_termClear() { TWIBuffer argBuf = (TWIBuffer) { (byte*) ((void *)0), 0 }; twi_rpc_pseudo_oneway(bgx1, CMD_TermClear, argBuf); WAIT_FOR_TWI(); }
void bgx1_termGoto_base(Point parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(Point) }; twi_rpc_pseudo_oneway(bgx1, CMD_TermGoto, buf); WAIT_FOR_TWI(); }
void bgx1_termScroll(int8_t parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(int8_t) }; twi_rpc_pseudo_oneway(bgx1, CMD_TermScroll, buf); WAIT_FOR_TWI(); }


byte bgx1_termPrint_base(StringArg *parameters, uint16_t argSize) { TWIBuffer argBuf = (TWIBuffer) { (byte*) parameters, argSize }; byte result; TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(byte) }; twi_rpc(bgx1, CMD_TermPrint, argBuf, resBuf); WAIT_FOR_TWI(); return result; }

typedef struct {
 uint8_t ddr;
 uint8_t port;
} SyncPortArgs, *PSyncPortArgs;


uint8_t bgx1_syncPort_base(SyncPortArgs parameters) { TWIBuffer argBuf = (TWIBuffer) { (byte*) &parameters, sizeof(SyncPortArgs) }; uint8_t result; TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(uint8_t) }; twi_rpc(bgx1, CMD_SyncPort, argBuf, resBuf); WAIT_FOR_TWI(); return result; }
uint16_t bgx1_getAnalog_base(uint8_t parameters) { TWIBuffer argBuf = (TWIBuffer) { (byte*) &parameters, sizeof(uint8_t) }; uint16_t result; TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(uint16_t) }; twi_rpc(bgx1, CMD_GetAnalog, argBuf, resBuf); WAIT_FOR_TWI(); return result; }
uint8_t bgx1_syncInterface(uint8_t parameters) { TWIBuffer argBuf = (TWIBuffer) { (byte*) &parameters, sizeof(uint8_t) }; uint8_t result; TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(uint8_t) }; twi_rpc(bgx1, CMD_SyncInterface, argBuf, resBuf); WAIT_FOR_TWI(); return result; }
void bgx1_setIllumination(uint16_t parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(uint16_t) }; twi_rpc_pseudo_oneway(bgx1, CMD_SetIllumination, buf); WAIT_FOR_TWI(); }
# 123 ".././shared/../shared/twi_bgx1.h"
Point bgx1_print(char *argument);
Point bgx1_print_P(const prog_char * argument);
uint8_t bgx1_textWidth(char *argument);
uint8_t bgx1_textWidth_P(const prog_char * argument);
byte bgx1_termPrint(char *argument);
byte bgx1_termPrint_P(const prog_char * argument);


Point bgx1_drawTile(uint8_t width, uint8_t height, const uint8_t *bitmap);
Point bgx1_drawTile_P(uint8_t width, uint8_t height, const prog_char * bitmap);



Point bgx1_drawBitmap(uint8_t width, uint8_t height, const uint8_t *bitmap);
Point bgx1_drawBitmap_P(uint8_t width, uint8_t height, const prog_char * bitmap);

void bgx1_move(uint8_t x, uint8_t y);
Point bgx1_box(uint8_t width, uint8_t height);
void bgx1_lineTo(uint8_t x, uint8_t y);
void bgx1_termGoto(uint8_t x, uint8_t y);
uint8_t bgx1_syncPort(uint8_t ddr, uint8_t port);

uint16_t bgx1_getAnalog(uint8_t index);
uint16_t bgx1_getVersion();



BOOL bgx1_initialized();
# 16 ".././shared/../kernel.h" 2
# 1 ".././shared/../twi_tank_IO.h" 1



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
# 5 ".././shared/../twi_tank_IO.h" 2



TWIDevice tank_IO = { (11 << 2) };
# 19 ".././shared/../twi_tank_IO.h"
void tankIO_reset() { TWIBuffer argBuf = (TWIBuffer) { (byte*) ((void *)0), 0 }; twi_rpc_oneway(tank_IO, TANK_IO_reset, argBuf); WAIT_FOR_TWI(); }
uint8_t tankIO_isInitialized() { uint8_t result; TWIBuffer argBuf = (TWIBuffer) { (byte*) ((void *)0), 0 }; TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(uint8_t) }; twi_rpc(tank_IO, TANK_IO_isInitialized, argBuf, resBuf); WAIT_FOR_TWI(); return result; }

uint8_t tankIO_buttonStatus() { uint8_t result; TWIBuffer argBuf = (TWIBuffer) { (byte*) ((void *)0), 0 }; TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(uint8_t) }; twi_rpc(tank_IO, TANK_IO_buttonStatus, argBuf, resBuf); WAIT_FOR_TWI(); return result; }
uint8_t tankIO_pressedButtons() { uint8_t result; TWIBuffer argBuf = (TWIBuffer) { (byte*) ((void *)0), 0 }; TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(uint8_t) }; twi_rpc(tank_IO, TANK_IO_pressedButtons, argBuf, resBuf); WAIT_FOR_TWI(); return result; }

void tankIO_enableLed(SingleLed parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(SingleLed) }; twi_rpc_oneway(tank_IO, TANK_IO_enableLed, buf); WAIT_FOR_TWI(); }
void tankIO_disableLed(SingleLed parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(SingleLed) }; twi_rpc_oneway(tank_IO, TANK_IO_disableLed, buf); WAIT_FOR_TWI(); }
void tankIO_setLed(SingleLed parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(SingleLed) }; twi_rpc_oneway(tank_IO, TANK_IO_setLed, buf); WAIT_FOR_TWI(); }

void tankIO_enableLeds(TankIoLeds parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(TankIoLeds) }; twi_rpc_oneway(tank_IO, TANK_IO_enableLeds, buf); WAIT_FOR_TWI(); }
void tankIO_disableLeds(TankIoLeds parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(TankIoLeds) }; twi_rpc_oneway(tank_IO, TANK_IO_disableLeds, buf); WAIT_FOR_TWI(); }
void tankIO_setLeds(MaskedLeds parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(MaskedLeds) }; twi_rpc_oneway(tank_IO, TANK_IO_setLeds, buf); WAIT_FOR_TWI(); }

void tankIO_blinkLed(BlinkLedParam parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(BlinkLedParam) }; twi_rpc_oneway(tank_IO, TANK_IO_blinkLed, buf); WAIT_FOR_TWI(); }
void tankIO_blinkLeds(BlinkLedsParam parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(BlinkLedsParam) }; twi_rpc_oneway(tank_IO, TANK_IO_blinkLeds, buf); WAIT_FOR_TWI(); }
void tankIO_blinkAllLeds(BlinkAllLedsParam parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(BlinkAllLedsParam) }; twi_rpc_oneway(tank_IO, TANK_IO_blinkAllLeds, buf); WAIT_FOR_TWI(); }

void tankIO_flashLed(FlashLedParam parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(FlashLedParam) }; twi_rpc_oneway(tank_IO, TANK_IO_flashLed, buf); WAIT_FOR_TWI(); }
void tankIO_flashLeds(FlashLedsParam parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(FlashLedsParam) }; twi_rpc_oneway(tank_IO, TANK_IO_flashLeds, buf); WAIT_FOR_TWI(); }
void tankIO_flashAllLeds(FlashAllLedsParam parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(FlashAllLedsParam) }; twi_rpc_oneway(tank_IO, TANK_IO_flashAllLeds, buf); WAIT_FOR_TWI(); }

void tankIO_blinkByte(BlinkByteParam parameters) { TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(BlinkByteParam) }; twi_rpc_oneway(tank_IO, TANK_IO_blinkByte, buf); WAIT_FOR_TWI(); }



 void tankIO_wait() {
  while (!tankIO_isInitialized() != 214) {
   _delay_ms(20);
  }
 }
# 17 ".././shared/../kernel.h" 2
# 14 ".././shared/base_before.kernel.h" 2
# 27 ".././shared/base_before.kernel.h"
# 1 ".././shared/timer.kernel.h" 1






# 1 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.kernel.h" 1
# 11 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.kernel.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/../kernel_init.h" 1
# 12 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.kernel.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.h" 1
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
# 1 ".././tank_motor.kernel.h" 1
# 13 ".././tank_motor.kernel.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/motor.kernel.h" 1
# 14 "..\\..\\AntonAvrLib/kernel/devices/motor.kernel.h"
void initMotor(PMotor motor) {


 setTimerClockSelect(motor->pwmTimer->timer, prescale_1);
 setWaveformGenerationMode(motor->pwmTimer->timer, pwm_phase_correct);

 setCompareMatchOutputMode(motor->pwmTimer, clear_on_match);
 setTimerCompareValue(motor->pwmTimer, motor->minValue);

 setPinOutput(motor->direction);
 if (!(motor->flags & (1 << 3)))
  setPinOne(motor->direction);
}

void initMotor2Pins(PMotor2Pins motor) {
 initMotor((PMotor) motor);
 setPinOutput(motor->direction2);
 setPinZero(motor->motor.direction);
 setPinZero(motor->direction2);
}
# 14 ".././tank_motor.kernel.h" 2
# 1 ".././tank_motor.h" 1
# 15 ".././tank_motor.kernel.h" 2

void init_tank_motors() {
# 25 ".././tank_motor.kernel.h"
 Timer1->flags |= (1 << 5);
 LeftMotorBase_ = (Motor2Pins) { { ((1 << 1) | (1 << 4)) | (1 << 3), PinC4, Timer1B }, PinC5 }; initMotor2Pins(&LeftMotorBase_);
 RightMotorBase_ = (Motor2Pins) { { ((1 << 1) | (1 << 4)) | (1 << 3), PinC2, Timer1A }, PinC3 }; initMotor2Pins(&RightMotorBase_);

 LeftMotorBase->minValue = 26214;
 RightMotorBase->minValue = 26214;
 LeftMotorBase->maxValue = 58981;
 RightMotorBase->maxValue = 58981;
}
void init_tank_motors_kernel_init() __attribute__((naked, section(".init8"))); void init_tank_motors_kernel_init() { init_tank_motors(); }
# 12 ".././kernel.c" 2

# 1 ".././shared/motor_smooth.kernel.h" 1







# 1 "..\\..\\AntonAvrLib/kernel/devices/motor_smooth_pair.kernel.h" 1
# 18 "..\\..\\AntonAvrLib/kernel/devices/motor_smooth_pair.kernel.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/motor_smooth.kernel.h" 1
# 11 "..\\..\\AntonAvrLib/kernel/devices/motor_smooth.kernel.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/motor.kernel.h" 1
# 12 "..\\..\\AntonAvrLib/kernel/devices/motor_smooth.kernel.h" 2


void motor_smooth_start_tick(PSmoothMotor motor);
void motor_smooth_stop_tick(PSmoothMotor motor);


void motor_smooth_tick(PSmoothMotor motor);

void initSmoothMotor(PSmoothMotor motor) {
 motor->mutex = mutex_create();
}
# 19 "..\\..\\AntonAvrLib/kernel/devices/motor_smooth_pair.kernel.h" 2

void smooth_enable_tick(BOOL enabled);

BOOL motor_A_running = FALSE;
BOOL motor_B_running = FALSE;

static void control_smooth_motor(PSmoothMotor motor, BOOL running) {
 if (motor == LeftMotor) {
  motor_A_running = running;
 } else if (motor == RightMotor) {
  motor_B_running = running;
 } else {
  return;
 }
 smooth_enable_tick(motor_A_running || motor_B_running);
}

void motor_smooth_start_tick(PSmoothMotor motor) {
 control_smooth_motor(motor, TRUE);
}

void motor_smooth_stop_tick(PSmoothMotor motor) {
 control_smooth_motor(motor, FALSE);
}

void smooth_motor_tick() {
 if (motor_A_running) motor_smooth_tick(LeftMotor);
 if (motor_B_running) motor_smooth_tick(RightMotor);
}
# 9 ".././shared/motor_smooth.kernel.h" 2

void smooth_enable_tick(BOOL enabled) {
 if (enabled) enableTimerInterrupt(Timer3B);
 else disableTimerInterrupt(Timer3B);
}

void __vector_33 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_33 (void) {
 smooth_motor_tick();
}

void init_smooth_motors() {




 LeftMotor_ = (SmoothMotor) { LeftMotorBase, 0, FORWARD, 0, FORWARD, FALSE, 35, 0 }; initSmoothMotor(LeftMotor);
 RightMotor_ = (SmoothMotor) { RightMotorBase, 0, FORWARD, 0, FORWARD, FALSE, 35, 0 }; initSmoothMotor(RightMotor);
}
void init_smooth_motors_kernel_init() __attribute__((naked, section(".init8"))); void init_smooth_motors_kernel_init() { init_smooth_motors(); }
# 14 ".././kernel.c" 2


# 1 "..\\..\\AntonAvrLib/kernel/TWI/twi_rpc.kernel.h" 1



# 1 "..\\..\\AntonAvrLib/kernel/TWI/twi_raw.kernel.h" 1
# 14 "..\\..\\AntonAvrLib/kernel/TWI/twi_raw.kernel.h"
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/twi.h" 1 3
# 15 "..\\..\\AntonAvrLib/kernel/TWI/twi_raw.kernel.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1 3
# 42 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 3
static __inline__ uint8_t __iSeiRetVal(void)
{
    __asm__ __volatile__ ("sei" ::: "memory");
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    __asm__ __volatile__ ("cli" ::: "memory");
    return 1;
}

static __inline__ void __iSeiParam(const uint8_t *__s)
{
    __asm__ __volatile__ ("sei" ::: "memory");
    __asm__ volatile ("" ::: "memory");
    (void)__s;
}

static __inline__ void __iCliParam(const uint8_t *__s)
{
    __asm__ __volatile__ ("cli" ::: "memory");
    __asm__ volatile ("" ::: "memory");
    (void)__s;
}

static __inline__ void __iRestore(const uint8_t *__s)
{
    (*(volatile uint8_t *)((0x3F) + 0x20)) = *__s;
    __asm__ volatile ("" ::: "memory");
}
# 16 "..\\..\\AntonAvrLib/kernel/TWI/twi_raw.kernel.h" 2
# 31 "..\\..\\AntonAvrLib/kernel/TWI/twi_raw.kernel.h"
TWIDevice TWIBroadcast = { 0 };
# 40 "..\\..\\AntonAvrLib/kernel/TWI/twi_raw.kernel.h"
 TWIBuffer twi_handleMasterRequest() { return (TWIBuffer) { 0 }; }
 void twi_handleMasterTransmission(TWIBuffer twi_buffer) {}




void twi_unexpectedCondition() __attribute__((weak));
void twi_unexpectedCondition() {

}
# 58 "..\\..\\AntonAvrLib/kernel/TWI/twi_raw.kernel.h"
volatile BOOL twi_running;
TWIDevice twi_address;
uint16_t alreadyHandled;
TWIBuffer twi_buffer;
TWIError twi_error;
TWIOperation furtherOperations[3];
int nextTwiOperation;

void init_twi() {
 (*(volatile uint8_t *)(0xBC)) = (1 << (0)) | (1 << (2));
 (*(volatile uint8_t *)(0xBB)) = 0xff;
 (*(volatile uint8_t *)(0xB8)) = 17;
 (*(volatile uint8_t *)(0xB9)) = 0;







}
void init_twi_kernel_init() __attribute__((naked, section(".init8"))); void init_twi_kernel_init() { init_twi(); }







static inline void twi_send(uint8_t data) {

 (*(volatile uint8_t *)(0xBB)) = data;
 (*(volatile uint8_t *)(0xBC)) = (1 << (2)) | (1 << (7)) | (1 << (0));
}

static inline void twi_stop() {




  (*(volatile uint8_t *)(0xBC)) = (1 << (2)) | (1 << (7)) | (1 << (0)) | (1 << (4));

 twi_running = FALSE;
}

BOOL next_twi_operation() {
 TWIOperation current;

 if (nextTwiOperation >= 3) return FALSE;
 do {
  current = furtherOperations[nextTwiOperation++];
  if (current.operationMode != TWI_IllegalOperation) break;
 } while (nextTwiOperation < 3);
 if (nextTwiOperation >= 3) return FALSE;



 if (current.operationMode == TWI_Send) {
  twi_address.address = current.device.address & ~(1 << (0));
 } else if (current.operationMode == TWI_Receive) {
  twi_address.address = current.device.address | (1 << (0));
 }
 alreadyHandled = 0;
 twi_buffer = current.buffer;
 return TRUE;
}

static inline void twi_stop_or_next() {
 if (!next_twi_operation()) {
  twi_stop();
 } else {

  (*(volatile uint8_t *)(0xBC)) = (1 << (2)) | (1 << (7)) | (1 << (0)) | (1 << (5));
 }
}

static inline void twi_end() {




  (*(volatile uint8_t *)(0xBC)) = (1 << (2)) | (1 << (7)) | (1 << (0));

 twi_running = FALSE;
}

void twi_start_master_operation() {
 twi_error = TWI_No_Error;
 twi_running = TRUE;
 nextTwiOperation = 0;
 if (next_twi_operation()) {
  (*(volatile uint8_t *)(0xBC)) = (1 << (2)) | (1 << (7)) | (1 << (0)) | (1 << (5));
 }
}

static inline void twi_ack_receive() {



 if (alreadyHandled + 1 < twi_buffer.size) {
  (*(volatile uint8_t *)(0xBC)) = (1 << (2)) | (1 << (7)) | (1 << (0)) | (1 << (6));
 } else {
  (*(volatile uint8_t *)(0xBC)) = (1 << (2)) | (1 << (7)) | (1 << (0));
 }
}

static inline void twi_read_byte() {






 if (alreadyHandled < twi_buffer.size)
  twi_buffer.data[alreadyHandled++] = (*(volatile uint8_t *)(0xBB));
}

void __vector_26 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_26 (void) {


 switch(((*(volatile uint8_t *)(0xB9)) & ((1 << (7))|(1 << (6))|(1 << (5))|(1 << (4))| (1 << (3))))) {

  case 0x08:
  case 0x10:

   twi_send(twi_address.address);
   break;
  case 0x38:
   twi_error = TWI_Arbitration_Lost;
   twi_end();
   break;

  case 0x28:
  case 0x18:


   if (alreadyHandled < twi_buffer.size) {
    twi_send(twi_buffer.data[alreadyHandled++]);
   } else {
    twi_stop_or_next();
   }
   break;
  case 0x20:
   twi_error = TWI_SlaveAddress_NoAck;
   twi_stop();
   break;
  case 0x30:
   twi_error = TWI_Master_TooMuchDataTransmitted;
   twi_stop();
   break;

  case 0x40:
   twi_ack_receive();
   break;
  case 0x50:
   twi_read_byte();
   twi_ack_receive();
   break;
  case 0x48:
   twi_error = TWI_SlaveAddress_NoAck;
   twi_stop();
   break;
  case 0x58:


   twi_read_byte();
   twi_stop_or_next();
   break;
# 274 "..\\..\\AntonAvrLib/kernel/TWI/twi_raw.kernel.h"
  case 0xF8:
   twi_error = TWI_No_Info_Interrupt;
   twi_unexpectedCondition();
   break;
  case 0x00:
   twi_error = TWI_Bus_Error;
   twi_unexpectedCondition();
   break;
  default:
   twi_error = TWI_Illegal_Status;
   twi_unexpectedCondition();
   break;
 }
}

void twiSend(TWIDevice targetDevice, TWIBuffer data) {
 TWIOperation op[1] = { (TWIOperation) { data, targetDevice, TWI_Send} };
 twiMultipleOperations(1, op);
}

void twiReceive(TWIDevice targetDevice, TWIBuffer receiveBuffer) {
 TWIOperation op[1] = { (TWIOperation) { receiveBuffer, targetDevice, TWI_Receive} };
 twiMultipleOperations(1, op);
}

void twiSendReceive(TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer receiveBuffer) {
 TWIOperation ops[2] = {
  (TWIOperation) { sendData, targetDevice, TWI_Send },
  (TWIOperation) { receiveBuffer, targetDevice, TWI_Receive }
 };
 twiMultipleOperations(2, ops);
}

void twiMultipleOperations(int count, TWIOperation *operations) {
 int i = 0;
 for (; i < count && i < 3; i++) {
  furtherOperations[i] = operations[i];
 }
 for (; i < 3; i++) {
  furtherOperations[i].operationMode = TWI_IllegalOperation;
 }
 twi_start_master_operation();
}

void WAIT_FOR_TWI() {
 while (1) {
  uint8_t still_running;
  for ( uint8_t sreg_save __attribute__((__cleanup__(__iSeiParam))) = 0, __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) {
   still_running = twi_running;
  }
  if (!still_running) {





   break;
  }
 }
}

void turn_word(uint16_t *word) {
 uint8_t temp = ((uint8_t*) word)[0];
 ((uint8_t*) word)[0] = ((uint8_t*) word)[1];
 ((uint8_t*) word)[1] = temp;
}
# 5 "..\\..\\AntonAvrLib/kernel/TWI/twi_rpc.kernel.h" 2

# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/string.h" 1 3
# 45 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/string.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/include/stddef.h" 1 3 4
# 46 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/string.h" 2 3
# 111 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/string.h" 3
extern int ffs (int __val) __attribute__((__const__));
extern int ffsl (long __val) __attribute__((__const__));
extern int ffsll (long long __val) __attribute__((__const__));
extern void *memccpy(void *, const void *, int, size_t);
extern void *memchr(const void *, int, size_t) __attribute__((__pure__));
extern int memcmp(const void *, const void *, size_t) __attribute__((__pure__));
extern void *memcpy(void *, const void *, size_t);
extern void *memmem(const void *, size_t, const void *, size_t) __attribute__((__pure__));
extern void *memmove(void *, const void *, size_t);
extern void *memrchr(const void *, int, size_t) __attribute__((__pure__));
extern void *memset(void *, int, size_t);
extern char *strcat(char *, const char *);
extern char *strchr(const char *, int) __attribute__((__pure__));
extern char *strchrnul(const char *, int) __attribute__((__pure__));
extern int strcmp(const char *, const char *) __attribute__((__pure__));
extern char *strcpy(char *, const char *);
extern int strcasecmp(const char *, const char *) __attribute__((__pure__));
extern char *strcasestr(const char *, const char *) __attribute__((__pure__));
extern size_t strcspn(const char *__s, const char *__reject) __attribute__((__pure__));
extern char *strdup(const char *s1);
extern size_t strlcat(char *, const char *, size_t);
extern size_t strlcpy(char *, const char *, size_t);
extern size_t strlen(const char *) __attribute__((__pure__));
extern char *strlwr(char *);
extern char *strncat(char *, const char *, size_t);
extern int strncmp(const char *, const char *, size_t) __attribute__((__pure__));
extern char *strncpy(char *, const char *, size_t);
extern int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));
extern size_t strnlen(const char *, size_t) __attribute__((__pure__));
extern char *strpbrk(const char *__s, const char *__accept) __attribute__((__pure__));
extern char *strrchr(const char *, int) __attribute__((__pure__));
extern char *strrev(char *);
extern char *strsep(char **, const char *);
extern size_t strspn(const char *__s, const char *__accept) __attribute__((__pure__));
extern char *strstr(const char *, const char *) __attribute__((__pure__));
extern char *strtok(char *, const char *);
extern char *strtok_r(char *, const char *, char **);
extern char *strupr(char *);
# 7 "..\\..\\AntonAvrLib/kernel/TWI/twi_rpc.kernel.h" 2





byte sendBufferData[255];
TWIBuffer sendBuffer = { sendBufferData, 255 };
# 43 "..\\..\\AntonAvrLib/kernel/TWI/twi_rpc.kernel.h"
static inline void fillSendBuffer(byte operation, TWIBuffer parameters) {
 sendBuffer.data[0] = operation;
 sendBuffer.size = parameters.size + 1;
 memcpy(sendBuffer.data + 1, parameters.data, parameters.size);
}

void twi_rpc_oneway(TWIDevice device, byte operation, TWIBuffer parameters) {
 fillSendBuffer(operation, parameters);
 twiSend(device, sendBuffer);
}

void twi_rpc_pseudo_oneway(TWIDevice device, byte operation, TWIBuffer parameters) {
 fillSendBuffer(operation, parameters);
 twiSendReceive(device, sendBuffer, (TWIBuffer) { 0, 0 });
}

void twi_rpc(TWIDevice device, byte operation, TWIBuffer parameters, TWIBuffer resultBuffer) {
 fillSendBuffer(operation, parameters);
 twiSendReceive(device, sendBuffer, resultBuffer);
}
# 17 ".././kernel.c" 2
# 1 ".././shared/twi_bgx1.h" 1
# 18 ".././kernel.c" 2
# 1 ".././twi_tank_IO.h" 1
# 19 ".././kernel.c" 2
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
# 20 ".././kernel.c" 2
