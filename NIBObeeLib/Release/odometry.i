# 1 "../../../NIBObeeLib/src/nibobee/odometry.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../../../NIBObeeLib/src/nibobee/odometry.c"
# 39 "../../../NIBObeeLib/src/nibobee/odometry.c"
# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/interrupt.h" 1 3
# 38 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/interrupt.h" 3
# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 1 3
# 99 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/io.h" 3
# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/sfr_defs.h" 1 3
# 126 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/sfr_defs.h" 3
# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/inttypes.h" 1 3
# 37 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/inttypes.h" 3
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
# 38 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/inttypes.h" 2 3
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
# 39 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/interrupt.h" 2 3
# 40 "../../../NIBObeeLib/src/nibobee/odometry.c" 2
# 1 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1 3
# 42 "c:\\program files (x86)\\atmel\\avr studio 5.0\\avr toolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 3
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
# 41 "../../../NIBObeeLib/src/nibobee/odometry.c" 2
# 1 "..\\..\\..\\NIBObeeLib\\include/nibobee/iodefs.h" 1
# 44 "..\\..\\..\\NIBObeeLib\\include/nibobee/iodefs.h"
# 1 "..\\..\\..\\NIBObeeLib\\include/nibobee/iodefs_nibobee.h" 1
# 45 "..\\..\\..\\NIBObeeLib\\include/nibobee/iodefs.h" 2
# 42 "../../../NIBObeeLib/src/nibobee/odometry.c" 2






volatile int8_t odometry_pid_left;
volatile int8_t odometry_pid_right;
volatile int16_t odometry_left;
volatile int16_t odometry_right;

void odometry_init() {



  (*(volatile uint8_t *)(0x69)) |= (1 << (3)) | (1 << (2)) | (1 << (1)) | (1 << (0));
  (*(volatile uint8_t *)((0x1D) + 0x20)) |= (1 << (1)) | (1 << (0));






  (*(volatile uint8_t *)((0x0B) + 0x20))=((*(volatile uint8_t *)((0x0B) + 0x20))&~(unsigned char)(1 << (6)))|((1)?(1 << (6)):0);
  (*(volatile uint8_t *)((0x0B) + 0x20))=((*(volatile uint8_t *)((0x0B) + 0x20))&~(unsigned char)(1 << (7)))|((0)?(1 << (7)):0);
}


void odometry_reset() {
  for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) {
    odometry_left = 0;
    odometry_right = 0;
  }
}


int16_t odometry_getLeft(uint8_t reset) {
  for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) {
    int16_t res = odometry_left;
    if (reset) {
      odometry_left = 0;
    }
    return res;
  }
  return 0;
}


int16_t odometry_getRight(uint8_t reset) {
  for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) {
    int16_t res = odometry_right;
    if (reset) {
      odometry_right = 0;
    }
    return res;
  }
  return 0;
}



void __vector_1 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_1 (void) {
  if (((*(volatile uint8_t *)((0x0B) + 0x20))&(1 << (6)))) odometry_pid_left++, odometry_left++; else odometry_pid_left--, odometry_left--;
}


void __vector_2 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_2 (void) {
  if (((*(volatile uint8_t *)((0x0B) + 0x20))&(1 << (7)))) odometry_pid_right--, odometry_right--; else odometry_pid_right++, odometry_right++;
}
