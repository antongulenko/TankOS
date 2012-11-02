# 1 "Kernel-Tank-MASTER/shared/twi_bgx1.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "Kernel-Tank-MASTER/shared/twi_bgx1.c"

# 1 "Kernel-Tank-MASTER/shared/twi_bgx1.h" 1



# 1 "AntonAvrLib/kernel/TWI/twi_raw.h" 1



# 1 "AntonAvrLib/kernel/TWI/../../anton_std.h" 1
# 14 "AntonAvrLib/kernel/TWI/../../anton_std.h"
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
# 15 "AntonAvrLib/kernel/TWI/../../anton_std.h" 2
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
# 16 "AntonAvrLib/kernel/TWI/../../anton_std.h" 2
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
# 17 "AntonAvrLib/kernel/TWI/../../anton_std.h" 2
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
# 18 "AntonAvrLib/kernel/TWI/../../anton_std.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/interrupt.h" 1 3
# 19 "AntonAvrLib/kernel/TWI/../../anton_std.h" 2

typedef enum {
 FALSE,
 TRUE
} BOOL;

typedef uint8_t byte;

asm ("__RAMPZ__ = 0x3b");
# 5 "AntonAvrLib/kernel/TWI/twi_raw.h" 2


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
# 5 "Kernel-Tank-MASTER/shared/twi_bgx1.h" 2



extern TWIDevice bgx1;






# 1 "AntonAvrLib/kernel/TWI/twi_rpc_client.h" 1






# 1 "AntonAvrLib/kernel/TWI/twi_rpc.h" 1



# 1 "AntonAvrLib/kernel/TWI/twi_raw.h" 1
# 5 "AntonAvrLib/kernel/TWI/twi_rpc.h" 2




void twi_rpc_oneway(TWIDevice device, byte operation, TWIBuffer parameters);
void twi_rpc(TWIDevice device, byte operation, TWIBuffer parameters, TWIBuffer resultBuffer);




void twi_rpc_pseudo_oneway(TWIDevice device, byte operation, TWIBuffer parameters);
# 8 "AntonAvrLib/kernel/TWI/twi_rpc_client.h" 2
# 16 "Kernel-Tank-MASTER/shared/twi_bgx1.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/pgmspace.h" 1 3
# 87 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/pgmspace.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/include/stddef.h" 1 3 4
# 88 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/pgmspace.h" 2 3
# 1037 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/avr/pgmspace.h" 3
extern const void * memchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
extern int memcmp_P(const void *, const void *, size_t) __attribute__((__pure__));
extern void *memccpy_P(void *, const void *, int __val, size_t);
extern void *memcpy_P(void *, const void *, size_t);
extern void *memmem_P(const void *, size_t, const void *, size_t) __attribute__((__pure__));
extern const void * memrchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
extern char *strcat_P(char *, const char *);
extern const char * strchr_P(const char *, int __val) __attribute__((__const__));
extern const char * strchrnul_P(const char *, int __val) __attribute__((__const__));
extern int strcmp_P(const char *, const char *) __attribute__((__pure__));
extern char *strcpy_P(char *, const char *);
extern int strcasecmp_P(const char *, const char *) __attribute__((__pure__));
extern char *strcasestr_P(const char *, const char *) __attribute__((__pure__));
extern size_t strcspn_P(const char *__s, const char * __reject) __attribute__((__pure__));
extern size_t strlcat_P (char *, const char *, size_t );
extern size_t strlcpy_P (char *, const char *, size_t );
extern size_t __strlen_P(const char *) __attribute__((__const__));
extern size_t strnlen_P(const char *, size_t) __attribute__((__const__));
extern int strncmp_P(const char *, const char *, size_t) __attribute__((__pure__));
extern int strncasecmp_P(const char *, const char *, size_t) __attribute__((__pure__));
extern char *strncat_P(char *, const char *, size_t);
extern char *strncpy_P(char *, const char *, size_t);
extern char *strpbrk_P(const char *__s, const char * __accept) __attribute__((__pure__));
extern const char * strrchr_P(const char *, int __val) __attribute__((__const__));
extern char *strsep_P(char **__sp, const char * __delim);
extern size_t strspn_P(const char *__s, const char * __accept) __attribute__((__pure__));
extern char *strstr_P(const char *, const char *) __attribute__((__pure__));
extern char *strtok_P(char *__s, const char * __delim);
extern char *strtok_rP(char *__s, const char * __delim, char **__last);

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


__attribute__((__always_inline__)) static inline size_t strlen_P(const char * s);
static inline size_t strlen_P(const char *s) {
  return __builtin_constant_p(__builtin_strlen(s))
     ? __builtin_strlen(s) : __strlen_P(s);
}
# 17 "Kernel-Tank-MASTER/shared/twi_bgx1.h" 2




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
# 123 "Kernel-Tank-MASTER/shared/twi_bgx1.h"
Point bgx1_print(char *argument);
Point bgx1_print_P(const char * argument);
uint8_t bgx1_textWidth(char *argument);
uint8_t bgx1_textWidth_P(const char * argument);
byte bgx1_termPrint(char *argument);
byte bgx1_termPrint_P(const char * argument);


Point bgx1_drawTile(uint8_t width, uint8_t height, const uint8_t *bitmap);
Point bgx1_drawTile_P(uint8_t width, uint8_t height, const char * bitmap);



Point bgx1_drawBitmap(uint8_t width, uint8_t height, const uint8_t *bitmap);
Point bgx1_drawBitmap_P(uint8_t width, uint8_t height, const char * bitmap);

