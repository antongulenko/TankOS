# 1 ".././Main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 ".././Main.c"

# 1 "..\\..\\Kernel-Tank-MASTER/kernel.h" 1
# 11 "..\\..\\Kernel-Tank-MASTER/kernel.h"
# 1 "..\\..\\Kernel-Tank-MASTER/shared/kernel_base.h" 1
# 12 "..\\..\\Kernel-Tank-MASTER/shared/kernel_base.h"
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
# 13 "..\\..\\Kernel-Tank-MASTER/shared/kernel_base.h" 2
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
# 14 "..\\..\\Kernel-Tank-MASTER/shared/kernel_base.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/processes/mutex/mutex.h" 1
# 11 "..\\..\\AntonAvrLib/kernel/processes/mutex/mutex.h"
# 1 "..\\..\\AntonAvrLib/kernel/processes/mutex/../../../anton_std.h" 1
# 12 "..\\..\\AntonAvrLib/kernel/processes/mutex/mutex.h" 2


typedef struct Mutex__ { uint16_t unused; } *Mutex;

Mutex mutex_create();

void mutex_lock(Mutex mutex);
BOOL mutex_trylock(Mutex mutex);
void mutex_release(Mutex mutex);
# 15 "..\\..\\Kernel-Tank-MASTER/shared/kernel_base.h" 2
# 1 "..\\..\\AntonAvrLib/anton_std.h" 1
# 16 "..\\..\\Kernel-Tank-MASTER/shared/kernel_base.h" 2
# 12 "..\\..\\Kernel-Tank-MASTER/kernel.h" 2
# 1 "..\\..\\Kernel-Tank-MASTER/tank_motor.h" 1
# 11 "..\\..\\Kernel-Tank-MASTER/tank_motor.h"
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
extern const PPort PortA; extern const PPin PinA0; extern const PPin PinA1; extern const PPin PinA2; extern const PPin PinA3; extern const PPin PinA4; extern const PPin PinA5; extern const PPin PinA6; extern const PPin PinA7;
extern const PPort PortB; extern const PPin PinB0; extern const PPin PinB1; extern const PPin PinB2; extern const PPin PinB3; extern const PPin PinB4; extern const PPin PinB5; extern const PPin PinB6; extern const PPin PinB7;
extern const PPort PortC; extern const PPin PinC0; extern const PPin PinC1; extern const PPin PinC2; extern const PPin PinC3; extern const PPin PinC4; extern const PPin PinC5; extern const PPin PinC6; extern const PPin PinC7;
extern const PPort PortD; extern const PPin PinD0; extern const PPin PinD1; extern const PPin PinD2; extern const PPin PinD3; extern const PPin PinD4; extern const PPin PinD5; extern const PPin PinD6; extern const PPin PinD7;
# 13 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.h" 2

extern const PTimerPair Timer0;
extern const PTimerPair Timer1;
extern const PTimerPair Timer2;
extern const PTimerPair Timer3;

extern const PTimer Timer0A;
extern const PTimer Timer0B;
extern const PTimer Timer1A;
extern const PTimer Timer1B;
extern const PTimer Timer2A;
extern const PTimer Timer2B;
extern const PTimer Timer3A;
extern const PTimer Timer3B;
# 12 "..\\..\\Kernel-Tank-MASTER/tank_motor.h" 2
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
# 13 "..\\..\\Kernel-Tank-MASTER/tank_motor.h" 2
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
# 14 "..\\..\\Kernel-Tank-MASTER/tank_motor.h" 2

extern const PMotor LeftMotorBase;
extern const PMotor RightMotorBase;
extern PSmoothMotor LeftMotor;
extern PSmoothMotor RightMotor;
# 13 "..\\..\\Kernel-Tank-MASTER/kernel.h" 2


# 1 "..\\..\\Kernel-Tank-MASTER/shared/twi_bgx1.h" 1



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
# 5 "..\\..\\Kernel-Tank-MASTER/shared/twi_bgx1.h" 2



extern TWIDevice bgx1;






# 1 "..\\..\\AntonAvrLib/kernel/TWI/twi_rpc_client.h" 1






# 1 "..\\..\\AntonAvrLib/kernel/TWI/twi_rpc.h" 1



# 1 "..\\..\\AntonAvrLib/kernel/TWI/twi_raw.h" 1
# 5 "..\\..\\AntonAvrLib/kernel/TWI/twi_rpc.h" 2




void twi_rpc_oneway(TWIDevice device, byte operation, TWIBuffer parameters);
void twi_rpc(TWIDevice device, byte operation, TWIBuffer parameters, TWIBuffer resultBuffer);




void twi_rpc_pseudo_oneway(TWIDevice device, byte operation, TWIBuffer parameters);
# 8 "..\\..\\AntonAvrLib/kernel/TWI/twi_rpc_client.h" 2
# 16 "..\\..\\Kernel-Tank-MASTER/shared/twi_bgx1.h" 2
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
# 17 "..\\..\\Kernel-Tank-MASTER/shared/twi_bgx1.h" 2




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


void bgx1_reset();
uint16_t bgx1_getVersion_base();
uint8_t bgx1_getStatus();
void bgx1_setStatus(uint8_t parameters);

typedef struct {
 uint8_t x;
 uint8_t y;
} Point, *PPoint, Rect, *PRect;

