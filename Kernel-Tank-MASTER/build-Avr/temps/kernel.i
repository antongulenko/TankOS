# 1 "Kernel-Tank-MASTER/kernel.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "Kernel-Tank-MASTER/kernel.c"
# 9 "Kernel-Tank-MASTER/kernel.c"
# 1 "AntonAvrLib/kernel/reset_condition.kernel.h" 1
# 12 "AntonAvrLib/kernel/reset_condition.kernel.h"
# 1 "AntonAvrLib/kernel/kernel_init.h" 1
# 9 "AntonAvrLib/kernel/kernel_init.h"
# 1 "AntonAvrLib/kernel/../anton_std.h" 1
# 14 "AntonAvrLib/kernel/../anton_std.h"
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/include/stdint.h" 1 3 4


# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h" 1 3 4
# 121 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 142 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 159 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 213 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 273 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 4 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/include/stdint.h" 2 3 4
# 15 "AntonAvrLib/kernel/../anton_std.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 1 3
# 47 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/include/stddef.h" 1 3 4
# 212 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/include/stddef.h" 3 4
typedef unsigned int size_t;
# 324 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/include/stddef.h" 3 4
typedef int wchar_t;
# 48 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 2 3
# 68 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;


typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef int (*__compar_fn_t)(const void *, const void *);
# 106 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern void abort(void) __attribute__((__noreturn__));




extern int abs(int __i) __attribute__((__const__));
# 120 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern long labs(long __i) __attribute__((__const__));
# 143 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern void *bsearch(const void *__key, const void *__base, size_t __nmemb,
       size_t __size, int (*__compar)(const void *, const void *));







extern div_t div(int __num, int __denom) __asm__("__divmodhi4") __attribute__((__const__));





extern ldiv_t ldiv(long __num, long __denom) __asm__("__divmodsi4") __attribute__((__const__));
# 175 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern void qsort(void *__base, size_t __nmemb, size_t __size,
    __compar_fn_t __compar);
# 208 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern long strtol(const char *__nptr, char **__endptr, int __base);
# 242 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern unsigned long strtoul(const char *__nptr, char **__endptr, int __base);
# 254 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern long atol(const char *__s) __attribute__((__pure__));
# 266 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern int atoi(const char *__s) __attribute__((__pure__));
# 278 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern void exit(int __status) __attribute__((__noreturn__));
# 290 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern void *malloc(size_t __size) __attribute__((__malloc__));






extern void free(void *__ptr);




extern size_t __malloc_margin;




extern char *__malloc_heap_start;




extern char *__malloc_heap_end;






extern void *calloc(size_t __nele, size_t __size) __attribute__((__malloc__));
# 338 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern void *realloc(void *__ptr, size_t __size) __attribute__((__malloc__));

extern double strtod(const char *__nptr, char **__endptr);

extern double atof(const char *__nptr);
# 364 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern int rand(void);



extern void srand(unsigned int __seed);






extern int rand_r(unsigned long *__ctx);
# 406 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern char *itoa(int __val, char *__s, int __radix);
# 434 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern char *ltoa(long int __val, char *__s, int __radix);
# 460 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern char *utoa(unsigned int __val, char *__s, int __radix);
# 486 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern char *ultoa(unsigned long int __val, char *__s, int __radix);
# 504 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern long random(void);




extern void srandom(unsigned long __seed);







extern long random_r(unsigned long *__ctx);
# 563 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern char *dtostre(double __val, char *__s, unsigned char __prec,
       unsigned char __flags);
# 580 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern char *dtostrf(double __val, signed char __width,
                     unsigned char __prec, char *__s);
# 16 "AntonAvrLib/kernel/../anton_std.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 1 3
# 42 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/inttypes.h" 1 3
# 77 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 43 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 2 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/util/delay_basic.h" 1 3
# 40 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/util/delay_basic.h" 3
static inline void _delay_loop_1(uint8_t __count) __attribute__((always_inline));
static inline void _delay_loop_2(uint16_t __count) __attribute__((always_inline));
# 80 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/util/delay_basic.h" 3
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
# 102 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/util/delay_basic.h" 3
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
# 44 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 2 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 1 3
# 127 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern double modf(double __x, double *__iptr);



extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));





extern double cbrt(double __x) __attribute__((__const__));
# 194 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 234 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 298 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 333 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 376 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 392 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 426 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern double round (double __x) __attribute__((__const__));
# 439 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 453 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 45 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 2 3
# 84 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 3
static inline void _delay_us(double __us) __attribute__((always_inline));
static inline void _delay_ms(double __ms) __attribute__((always_inline));
# 141 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 3
void
_delay_ms(double __ms)
{
 uint16_t __ticks;
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((20000000) / 1e3) * __ms;
# 161 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 186 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 3
}
# 223 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 3
void
_delay_us(double __us)
{
 uint8_t __ticks;
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((20000000) / 1e6) * __us;
# 243 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 261 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 3
}
# 17 "AntonAvrLib/kernel/../anton_std.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 1 3
# 99 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/sfr_defs.h" 1 3
# 100 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 2 3
# 162 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/iom1284p.h" 1 3
# 163 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 2 3
# 590 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/portpins.h" 1 3
# 591 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 2 3

# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/common.h" 1 3
# 593 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 2 3

# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/version.h" 1 3
# 595 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 2 3


# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/fuse.h" 1 3
# 239 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 598 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 2 3


# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/lock.h" 1 3
# 601 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 2 3
# 18 "AntonAvrLib/kernel/../anton_std.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/interrupt.h" 1 3
# 19 "AntonAvrLib/kernel/../anton_std.h" 2

typedef enum {
 FALSE,
 TRUE
} BOOL;

typedef uint8_t byte;

asm ("__RAMPZ__ = 0x3b");
# 10 "AntonAvrLib/kernel/kernel_init.h" 2
# 13 "AntonAvrLib/kernel/reset_condition.kernel.h" 2
# 1 "AntonAvrLib/kernel/reset_condition.h" 1
# 11 "AntonAvrLib/kernel/reset_condition.h"
# 1 "AntonAvrLib/kernel/devices/led.h" 1
# 11 "AntonAvrLib/kernel/devices/led.h"
# 1 "AntonAvrLib/kernel/devices/port.h" 1
# 11 "AntonAvrLib/kernel/devices/port.h"
# 1 "AntonAvrLib/kernel/devices/../../anton_std.h" 1
# 12 "AntonAvrLib/kernel/devices/port.h" 2

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
# 12 "AntonAvrLib/kernel/devices/led.h" 2


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
# 12 "AntonAvrLib/kernel/reset_condition.h" 2


uint8_t getResetStatus();


uint16_t resetStatusBitmask();





void blink_reset_condition(PLedGroup leds);


void blink_reset_condition_byte(PLedGroup blinker, PLedGroup notifier);
# 14 "AntonAvrLib/kernel/reset_condition.kernel.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/wdt.h" 1 3
# 15 "AntonAvrLib/kernel/reset_condition.kernel.h" 2

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
# 10 "Kernel-Tank-MASTER/kernel.c" 2
# 1 "Kernel-Tank-MASTER/shared/base_before.kernel.h" 1
# 12 "Kernel-Tank-MASTER/shared/base_before.kernel.h"
# 1 "AntonAvrLib/kernel/kernel_init.h" 1
# 13 "Kernel-Tank-MASTER/shared/base_before.kernel.h" 2
# 1 "Kernel-Tank-MASTER/shared/../kernel.h" 1
# 11 "Kernel-Tank-MASTER/shared/../kernel.h"
# 1 "Kernel-Tank-MASTER/shared/../shared/kernel_base.h" 1
# 12 "Kernel-Tank-MASTER/shared/../shared/kernel_base.h"
# 1 "AntonAvrLib/kernel/millisecond_clock.h" 1
# 15 "AntonAvrLib/kernel/millisecond_clock.h"
 uint32_t volatile milliseconds_running = 0;






uint32_t get_milliseconds_running();
# 13 "Kernel-Tank-MASTER/shared/../shared/kernel_base.h" 2
# 1 "AntonAvrLib/kernel/reset_condition.h" 1
# 14 "Kernel-Tank-MASTER/shared/../shared/kernel_base.h" 2
# 1 "AntonAvrLib/kernel/processes/mutex/mutex.h" 1
# 11 "AntonAvrLib/kernel/processes/mutex/mutex.h"
# 1 "AntonAvrLib/kernel/processes/mutex/../../../anton_std.h" 1
# 12 "AntonAvrLib/kernel/processes/mutex/mutex.h" 2


