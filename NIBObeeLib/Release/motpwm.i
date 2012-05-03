# 1 "../../../NIBObeeLib/src/nibobee/motpwm.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../../../NIBObeeLib/src/nibobee/motpwm.c"
# 39 "../../../NIBObeeLib/src/nibobee/motpwm.c"
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
# 40 "../../../NIBObeeLib/src/nibobee/motpwm.c" 2
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
# 41 "../../../NIBObeeLib/src/nibobee/motpwm.c" 2
# 1 "..\\..\\..\\NIBObeeLib\\include/nibobee/iodefs.h" 1
# 44 "..\\..\\..\\NIBObeeLib\\include/nibobee/iodefs.h"
# 1 "..\\..\\..\\NIBObeeLib\\include/nibobee/iodefs_nibobee.h" 1
# 45 "..\\..\\..\\NIBObeeLib\\include/nibobee/iodefs.h" 2
# 42 "../../../NIBObeeLib/src/nibobee/motpwm.c" 2
# 1 "..\\..\\..\\NIBObeeLib\\include/nibobee/base.h" 1
# 56 "..\\..\\..\\NIBObeeLib\\include/nibobee/base.h"
enum {
  NIBOBEE_ANALOG_INITIALIZED = 0x01,
  NIBOBEE_MOTPWM_INITIALIZED = 0x02,
  NIBOBEE_I2C_INITIALIZED = 0x04,
};






extern uint8_t nibobee_initialization;
# 87 "..\\..\\..\\NIBObeeLib\\include/nibobee/base.h"
uint16_t nibobee_getMillivolt();
# 96 "..\\..\\..\\NIBObeeLib\\include/nibobee/base.h"
void nibobee_assertMinVoltage(uint16_t value);
# 43 "../../../NIBObeeLib/src/nibobee/motpwm.c" 2
# 79 "../../../NIBObeeLib/src/nibobee/motpwm.c"
int16_t motpwm_motor_l;
int16_t motpwm_motor_r;
uint8_t motpwm_flags;

void motpwm_init() {
  nibobee_initialization |= NIBOBEE_MOTPWM_INITIALIZED;
  (*(volatile uint8_t *)((0x0B) + 0x20))|=0xf0;
  (*(volatile uint8_t *)((0x0A) + 0x20))|=0xf0;
  (*(volatile uint8_t *)(0x80)) = (1 << (7)) | (1 << (6)) | (1 << (5)) | (1 << (4)) | (1 << (1));
  (*(volatile uint8_t *)(0x81)) = (1 << (0));
  (*(volatile uint8_t *)(0x6F)) |= 0;
}


void motpwm_stop() {
  for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) {
    motpwm_motor_l = 0;
    motpwm_motor_r = 0;
    (*(volatile uint16_t *)(0x88)) = 0;
    (*(volatile uint16_t *)(0x8A)) = 0;
  }
}


void motpwm_setLeft(int16_t value) {
  value/=2;
  if (value>511) value=511;
  if (value<-511) value=-511;

  if (value<0) {
    motpwm_motor_l = - value;
    if (((*(volatile uint8_t *)((0x0B) + 0x20))&(1 << (6)))) {

      motpwm_flags&=0x02;
      (*(volatile uint16_t *)(0x88)) = 0;
      (*(volatile uint8_t *)(0x6F)) |= (1 << (1));
    } else {
      (*(volatile uint16_t *)(0x88)) = motpwm_motor_l;
    }
  } else {
    motpwm_motor_l = value;
    if (((*(volatile uint8_t *)((0x0B) + 0x20))&(1 << (6)))) {
      (*(volatile uint16_t *)(0x88)) = motpwm_motor_l;
    } else {

      motpwm_flags|=0x01;
      (*(volatile uint16_t *)(0x88)) = 0;
      (*(volatile uint8_t *)(0x6F)) |= (1 << (1));
    }
  }
}


void motpwm_setRight(int16_t value) {
  value/=2;
  if (value>511) value=511;
  if (value<-511) value=-511;

  if (value<0) {
    motpwm_motor_r = - value;
    if (((*(volatile uint8_t *)((0x0B) + 0x20))&(1 << (7)))) {
      (*(volatile uint16_t *)(0x8A)) = motpwm_motor_r;
    } else {

      motpwm_flags|=0x02;
      (*(volatile uint16_t *)(0x8A)) = 0;
      (*(volatile uint8_t *)(0x6F)) |= (1 << (2));
    }
  } else {
    motpwm_motor_r = value;
    if (((*(volatile uint8_t *)((0x0B) + 0x20))&(1 << (7)))) {

      motpwm_flags&=0x01;
      (*(volatile uint16_t *)(0x8A)) = 0;
      (*(volatile uint8_t *)(0x6F)) |= (1 << (2));
    } else {
      (*(volatile uint16_t *)(0x8A)) = motpwm_motor_r;
    }
  }
}


void __vector_13 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_13 (void) {
  if (((*(volatile uint8_t *)((0x09) + 0x20))&(1 << (5)))) {
    (*(volatile uint8_t *)((0x0B) + 0x20))=((*(volatile uint8_t *)((0x0B) + 0x20))&~(unsigned char)(1 << (6)))|((motpwm_flags&0x01)?(1 << (6)):0);
    (*(volatile uint16_t *)(0x88)) = motpwm_motor_l;
    (*(volatile uint8_t *)(0x6F)) &= (uint8_t) (~(1 << (1)));
  }
}


void __vector_14 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_14 (void) {
  if (((*(volatile uint8_t *)((0x09) + 0x20))&(1 << (4)))) {
    (*(volatile uint8_t *)((0x0B) + 0x20))=((*(volatile uint8_t *)((0x0B) + 0x20))&~(unsigned char)(1 << (7)))|((motpwm_flags&0x02)?(1 << (7)):0);
    (*(volatile uint16_t *)(0x8A)) = motpwm_motor_r;
    (*(volatile uint8_t *)(0x6F)) &= (uint8_t) (~(1 << (2)));
  }
}