void bgx1_move(uint8_t x, uint8_t y);
Point bgx1_box(uint8_t width, uint8_t height);
void bgx1_lineTo(uint8_t x, uint8_t y);
void bgx1_termGoto(uint8_t x, uint8_t y);
uint8_t bgx1_syncPort(uint8_t ddr, uint8_t port);

uint16_t bgx1_getAnalog(uint8_t index);
uint16_t bgx1_getVersion();



BOOL bgx1_initialized();
# 3 "Kernel-Tank-MASTER/shared/twi_bgx1.c" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/alloca.h" 1 3
# 34 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/alloca.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/include/stddef.h" 1 3 4
# 150 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 35 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/alloca.h" 2 3
# 55 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/alloca.h" 3
extern void *alloca (size_t __size);
# 4 "Kernel-Tank-MASTER/shared/twi_bgx1.c" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/string.h" 1 3
# 45 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/string.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/include/stddef.h" 1 3 4
# 46 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/string.h" 2 3
# 111 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.4.0.65\\avrtoolchain\\bin\\../lib/gcc/avr/4.6.2/../../../../avr/include/string.h" 3
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
# 5 "Kernel-Tank-MASTER/shared/twi_bgx1.c" 2
# 37 "Kernel-Tank-MASTER/shared/twi_bgx1.c"
Point bgx1_print(char *argument) {
 return bgx1_print_base(argument, strlen(argument));
}

uint8_t bgx1_textWidth(char *argument) {
 return bgx1_textWidth_base(argument, strlen(argument));
}

byte bgx1_termPrint(char *argument) {
 return bgx1_termPrint_base(argument, strlen(argument));
}

Point bgx1_drawTile(uint8_t width, uint8_t height, const uint8_t *argument) {
 uint8_t size = height * ((width - 1)/8 + 1); uint8_t argSize = sizeof(BitmapArguments) + size; BitmapArguments *args = (BitmapArguments*) __builtin_alloca (argSize); args->width = width; args->height = height; memcpy(((uint8_t*) args) + sizeof(BitmapArguments), argument, size); return bgx1_drawBitmap_base(args, argSize);
}





Point bgx1_print_P(const char * argument) {
 uint8_t argSize = strlen_P(argument); StringArg *ramString = (StringArg*) __builtin_alloca (argSize); memcpy_P((uint8_t*) ramString, argument, argSize);;
 return bgx1_print_base(ramString, argSize);
}

uint8_t bgx1_textWidth_P(const char * argument) {
 uint8_t argSize = strlen_P(argument); StringArg *ramString = (StringArg*) __builtin_alloca (argSize); memcpy_P((uint8_t*) ramString, argument, argSize);;
 return bgx1_textWidth_base(ramString, argSize);
}

byte bgx1_termPrint_P(const char * argument) {
 uint8_t argSize = strlen_P(argument); StringArg *ramString = (StringArg*) __builtin_alloca (argSize); memcpy_P((uint8_t*) ramString, argument, argSize);;
 return bgx1_termPrint_base(ramString, argSize);
}

Point bgx1_drawTile_P(uint8_t width, uint8_t height, const char * argument) {
 uint8_t size = height * ((width - 1)/8 + 1); uint8_t argSize = sizeof(BitmapArguments) + size; BitmapArguments *args = (BitmapArguments*) __builtin_alloca (argSize); args->width = width; args->height = height; memcpy_P(((uint8_t*) args) + sizeof(BitmapArguments), argument, size); return bgx1_drawBitmap_base(args, argSize);
}





uint16_t bgx1_getVersion() {
 uint16_t result = bgx1_getVersion_base();
 turn_word(&result);
 return result;
}

uint16_t bgx1_getAnalog(uint8_t index) {
 uint16_t result = bgx1_getAnalog_base(index);
 turn_word(&result);
 return result;
}





void bgx1_move(uint8_t x, uint8_t y) {
 bgx1_move_base((Point) { x, y });
}

Point bgx1_box(uint8_t width, uint8_t height) {
 return bgx1_box_base((Rect) { width, height });
}

void bgx1_lineTo(uint8_t x, uint8_t y) {
 bgx1_lineTo_base((Point) { x, y });
}

void bgx1_termGoto(uint8_t x, uint8_t y) {
 bgx1_termGoto_base((Point) { x, y });
}

uint8_t bgx1_syncPort(uint8_t ddr, uint8_t port) {
 return bgx1_syncPort_base((SyncPortArgs) { ddr, port });
}

BOOL bgx1_initialized() {
 uint16_t version = bgx1_getVersion();
 return (twi_error == TWI_No_Error) && (version == 0x0103);
}
# 136 "Kernel-Tank-MASTER/shared/twi_bgx1.c"
Point bgx1_drawBitmap(uint8_t width, uint8_t height, const uint8_t bytes[]) {
 const uint8_t *data = bytes;
 uint8_t row_size = ((width - 1)/8 + 1); uint8_t rows_per_tile = 18 / row_size; Point newPos = {0}; while (height) { uint8_t h = (height > rows_per_tile) ? rows_per_tile : height; newPos = bgx1_drawTile(width, h, data); data += row_size * h; height -= h; if (height) bgx1_move(newPos.x - row_size + 2, newPos.y); } return newPos;
}

Point bgx1_drawBitmap_P(uint8_t width, uint8_t height, const char * data) {
 uint8_t row_size = ((width - 1)/8 + 1); uint8_t rows_per_tile = 18 / row_size; Point newPos = {0}; while (height) { uint8_t h = (height > rows_per_tile) ? rows_per_tile : height; newPos = bgx1_drawTile_P(width, h, data); data += row_size * h; height -= h; if (height) bgx1_move(newPos.x - row_size + 2, newPos.y); } return newPos;
}
