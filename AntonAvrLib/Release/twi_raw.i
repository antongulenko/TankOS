# 1 "../kernel/TWI/twi_raw.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../kernel/TWI/twi_raw.c"

# 1 "../kernel/TWI/twi_raw.h" 1



# 1 "../kernel/TWI/../../anton_std.h" 1
# 14 "../kernel/TWI/../../anton_std.h"
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
# 15 "../kernel/TWI/../../anton_std.h" 2
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
# 16 "../kernel/TWI/../../anton_std.h" 2
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
# 17 "../kernel/TWI/../../anton_std.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/interrupt.h" 1 3
# 18 "../kernel/TWI/../../anton_std.h" 2

typedef enum {
 FALSE,
 TRUE
} BOOL;

typedef uint8_t byte;

asm ("__RAMPZ__ = 0x3b");
# 5 "../kernel/TWI/twi_raw.h" 2


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
extern TWIError last_twi_error;




void twiSend(TWIDevice targetDevice, TWIBuffer data);
void twiReceive(TWIDevice targetDevice, TWIBuffer receiveBuffer);
void twiSendReceive(TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer receiveBuffer);






void twiMultipleOperations(int count, TWIOperation *operations);
# 3 "../kernel/TWI/twi_raw.c" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/twi.h" 1 3
# 4 "../kernel/TWI/twi_raw.c" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/include/stdarg.h" 1 3 4
# 40 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 102 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 5 "../kernel/TWI/twi_raw.c" 2

TWIDevice TWIBroadcast = { 0 };


void twi_start_master_operation();
extern TWIOperation furtherOperations[3];

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