typedef struct {
 uint8_t width;
 uint8_t height;


} BitmapArguments, *PBitmapArguments;


typedef char StringArg;


void bgx1_move_base(Point parameters);
void bgx1_mode(uint8_t parameters);
void bgx1_fillAll(uint8_t parameters);
Point bgx1_print_base(StringArg *parameters, uint16_t argSize);
uint8_t bgx1_textWidth_base(StringArg *parameters, uint16_t argSize);
void bgx1_selectFont(uint8_t parameters);
Point bgx1_hLine(uint8_t parameters);
Point bgx1_vLine(uint8_t parameters);
Point bgx1_box_base(Rect parameters);
Point bgx1_drawBitmap_base(BitmapArguments *parameters, uint16_t argSize);
Point bgx1_embeddedImage(uint8_t parameters);
Point bgx1_lineTo_base(Point parameters);


void bgx1_termClear();
void bgx1_termGoto_base(Point parameters);
void bgx1_termScroll(int8_t parameters);


byte bgx1_termPrint_base(StringArg *parameters, uint16_t argSize);

typedef struct {
 uint8_t ddr;
 uint8_t port;
} SyncPortArgs, *PSyncPortArgs;


uint8_t bgx1_syncPort_base(SyncPortArgs parameters);
uint16_t bgx1_getAnalog_base(uint8_t parameters);
uint8_t bgx1_syncInterface(uint8_t parameters);
void bgx1_setIllumination(uint16_t parameters);
# 123 "..\\..\\Kernel-Tank-MASTER/shared/twi_bgx1.h"
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
# 16 "..\\..\\Kernel-Tank-MASTER/kernel.h" 2
# 1 "..\\..\\Kernel-Tank-MASTER/twi_tank_IO.h" 1



# 1 "..\\..\\Kernel-Tank-MASTER/shared/tank_IO_protocol.h" 1
# 10 "..\\..\\Kernel-Tank-MASTER/shared/tank_IO_protocol.h"
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
# 5 "..\\..\\Kernel-Tank-MASTER/twi_tank_IO.h" 2





extern TWIDevice tank_IO;
# 19 "..\\..\\Kernel-Tank-MASTER/twi_tank_IO.h"
void tankIO_reset();
uint8_t tankIO_isInitialized();

uint8_t tankIO_buttonStatus();
uint8_t tankIO_pressedButtons();

void tankIO_enableLed(SingleLed parameters);
void tankIO_disableLed(SingleLed parameters);
void tankIO_setLed(SingleLed parameters);

void tankIO_enableLeds(TankIoLeds parameters);
void tankIO_disableLeds(TankIoLeds parameters);
void tankIO_setLeds(MaskedLeds parameters);

void tankIO_blinkLed(BlinkLedParam parameters);
void tankIO_blinkLeds(BlinkLedsParam parameters);
void tankIO_blinkAllLeds(BlinkAllLedsParam parameters);

void tankIO_flashLed(FlashLedParam parameters);
void tankIO_flashLeds(FlashLedsParam parameters);
void tankIO_flashAllLeds(FlashAllLedsParam parameters);

void tankIO_blinkByte(BlinkByteParam parameters);
# 52 "..\\..\\Kernel-Tank-MASTER/twi_tank_IO.h"
 void tankIO_wait();
# 17 "..\\..\\Kernel-Tank-MASTER/kernel.h" 2
# 3 ".././Main.c" 2


# 1 ".././main/master_motors_changing.c.h" 1



void regulateBoth() {
 while (1) {
  regulateSpeed(RightMotor, 0xFFFF, FORWARD);
  regulateSpeed(LeftMotor, 0xFFFF, BACKWARD);
  _delay_ms(3000);
  regulateStopMotor(RightMotor);
  regulateStopMotor(LeftMotor);
  _delay_ms(3000);
  regulateSpeed(RightMotor, 0xFFFF, BACKWARD);
  regulateSpeed(LeftMotor, 0xFFFF, FORWARD);
  _delay_ms(3000);
 }
}

void regulateOneAtATime() {
 while (1) {
  regulateSpeed(RightMotor, 0xFFFF, FORWARD);
  _delay_ms(3000);
  regulateStopMotor(RightMotor);
  _delay_ms(3000);
  regulateSpeed(RightMotor, 0xFFFF, BACKWARD);
  _delay_ms(3000);
  regulateStopMotor(RightMotor);
  _delay_ms(3000);

  regulateSpeed(LeftMotor, 0xFFFF, FORWARD);
  _delay_ms(3000);
  regulateStopMotor(LeftMotor);
  _delay_ms(3000);
  regulateSpeed(LeftMotor, 0xFFFF, BACKWARD);
  _delay_ms(3000);
  regulateStopMotor(LeftMotor);
  _delay_ms(3000);
 }
}

void bothForward() {
 while (1) {
  setSpeedForward(LeftMotorBase, 0xFFFF);
  setSpeedForward(RightMotorBase, 0xFFFF);
  _delay_ms(3000);
  setSpeedBackward(LeftMotorBase, 0xFFFF);
  setSpeedBackward(RightMotorBase, 0xFFFF);
 }
}

int main() {

 regulateBoth();




}
# 6 ".././Main.c" 2
