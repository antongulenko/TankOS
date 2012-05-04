# 1 "../kernel/devices/motor.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../kernel/devices/motor.c"







# 1 "../kernel/devices/motor.h" 1
# 11 "../kernel/devices/motor.h"
# 1 "../kernel/devices/../../anton_std.h" 1
# 14 "../kernel/devices/../../anton_std.h"
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
# 15 "../kernel/devices/../../anton_std.h" 2
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
# 16 "../kernel/devices/../../anton_std.h" 2
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
# 17 "../kernel/devices/../../anton_std.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr/4.5.1/../../../../avr/include/avr/interrupt.h" 1 3
# 18 "../kernel/devices/../../anton_std.h" 2

typedef enum {
 FALSE,
 TRUE
} BOOL;

typedef uint8_t byte;

asm ("__RAMPZ__ = 0x3b");
# 12 "../kernel/devices/motor.h" 2
# 1 "../kernel/devices/timer.h" 1
# 12 "../kernel/devices/timer.h"
# 1 "../kernel/devices/port.h" 1
# 13 "../kernel/devices/port.h"
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
# 13 "../kernel/devices/timer.h" 2






typedef enum {
 wgm_normal,
 clear_timer_on_match,


 pwm_fast_FF,
 pwm_phase_correct_FF,


 pwm_phase_correct,
 pwm_fast,


 pwm_phase_correct_9bit,
 pwm_phase_correct_10bit,
 pwm_fast_9bit,
 pwm_fast_10bit,
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





typedef struct {
 uint8_t flags;
 volatile uint8_t *controlRegisterA;
 volatile uint8_t *controlRegisterB;
 volatile uint8_t *interruptMaskRegister;
} TimerConfig, *PTimerConfig;

typedef enum {
 TIMER_A,
 TIMER_B
} TIMER_TYPE;

typedef struct {
 PTimerConfig timer;
 volatile uint8_t *outputCompareRegister;
 TIMER_TYPE type;
 PPin outputComparePin;
} Timer, *PTimer;


void setTimerClockSelect(PTimerConfig timer, TimerClockSelect cs);
void setWaveformGenerationMode(PTimerConfig timer, WaveformGenerationMode wgm);

void setCompareMatchOutputMode(PTimer timer, CompareMatchOutputMode com);

void enableTimerInterrupt(PTimer timer);
void enableOutputCompare(PTimer timer);
void disableOutputCompare(PTimer timer);


void setTimerCompareValue(PTimer timer, uint16_t value);


uint16_t getTimerCompareValue(PTimer timer);
# 13 "../kernel/devices/motor.h" 2







typedef struct {
 uint8_t flags;
 PPin direction;
 PTimer pwmTimer;
} Motor, *PMotor;

typedef struct {
 Motor motor;
 PPin direction2;
} Motor2Pins, *PMotor2Pins;

typedef enum {
 FORWARD = 0,
 BACKWARD = 1,
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
# 9 "../kernel/devices/motor.c" 2




void stopMotor(PMotor motor) {
 disableOutputCompare(motor->pwmTimer);

 setTimerCompareValue(motor->pwmTimer, 0);
 if (motor->flags & (1 << 3)) {

  setPinZero(motor->direction);
  setPinZero((((PMotor2Pins) motor)->direction2));
 }
}

uint16_t getSpeed(PMotor motor) {
 return getTimerCompareValue(motor->pwmTimer);
}

MotorDirection getDirection(PMotor motor) {
 MotorDirection val;
 if (motor->flags & (1 << 3)) {
  BOOL dir1 = readPin(motor->direction);
  BOOL dir2 = readPin((((PMotor2Pins) motor)->direction2));
  if (dir1 && !dir2) val = FORWARD;
  else if (!dir1 && dir2) val = BACKWARD;
  else val = MOTOR_STOPPED;
 } else {
  val = readPin(motor->direction);
 }
 if (val != MOTOR_STOPPED && (motor->flags & (1 << 2))) val = !val;
 return val;
}

void setSpeed(PMotor motor, uint16_t speed, MotorDirection direction) {
 if (direction == MOTOR_STOPPED || speed == 0) {
  stopMotor(motor);
  return;
 }
 if (motor->flags & (1 << 2)) direction = !direction;

 if (motor->flags & (1 << 3)) {
  if (direction == FORWARD) {
   setPinOne(motor->direction);
   setPinZero((((PMotor2Pins) motor)->direction2));
  } else {
   setPinZero(motor->direction);
   setPinOne((((PMotor2Pins) motor)->direction2));
  }
 } else {
  writePin(motor->direction, (BOOL) direction);
 }
 setTimerCompareValue(motor->pwmTimer, speed);
 enableOutputCompare(motor->pwmTimer);
}

void setSpeedForward(PMotor motor, uint16_t speed) {
 setSpeed(motor, speed, FORWARD);
}

void setSpeedBackward(PMotor motor, uint16_t speed) {
 setSpeed(motor, speed, BACKWARD);
}

int16_t getDirSpeed(PMotor motor) {
 MotorDirection dir = getDirection(motor);
 if (dir == MOTOR_STOPPED) return 0;
 int16_t val = __builtin_abs((int16_t) (getSpeed(motor) >> 1));
 if (dir == BACKWARD)
  val *= -1;
 return val;
}

void setDirSpeed(PMotor motor, int16_t speed) {
 uint16_t absv = __builtin_abs(speed);

 if (!(absv & (1 << 15))) absv = absv << 1;
 setSpeed(motor, absv, speed < 0 ? BACKWARD : FORWARD);
}