typedef struct Mutex__ { uint16_t unused; } *Mutex;

Mutex mutex_create();

void mutex_lock(Mutex mutex);
BOOL mutex_trylock(Mutex mutex);
void mutex_release(Mutex mutex);
# 15 "Kernel-Tank-MASTER/shared/../shared/kernel_base.h" 2
# 1 "AntonAvrLib/kernel/devices/analog_m1284P.h" 1
# 11 "AntonAvrLib/kernel/devices/analog_m1284P.h"
# 1 "AntonAvrLib/kernel/devices/analog.h" 1
# 22 "AntonAvrLib/kernel/devices/analog.h"
typedef void (*AnalogCallbackFunction)(uint8_t value);

typedef struct {
 PPin pin;
 uint8_t pinNumber;
} AnalogInput, *PAnalogInput;






BOOL analogRead(PAnalogInput input, AnalogCallbackFunction callback);





BOOL analogReadLoop(PAnalogInput input, uint8_t *result);
# 12 "AntonAvrLib/kernel/devices/analog_m1284P.h" 2

AnalogInput Analog0_; const PAnalogInput Analog0 = &Analog0_;
AnalogInput Analog1_; const PAnalogInput Analog1 = &Analog1_;
AnalogInput Analog2_; const PAnalogInput Analog2 = &Analog2_;
AnalogInput Analog3_; const PAnalogInput Analog3 = &Analog3_;
AnalogInput Analog4_; const PAnalogInput Analog4 = &Analog4_;
AnalogInput Analog5_; const PAnalogInput Analog5 = &Analog5_;
AnalogInput Analog6_; const PAnalogInput Analog6 = &Analog6_;
AnalogInput Analog7_; const PAnalogInput Analog7 = &Analog7_;
# 16 "Kernel-Tank-MASTER/shared/../shared/kernel_base.h" 2
# 1 "AntonAvrLib/anton_std.h" 1
# 17 "Kernel-Tank-MASTER/shared/../shared/kernel_base.h" 2
# 12 "Kernel-Tank-MASTER/shared/../kernel.h" 2
# 1 "Kernel-Tank-MASTER/shared/../tank_motor.h" 1
# 11 "Kernel-Tank-MASTER/shared/../tank_motor.h"
# 1 "AntonAvrLib/kernel/devices/timer_m1284P.h" 1
# 11 "AntonAvrLib/kernel/devices/timer_m1284P.h"
# 1 "AntonAvrLib/kernel/devices/timer.h" 1
# 19 "AntonAvrLib/kernel/devices/timer.h"
typedef enum {
 wgm_normal,
 clear_timer_on_match,




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
# 61 "AntonAvrLib/kernel/devices/timer.h"
typedef enum {
 TIMER_RESOLUTION_full,
 TIMER_RESOLUTION_9bit,
 TIMER_RESOLUTION_10bit,
 TIMER_RESOLUTION_ocra
} TIMER_RESOLUTION;

typedef struct {
 uint8_t flags;
 TIMER_RESOLUTION resolution;
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
# 12 "AntonAvrLib/kernel/devices/timer_m1284P.h" 2
# 1 "AntonAvrLib/kernel/devices/port_m1284P.h" 1
# 13 "AntonAvrLib/kernel/devices/port_m1284P.h"
Port PortA_; const PPort PortA = &PortA_; Pin PinA0_; const PPin PinA0 = &PinA0_; Pin PinA1_; const PPin PinA1 = &PinA1_; Pin PinA2_; const PPin PinA2 = &PinA2_; Pin PinA3_; const PPin PinA3 = &PinA3_; Pin PinA4_; const PPin PinA4 = &PinA4_; Pin PinA5_; const PPin PinA5 = &PinA5_; Pin PinA6_; const PPin PinA6 = &PinA6_; Pin PinA7_; const PPin PinA7 = &PinA7_;
Port PortB_; const PPort PortB = &PortB_; Pin PinB0_; const PPin PinB0 = &PinB0_; Pin PinB1_; const PPin PinB1 = &PinB1_; Pin PinB2_; const PPin PinB2 = &PinB2_; Pin PinB3_; const PPin PinB3 = &PinB3_; Pin PinB4_; const PPin PinB4 = &PinB4_; Pin PinB5_; const PPin PinB5 = &PinB5_; Pin PinB6_; const PPin PinB6 = &PinB6_; Pin PinB7_; const PPin PinB7 = &PinB7_;
Port PortC_; const PPort PortC = &PortC_; Pin PinC0_; const PPin PinC0 = &PinC0_; Pin PinC1_; const PPin PinC1 = &PinC1_; Pin PinC2_; const PPin PinC2 = &PinC2_; Pin PinC3_; const PPin PinC3 = &PinC3_; Pin PinC4_; const PPin PinC4 = &PinC4_; Pin PinC5_; const PPin PinC5 = &PinC5_; Pin PinC6_; const PPin PinC6 = &PinC6_; Pin PinC7_; const PPin PinC7 = &PinC7_;
Port PortD_; const PPort PortD = &PortD_; Pin PinD0_; const PPin PinD0 = &PinD0_; Pin PinD1_; const PPin PinD1 = &PinD1_; Pin PinD2_; const PPin PinD2 = &PinD2_; Pin PinD3_; const PPin PinD3 = &PinD3_; Pin PinD4_; const PPin PinD4 = &PinD4_; Pin PinD5_; const PPin PinD5 = &PinD5_; Pin PinD6_; const PPin PinD6 = &PinD6_; Pin PinD7_; const PPin PinD7 = &PinD7_;
# 13 "AntonAvrLib/kernel/devices/timer_m1284P.h" 2

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
# 12 "Kernel-Tank-MASTER/shared/../tank_motor.h" 2
# 1 "AntonAvrLib/kernel/devices/motor.h" 1
# 20 "AntonAvrLib/kernel/devices/motor.h"
typedef enum {
 BACKWARD = 0,
 FORWARD = 1,
 MOTOR_STOPPED = 2
} MotorDirection;

typedef struct _Motor {
 uint8_t flags;
 void (*setter)(struct _Motor *motor, uint16_t speed, MotorDirection dir);
 void (*getter)(struct _Motor *motor, uint16_t *speed, MotorDirection *dir);




 uint16_t minValue;
 uint16_t maxValue;
} Motor, *PMotor;







typedef struct {
 Motor base;
 PPin direction;
 PTimer pwmTimer;
} Motor1Dir1Speed, *PMotor1Dir1Speed;

void motor1Dir1Speed_setDirSpeed(PMotor motor, uint16_t speed, MotorDirection dir);
void motor1Dir1Speed_getDirSpeed(PMotor motor, uint16_t *speed, MotorDirection *dir);

typedef struct {
 Motor base;
 PTimer pwmTimer1;
 PTimer pwmTimer2;
} Motor2Speed, *PMotor2Speed;

void motor2Dir_setDirSpeed(PMotor motor, uint16_t speed, MotorDirection dir);
void motor2Dir_getDirSpeed(PMotor motor, uint16_t *speed, MotorDirection *dir);

typedef struct {
 Motor base;
 PPin direction1;
 PPin direction2;
 PTimer pwmTimer;
} Motor2Dir, *PMotor2Dir;

void motor2Speed_setDirSpeed(PMotor motor, uint16_t speed, MotorDirection dir);
void motor2Speed_getDirSpeed(PMotor motor, uint16_t *speed, MotorDirection *dir);


void stopMotor(PMotor motor);



uint16_t getSpeed(PMotor motor);
MotorDirection getDirection(PMotor motor);
void setSpeed(PMotor motor, uint16_t speed, MotorDirection direction);
void setSpeedForward(PMotor motor, uint16_t speed);
void setSpeedBackward(PMotor motor, uint16_t speed);







int16_t getDirSpeed(PMotor motor);
void setDirSpeed(PMotor motor, int16_t speed);
# 13 "Kernel-Tank-MASTER/shared/../tank_motor.h" 2
# 1 "AntonAvrLib/kernel/devices/motor_smooth.h" 1
# 11 "AntonAvrLib/kernel/devices/motor_smooth.h"
# 1 "AntonAvrLib/kernel/devices/motor.h" 1
# 12 "AntonAvrLib/kernel/devices/motor_smooth.h" 2
# 1 "AntonAvrLib/kernel/devices/../processes/mutex/mutex.h" 1
# 13 "AntonAvrLib/kernel/devices/motor_smooth.h" 2



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
# 14 "Kernel-Tank-MASTER/shared/../tank_motor.h" 2

Motor2Speed LeftMotorBase_; const PMotor LeftMotorBase = (PMotor) &LeftMotorBase_;
Motor2Speed RightMotorBase_; const PMotor RightMotorBase = (PMotor) &RightMotorBase_;
SmoothMotor LeftMotor_; const PSmoothMotor LeftMotor = &LeftMotor_;
SmoothMotor RightMotor_; const PSmoothMotor RightMotor = &RightMotor_;
# 13 "Kernel-Tank-MASTER/shared/../kernel.h" 2
# 1 "Kernel-Tank-MASTER/shared/../shared/motor_smooth.h" 1







void motor_smooth_pair_tick();
# 14 "Kernel-Tank-MASTER/shared/../kernel.h" 2
# 14 "Kernel-Tank-MASTER/shared/base_before.kernel.h" 2
# 27 "Kernel-Tank-MASTER/shared/base_before.kernel.h"
# 1 "Kernel-Tank-MASTER/shared/timer.kernel.h" 1
# 9 "Kernel-Tank-MASTER/shared/timer.kernel.h"
# 1 "AntonAvrLib/kernel/devices/timer_m1284P.kernel.h" 1
# 11 "AntonAvrLib/kernel/devices/timer_m1284P.kernel.h"
# 1 "AntonAvrLib/kernel/devices/../kernel_init.h" 1
# 12 "AntonAvrLib/kernel/devices/timer_m1284P.kernel.h" 2
# 1 "AntonAvrLib/kernel/devices/timer_m1284P.h" 1
# 13 "AntonAvrLib/kernel/devices/timer_m1284P.kernel.h" 2
# 1 "AntonAvrLib/kernel/devices/port_m1284P.kernel.h" 1
# 14 "AntonAvrLib/kernel/devices/port_m1284P.kernel.h"
void init_ports_m1284P() {
 PortA_ = (Port) { &(*(volatile uint8_t *)((0x02) + 0x20)), &(*(volatile uint8_t *)((0x00) + 0x20)), &(*(volatile uint8_t *)((0x01) + 0x20)) }; PinA0_ = (Pin) { PortA, (1 << (0)) }; PinA1_ = (Pin) { PortA, (1 << (1)) }; PinA2_ = (Pin) { PortA, (1 << (2)) }; PinA3_ = (Pin) { PortA, (1 << (3)) }; PinA4_ = (Pin) { PortA, (1 << (4)) }; PinA5_ = (Pin) { PortA, (1 << (5)) }; PinA6_ = (Pin) { PortA, (1 << (6)) }; PinA7_ = (Pin) { PortA, (1 << (7)) };;
 PortB_ = (Port) { &(*(volatile uint8_t *)((0x05) + 0x20)), &(*(volatile uint8_t *)((0x03) + 0x20)), &(*(volatile uint8_t *)((0x04) + 0x20)) }; PinB0_ = (Pin) { PortB, (1 << (0)) }; PinB1_ = (Pin) { PortB, (1 << (1)) }; PinB2_ = (Pin) { PortB, (1 << (2)) }; PinB3_ = (Pin) { PortB, (1 << (3)) }; PinB4_ = (Pin) { PortB, (1 << (4)) }; PinB5_ = (Pin) { PortB, (1 << (5)) }; PinB6_ = (Pin) { PortB, (1 << (6)) }; PinB7_ = (Pin) { PortB, (1 << (7)) };;
 PortC_ = (Port) { &(*(volatile uint8_t *)((0x08) + 0x20)), &(*(volatile uint8_t *)((0x06) + 0x20)), &(*(volatile uint8_t *)((0x07) + 0x20)) }; PinC0_ = (Pin) { PortC, (1 << (0)) }; PinC1_ = (Pin) { PortC, (1 << (1)) }; PinC2_ = (Pin) { PortC, (1 << (2)) }; PinC3_ = (Pin) { PortC, (1 << (3)) }; PinC4_ = (Pin) { PortC, (1 << (4)) }; PinC5_ = (Pin) { PortC, (1 << (5)) }; PinC6_ = (Pin) { PortC, (1 << (6)) }; PinC7_ = (Pin) { PortC, (1 << (7)) };;
 PortD_ = (Port) { &(*(volatile uint8_t *)((0x0B) + 0x20)), &(*(volatile uint8_t *)((0x09) + 0x20)), &(*(volatile uint8_t *)((0x0A) + 0x20)) }; PinD0_ = (Pin) { PortD, (1 << (0)) }; PinD1_ = (Pin) { PortD, (1 << (1)) }; PinD2_ = (Pin) { PortD, (1 << (2)) }; PinD3_ = (Pin) { PortD, (1 << (3)) }; PinD4_ = (Pin) { PortD, (1 << (4)) }; PinD5_ = (Pin) { PortD, (1 << (5)) }; PinD6_ = (Pin) { PortD, (1 << (6)) }; PinD7_ = (Pin) { PortD, (1 << (7)) };;
}
void init_ports_m1284P_kernel_init() __attribute__((naked, section(".init8"))); void init_ports_m1284P_kernel_init() { init_ports_m1284P(); }
# 14 "AntonAvrLib/kernel/devices/timer_m1284P.kernel.h" 2

void init_timer_m1284P() {
 Timer0_ = (TimerPair) {0, TIMER_RESOLUTION_full, (uint8_t*) &(*(volatile uint8_t *)((0x24) + 0x20)), (uint8_t*) &(*(volatile uint8_t *)((0x25) + 0x20)), &(*(volatile uint8_t *)(0x6E))};
 Timer1_ = (TimerPair) {(1 << 2), TIMER_RESOLUTION_full, (uint8_t*) &(*(volatile uint8_t *)(0x80)), (uint8_t*) &(*(volatile uint8_t *)(0x81)), &(*(volatile uint8_t *)(0x6F))};
 Timer2_ = (TimerPair) {(1 << 1), TIMER_RESOLUTION_full, (uint8_t*) &(*(volatile uint8_t *)(0xB0)), (uint8_t*) &(*(volatile uint8_t *)(0xB1)), &(*(volatile uint8_t *)(0x70))};
 Timer3_ = (TimerPair) {(1 << 2), TIMER_RESOLUTION_full, (uint8_t*) &(*(volatile uint8_t *)(0x90)), (uint8_t*) &(*(volatile uint8_t *)(0x91)), &(*(volatile uint8_t *)(0x71))};

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
# 10 "Kernel-Tank-MASTER/shared/timer.kernel.h" 2






void init_timer() {
 setWaveformGenerationMode(Timer3, clear_timer_on_match);
 setTimerClockSelect(Timer3, prescale_8);





 setTimerCompareValue(Timer3A, ((uint16_t) 2500));
 setTimerCompareValue(Timer3B, ((uint16_t) 2500));
}
void init_timer_kernel_init() __attribute__((naked, section(".init8"))); void init_timer_kernel_init() { init_timer(); }
# 28 "Kernel-Tank-MASTER/shared/base_before.kernel.h" 2


# 1 "AntonAvrLib/kernel/timer_base.kernel.h" 1
# 23 "AntonAvrLib/kernel/timer_base.kernel.h"
# 1 "AntonAvrLib/kernel/millisecond_clock.h" 1
# 24 "AntonAvrLib/kernel/timer_base.kernel.h" 2




void in_timer_tick() __attribute__((weak));
void in_timer_tick() {}
# 31 "Kernel-Tank-MASTER/shared/base_before.kernel.h" 2





# 1 "AntonAvrLib/kernel/simple_timer.kernel.h" 1






void __vector_32 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_32 (void) {
 milliseconds_running++; in_timer_tick();
}
# 37 "Kernel-Tank-MASTER/shared/base_before.kernel.h" 2




# 1 "AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h" 1
# 14 "AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h"
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
 if (((AtomicMutex *) mutex)->interruptsWereEnabled)
  __asm__ __volatile__ ("sei" ::: "memory");
}
# 42 "Kernel-Tank-MASTER/shared/base_before.kernel.h" 2


# 1 "AntonAvrLib/kernel/sleep_after_main.kernel.h" 1



# 1 "AntonAvrLib/kernel/../misc/idle.h" 1





void processor_idle();






void processor_loop_idle();
# 5 "AntonAvrLib/kernel/sleep_after_main.kernel.h" 2


void MainProcessEnd() __attribute__((section (".fini1")));
void MainProcessEnd() {
 processor_loop_idle();
}
# 45 "Kernel-Tank-MASTER/shared/base_before.kernel.h" 2


# 1 "AntonAvrLib/kernel/devices/analog_m1284P.kernel.h" 1
# 12 "AntonAvrLib/kernel/devices/analog_m1284P.kernel.h"
# 1 "AntonAvrLib/kernel/devices/analog_m1284P.h" 1
# 13 "AntonAvrLib/kernel/devices/analog_m1284P.kernel.h" 2
# 1 "AntonAvrLib/kernel/devices/analog.kernel.h" 1
# 14 "AntonAvrLib/kernel/devices/analog.kernel.h"
extern AnalogCallbackFunction analogCallbackFunction;

void __vector_24 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_24 (void) {


 if (analogCallbackFunction)
  analogCallbackFunction((*(volatile uint8_t *)(0x79)));
}

void init_analog() {

 (*(volatile uint8_t *)(0x7C)) =
  (1 << (6))
  | (1 << (5));


 (*(volatile uint8_t *)(0x7A)) =
  (1 << (7)) | (1 << (3))



  | (1 << (2)) | (1 << (0));

 (*(volatile uint8_t *)(0x7B)) = 0;
}
void init_analog_kernel_init() __attribute__((naked, section(".init8"))); void init_analog_kernel_init() { init_analog(); }
# 14 "AntonAvrLib/kernel/devices/analog_m1284P.kernel.h" 2





void init_analog_m1284P() {
 Analog0_ = (AnalogInput) { PinA0, 0 };
 Analog1_ = (AnalogInput) { PinA1, 1 };
 Analog2_ = (AnalogInput) { PinA2, 2 };
 Analog3_ = (AnalogInput) { PinA3, 3 };
 Analog4_ = (AnalogInput) { PinA4, 4 };
 Analog5_ = (AnalogInput) { PinA5, 5 };
 Analog6_ = (AnalogInput) { PinA6, 6 };
 Analog7_ = (AnalogInput) { PinA7, 7 };
}
void init_analog_m1284P_kernel_init() __attribute__((naked, section(".init8"))); void init_analog_m1284P_kernel_init() { init_analog_m1284P(); }
# 48 "Kernel-Tank-MASTER/shared/base_before.kernel.h" 2
# 11 "Kernel-Tank-MASTER/kernel.c" 2







# 1 "Kernel-Tank-MASTER/tank_motor.kernel.h" 1
# 13 "Kernel-Tank-MASTER/tank_motor.kernel.h"
# 1 "AntonAvrLib/kernel/devices/motor.kernel.h" 1
# 14 "AntonAvrLib/kernel/devices/motor.kernel.h"
static void initMotorTimer(PTimer timer) {



 setTimerClockSelect(timer->timer, prescale_1);
 timer->timer->flags |= TIMER_RESOLUTION_full;
 setWaveformGenerationMode(timer->timer, pwm_phase_correct);
 setPinOutput(timer->outputComparePin);
}

void initMotor_1Dir1Speed(PMotor1Dir1Speed motor) {
 setPinOutput(motor->direction);
 initMotorTimer(motor->pwmTimer);
 stopMotor((PMotor) motor);
}

void initMotor_2Dir(PMotor2Dir motor) {
 setPinOutput(motor->direction1);
 setPinOutput(motor->direction2);
 setPinZero(motor->direction1);
 setPinZero(motor->direction2);
 initMotorTimer(motor->pwmTimer);
 stopMotor((PMotor) motor);
}

void initMotor_2Speed(PMotor2Speed motor) {
 initMotorTimer(motor->pwmTimer1);
 initMotorTimer(motor->pwmTimer2);
 stopMotor((PMotor) motor);
}
# 14 "Kernel-Tank-MASTER/tank_motor.kernel.h" 2
# 1 "AntonAvrLib/kernel/devices/motor_smooth_pair.kernel.h" 1
# 18 "AntonAvrLib/kernel/devices/motor_smooth_pair.kernel.h"
# 1 "AntonAvrLib/kernel/devices/motor_smooth.kernel.h" 1
# 11 "AntonAvrLib/kernel/devices/motor_smooth.kernel.h"
# 1 "AntonAvrLib/kernel/devices/motor.kernel.h" 1
# 12 "AntonAvrLib/kernel/devices/motor_smooth.kernel.h" 2


void motor_smooth_start_tick(PSmoothMotor motor);
void motor_smooth_stop_tick(PSmoothMotor motor);


void motor_smooth_tick(PSmoothMotor motor);

void initSmoothMotor(PSmoothMotor motor) {
 motor->mutex = mutex_create();
}
# 19 "AntonAvrLib/kernel/devices/motor_smooth_pair.kernel.h" 2




void motor_smooth_pair_enable_tick(BOOL enabled);

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
 motor_smooth_pair_enable_tick(motor_A_running || motor_B_running);
}

void motor_smooth_start_tick(PSmoothMotor motor) {
 control_smooth_motor(motor, TRUE);
}

void motor_smooth_stop_tick(PSmoothMotor motor) {
 control_smooth_motor(motor, FALSE);
}

void motor_smooth_pair_tick() {
 if (motor_A_running) motor_smooth_tick(LeftMotor);
 if (motor_B_running) motor_smooth_tick(RightMotor);
}
# 15 "Kernel-Tank-MASTER/tank_motor.kernel.h" 2
# 1 "Kernel-Tank-MASTER/tank_motor.h" 1
# 16 "Kernel-Tank-MASTER/tank_motor.kernel.h" 2





void init_tank_motors() {



 LeftMotorBase_ = (Motor2Speed) { { 0, motor2Speed_setDirSpeed, motor2Speed_getDirSpeed, 0, 0xFFFF}, Timer0A, Timer0B }; initMotor_2Speed(&LeftMotorBase_);
 RightMotorBase_ = (Motor2Speed) { { 0, motor2Speed_setDirSpeed, motor2Speed_getDirSpeed, 0, 0xFFFF}, Timer2A, Timer2B }; initMotor_2Speed(&RightMotorBase_);
 LeftMotor_ = (SmoothMotor) { LeftMotorBase, 0, FORWARD, 0, FORWARD, FALSE, 130, 0 }; initSmoothMotor(LeftMotor);
 RightMotor_ = (SmoothMotor) { RightMotorBase, 0, FORWARD, 0, FORWARD, FALSE, 130, 0 }; initSmoothMotor(RightMotor);
}
void init_tank_motors_kernel_init() __attribute__((naked, section(".init8"))); void init_tank_motors_kernel_init() { init_tank_motors(); }
# 19 "Kernel-Tank-MASTER/kernel.c" 2


# 1 "Kernel-Tank-MASTER/shared/motor_smooth_interrupt.kernel.h" 1




void motor_smooth_pair_enable_tick(BOOL enabled) {
 if (enabled) enableTimerInterrupt(Timer3B);
 else disableTimerInterrupt(Timer3B);
}

void __vector_33 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_33 (void) {
 motor_smooth_pair_tick();
}
# 22 "Kernel-Tank-MASTER/kernel.c" 2
# 32 "Kernel-Tank-MASTER/kernel.c"
# 1 "Kernel-Tank-MASTER/shared/base_after.kernel.h" 1
# 13 "Kernel-Tank-MASTER/shared/base_after.kernel.h"
void before_timer() __attribute__((weak));
void before_timer() {}


void init_kernel() {

 (*(volatile uint8_t *)((0x30) + 0x20)) |= (1 << (7));
# 29 "Kernel-Tank-MASTER/shared/base_after.kernel.h"

 before_timer();

 enableTimerInterrupt(Timer3A);




 __asm__ __volatile__ ("sei" ::: "memory");
}
void init_kernel_kernel_init() __attribute__((naked, section(".init8"))); void init_kernel_kernel_init() { init_kernel(); }
# 33 "Kernel-Tank-MASTER/kernel.c" 2
