# 1 "../main/LedOperations.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../main/LedOperations.c"

# 1 "../main/LedOperations.h" 1



# 1 "..\\..\\Kernel-Tank-IO/kernel.h" 1
# 13 "..\\..\\Kernel-Tank-IO/kernel.h"
# 1 "..\\..\\Kernel-Tank-IO/shared/kernel_base.h" 1
# 12 "..\\..\\Kernel-Tank-IO/shared/kernel_base.h"
# 1 "..\\..\\AntonAvrLib/kernel/millisecond_clock.h" 1
# 11 "..\\..\\AntonAvrLib/kernel/millisecond_clock.h"
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
# 12 "..\\..\\AntonAvrLib/kernel/millisecond_clock.h" 2






 extern volatile uint32_t milliseconds_running;



uint32_t get_milliseconds_running();
# 13 "..\\..\\Kernel-Tank-IO/shared/kernel_base.h" 2
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
# 14 "..\\..\\Kernel-Tank-IO/shared/kernel_base.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/processes/mutex/mutex.h" 1
# 11 "..\\..\\AntonAvrLib/kernel/processes/mutex/mutex.h"
# 1 "..\\..\\AntonAvrLib/kernel/processes/mutex/../../../anton_std.h" 1
# 12 "..\\..\\AntonAvrLib/kernel/processes/mutex/mutex.h" 2


typedef struct Mutex__ { uint16_t unused; } *Mutex;

Mutex mutex_create();

void mutex_lock(Mutex mutex);
BOOL mutex_trylock(Mutex mutex);
void mutex_release(Mutex mutex);
# 15 "..\\..\\Kernel-Tank-IO/shared/kernel_base.h" 2
# 1 "..\\..\\AntonAvrLib/anton_std.h" 1
# 16 "..\\..\\Kernel-Tank-IO/shared/kernel_base.h" 2
# 14 "..\\..\\Kernel-Tank-IO/kernel.h" 2
# 1 "..\\..\\Kernel-Tank-IO/tank_button.h" 1
# 11 "..\\..\\Kernel-Tank-IO/tank_button.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/button.h" 1
# 19 "..\\..\\AntonAvrLib/kernel/devices/button.h"
typedef struct {
 uint8_t flags;
 PPin pin;
 uint8_t pinChangeInterruptNumber;
} Button, *PButton;


BOOL buttonStatus(PButton button);
# 12 "..\\..\\Kernel-Tank-IO/tank_button.h" 2
# 1 "..\\..\\Kernel-Tank-IO/shared/tank_IO_protocol.h" 1
# 10 "..\\..\\Kernel-Tank-IO/shared/tank_IO_protocol.h"
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
# 13 "..\\..\\Kernel-Tank-IO/tank_button.h" 2

extern const PButton Button1;
extern const PButton Button2;
extern const PButton Button3;
extern const PButton Button4;
extern const PButton ButtonSwitch;

uint8_t buttonStatusMask();



void updateButtonStatus();



uint8_t pressedButtons();
# 15 "..\\..\\Kernel-Tank-IO/kernel.h" 2
# 1 "..\\..\\Kernel-Tank-IO/tank_led.h" 1
# 11 "..\\..\\Kernel-Tank-IO/tank_led.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/led.h" 1
# 12 "..\\..\\Kernel-Tank-IO/tank_led.h" 2

extern const PLed White1;
extern const PLed White2;
extern const PLed White3;
extern const PLed White4;
extern const PLed White5;

extern const PLed Red1;
extern const PLed Red2;
extern const PLed Red3;
extern const PLed Red4;
extern const PLed Red5;

extern const PLed Green1;
extern const PLed Green2;
extern const PLed Green3;
extern const PLed Yellow1;
extern const PLed Yellow2;

extern const PLedGroup RedLeds;
extern const PLedGroup YellowLeds;
extern const PLedGroup WhiteLeds;
extern const PLedGroup GreenLeds;
extern const PLedGroup MiddleLeds;
extern const PLedGroup AllLeds;
# 16 "..\\..\\Kernel-Tank-IO/kernel.h" 2
# 5 "../main/LedOperations.h" 2


void led_operation_1();

void led_operation_tick();
void led_operation_off();
# 3 "../main/LedOperations.c" 2




volatile BOOL running = TRUE;
uint16_t leds_left;
uint16_t leds_middle;
uint16_t leds_right;

void led_operation_tick() {
 if (running) {
  leds_left=(leds_left<<1)|(leds_left>>7);
  leds_middle=(leds_middle<<1)|(leds_middle>>7);
  leds_right=(leds_right<<1)|(leds_right>>7);
  setLeds(RedLeds, ((leds_right*0x100)+0));
  setLeds(MiddleLeds, ((leds_middle*0x100)+0));
  setLeds(WhiteLeds, ((leds_left*0x100)+0));
 }
}

void led_operation_off() {
 running = FALSE;
}

void led_operation_1() {
 leds_right = 3;
 leds_middle = 3 << 1;
 leds_left = 3;
 running = TRUE;
}
