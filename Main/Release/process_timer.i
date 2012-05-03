# 1 "../processes/timer/process_timer.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../processes/timer/process_timer.c"







# 1 "../processes/timer/process_timer.h" 1
# 11 "../processes/timer/process_timer.h"
# 1 "../processes/timer/../../util/clock.h" 1







# 1 "../processes/timer/../../util/../std.h" 1
# 12 "../processes/timer/../../util/../std.h"
# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/include/stdint.h" 1 3 4


# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdint.h" 1 3 4
# 121 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdint.h" 3 4
typedef int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 142 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 159 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 213 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 273 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 4 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/include/stdint.h" 2 3 4
# 13 "../processes/timer/../../util/../std.h" 2
# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 1 3
# 47 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/include/stddef.h" 1 3 4
# 211 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/include/stddef.h" 3 4
typedef unsigned int size_t;
# 323 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/include/stddef.h" 3 4
typedef int wchar_t;
# 48 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 2 3
# 68 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;


typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef int (*__compar_fn_t)(const void *, const void *);
# 106 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern void abort(void) __attribute__((__noreturn__));




extern int abs(int __i) __attribute__((__const__));
# 120 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern long labs(long __i) __attribute__((__const__));
# 143 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern void *bsearch(const void *__key, const void *__base, size_t __nmemb,
       size_t __size, int (*__compar)(const void *, const void *));







extern div_t div(int __num, int __denom) __asm__("__divmodhi4") __attribute__((__const__));





extern ldiv_t ldiv(long __num, long __denom) __asm__("__divmodsi4") __attribute__((__const__));
# 175 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern void qsort(void *__base, size_t __nmemb, size_t __size,
    __compar_fn_t __compar);
# 208 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern long strtol(const char *__nptr, char **__endptr, int __base);
# 242 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern unsigned long strtoul(const char *__nptr, char **__endptr, int __base);
# 254 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern long atol(const char *__s) __attribute__((__pure__));
# 266 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern int atoi(const char *__s) __attribute__((__pure__));
# 278 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern void exit(int __status) __attribute__((__noreturn__));
# 290 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern void *malloc(size_t __size) __attribute__((__malloc__));






extern void free(void *__ptr);




extern size_t __malloc_margin;




extern char *__malloc_heap_start;




extern char *__malloc_heap_end;






extern void *calloc(size_t __nele, size_t __size) __attribute__((__malloc__));
# 338 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern void *realloc(void *__ptr, size_t __size) __attribute__((__malloc__));

extern double strtod(const char *__nptr, char **__endptr);

extern double atof(const char *__nptr);
# 364 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern int rand(void);



extern void srand(unsigned int __seed);






extern int rand_r(unsigned long *__ctx);
# 406 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern char *itoa(int __val, char *__s, int __radix);
# 434 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern char *ltoa(long int __val, char *__s, int __radix);
# 460 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern char *utoa(unsigned int __val, char *__s, int __radix);
# 486 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern char *ultoa(unsigned long int __val, char *__s, int __radix);
# 504 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern long random(void);




extern void srandom(unsigned long __seed);







extern long random_r(unsigned long *__ctx);
# 563 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern char *dtostre(double __val, char *__s, unsigned char __prec,
       unsigned char __flags);
# 580 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/stdlib.h" 3
extern char *dtostrf(double __val, signed char __width,
                     unsigned char __prec, char *__s);
# 14 "../processes/timer/../../util/../std.h" 2
# 1 "..\\..\\..\\NIBObeeLib\\include/nibobee/iodefs.h" 1
# 44 "..\\..\\..\\NIBObeeLib\\include/nibobee/iodefs.h"
# 1 "..\\..\\..\\NIBObeeLib\\include/nibobee/iodefs_nibobee.h" 1
# 45 "..\\..\\..\\NIBObeeLib\\include/nibobee/iodefs.h" 2
# 62 "..\\..\\..\\NIBObeeLib\\include/nibobee/iodefs.h"
# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 1 3
# 99 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 3
# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/sfr_defs.h" 1 3
# 126 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/sfr_defs.h" 3
# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/inttypes.h" 1 3
# 77 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/sfr_defs.h" 2 3
# 100 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 2 3
# 162 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 3
# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/iom1284p.h" 1 3
# 163 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 2 3
# 520 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 3
# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/portpins.h" 1 3
# 521 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 2 3

# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/common.h" 1 3
# 523 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 2 3

# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/version.h" 1 3
# 525 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 2 3


# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/fuse.h" 1 3
# 239 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 528 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 2 3


# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/lock.h" 1 3
# 531 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 2 3
# 63 "..\\..\\..\\NIBObeeLib\\include/nibobee/iodefs.h" 2
# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/interrupt.h" 1 3
# 64 "..\\..\\..\\NIBObeeLib\\include/nibobee/iodefs.h" 2
# 15 "../processes/timer/../../util/../std.h" 2

asm ("__RAMPZ__ = 0x3b");
# 9 "../processes/timer/../../util/clock.h" 2




extern uint32_t milliseconds_running;



void init_clock();
# 12 "../processes/timer/process_timer.h" 2
# 1 "../processes/timer/../process_internal.h" 1
# 11 "../processes/timer/../process_internal.h"
# 1 "../processes/timer/../../std.h" 1
# 12 "../processes/timer/../process_internal.h" 2



typedef struct PCB_t {
 void *stackPointer;


} PCB, *PPCB;


extern PPCB __current_process;
# 35 "../processes/timer/../process_internal.h"
void switchContext(PPCB oldProcess, PPCB newProcess);
# 13 "../processes/timer/process_timer.h" 2




PPCB schedule() __attribute__((weak));
PPCB schedule() { return ((void *)0); }
# 9 "../processes/timer/process_timer.c" 2

void __vector_16 (void) __attribute__ ((signal,used, externally_visible)) __attribute__((naked)); void __vector_16 (void) {

 asm volatile ( "push r0				\n" "in r0, __SREG__		\n" "cli					\n" "push r0				\n" "in r0, __RAMPZ__		\n" "push r0				\n" "push r1				\n" "clr r1				\n" "push r2			\n" "push r3			\n" "push r4			\n" "push r5			\n" "push r6			\n" "push r7			\n" "push r8			\n" "push r9			\n" "push r10			\n" "push r11			\n" "push r12			\n" "push r13			\n" "push r14			\n" "push r15			\n" "push r16			\n" "push r17			\n" "push r18			\n" "push r19			\n" "push r20			\n" "push r21			\n" "push r22			\n" "push r23			\n" "push r24			\n" "push r25			\n" "push r26			\n" "push r27			\n" "push r28			\n" "push r29			\n" "push r30			\n" "push r31			\n" );

 getCurrentProcess();
 asm volatile("lds r26, 24");
 asm volatile ( "in r0, __SP_L__			\n" "st X+, r0					\n" "in r0, __SP_H__			\n" "st X+, r0					\n" );

 schedule();
 asm volatile("movw r26, r24");
 asm volatile( "ld r0, X+					\n" "out __SP_L__, r0			\n" "ld r0, X+					\n" "out __SP_H__, r0			\n" );
 asm volatile( "pop r31			\n" "pop r30			\n" "pop r29			\n" "pop r28			\n" "pop r27			\n" "pop r26			\n" "pop r25			\n" "pop r24			\n" "pop r23			\n" "pop r22			\n" "pop r21			\n" "pop r20			\n" "pop r19			\n" "pop r18			\n" "pop r17			\n" "pop r16			\n" "pop r15			\n" "pop r14			\n" "pop r13			\n" "pop r12			\n" "pop r11			\n" "pop r10			\n" "pop r9				\n" "pop r8				\n" "pop r7				\n" "pop r6				\n" "pop r5				\n" "pop r4				\n" "pop r3				\n" "pop r2				\n" "pop r1				\n" "pop r0						\n" "out __RAMPZ__, r0			\n" "pop r0						\n" "out __SREG__, r0			\n" "pop r0						\n" );


 asm volatile("reti");
}
