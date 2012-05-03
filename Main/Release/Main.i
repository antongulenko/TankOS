# 1 ".././Main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 ".././Main.c"
# 12 ".././Main.c"
# 1 ".././kernel/nibobee.h" 1
# 15 ".././kernel/nibobee.h"
# 1 "..\\..\\AntonAvrLib/kernel/clock.h" 1
# 11 "..\\..\\AntonAvrLib/kernel/clock.h"
# 1 "..\\..\\AntonAvrLib/kernel/../anton_std.h" 1
# 14 "..\\..\\AntonAvrLib/kernel/../anton_std.h"
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
# 15 "..\\..\\AntonAvrLib/kernel/../anton_std.h" 2
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
# 16 "..\\..\\AntonAvrLib/kernel/../anton_std.h" 2







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
# 24 "..\\..\\AntonAvrLib/kernel/../anton_std.h" 2

typedef enum {
 FALSE,
 TRUE
} BOOL;

asm ("__RAMPZ__ = 0x3b");
# 12 "..\\..\\AntonAvrLib/kernel/clock.h" 2


extern uint32_t milliseconds_running;
# 16 ".././kernel/nibobee.h" 2
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

void blinkLeds(PLedGroup leds, uint16_t ledMask, const uint8_t times);
void blinkAllLeds(PLedGroup leds, const uint8_t times);
# 12 "..\\..\\AntonAvrLib/kernel/reset_condition.h" 2


uint8_t getResetStatus();


uint16_t resetStatusBitmask();





void blink_reset_condition(PLedGroup leds);
# 17 ".././kernel/nibobee.h" 2
# 1 "..\\..\\AntonAvrLib/anton_std.h" 1
# 18 ".././kernel/nibobee.h" 2

# 1 "..\\..\\AntonAvrLib/kernel/processes/scheduler.h" 1
# 12 "..\\..\\AntonAvrLib/kernel/processes/scheduler.h"
void schedule_next();
# 20 ".././kernel/nibobee.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/processes/process_ext.h" 1
# 16 "..\\..\\AntonAvrLib/kernel/processes/process_ext.h"
# 1 "..\\..\\AntonAvrLib/kernel/processes/process.h" 1
# 11 "..\\..\\AntonAvrLib/kernel/processes/process.h"
# 1 "..\\..\\AntonAvrLib/kernel/processes/../../anton_std.h" 1
# 12 "..\\..\\AntonAvrLib/kernel/processes/process.h" 2

typedef void* Process;




typedef void ProcessEntryPoint( );


Process getCurrentProcess();
# 30 "..\\..\\AntonAvrLib/kernel/processes/process.h"
Process createProcess(ProcessEntryPoint entryPoint);






Process createProcess2(ProcessEntryPoint entryPoint, void *processArgument);







Process createProcess3(ProcessEntryPoint entryPoint, void *processArgument, uint16_t stackSize, uint8_t additionalMemory);



void *getProcessMemory(Process proc);




void switchProcess(Process newProcess);
# 17 "..\\..\\AntonAvrLib/kernel/processes/process_ext.h" 2


uint8_t getProcessStackSize(Process process);




uint16_t getFreeProcessStackSize(Process process);



uint16_t getProcessNumber(Process process);




void freeProcess(Process process);
# 21 ".././kernel/nibobee.h" 2



# 1 ".././kernel/nibobee_button.h" 1
# 11 ".././kernel/nibobee_button.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/button.h" 1
# 14 "..\\..\\AntonAvrLib/kernel/devices/button.h"
typedef struct {
 PPin pin;
} Button, *PButton;

typedef struct {
 PButton button;
 uint8_t pinChangeInterruptNumber;
} InterruptButton, *PInterruptButton;


BOOL buttonStatus(PButton button);
# 12 ".././kernel/nibobee_button.h" 2

extern Button ButtonRightBackward;
extern Button ButtonRightForward;
extern Button ButtonLeftBackward;
extern Button ButtonLeftForward;
# 25 ".././kernel/nibobee.h" 2
# 1 ".././kernel/nibobee_led.h" 1
# 11 ".././kernel/nibobee_led.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/led.h" 1
# 12 ".././kernel/nibobee_led.h" 2

extern Led LeftYellow;
extern Led LeftRed;
extern Led RightRed;
extern Led RightYellow;
extern LedGroup RedLeds;
extern LedGroup YellowLeds;
extern LedGroup RightLeds;
extern LedGroup LeftLeds;
extern LedGroup AllLeds;
# 26 ".././kernel/nibobee.h" 2
# 1 ".././kernel/nibobee_motor.h" 1
# 11 ".././kernel/nibobee_motor.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.h" 1
# 11 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.h"
# 1 "..\\..\\AntonAvrLib/kernel/devices/timer.h" 1
# 20 "..\\..\\AntonAvrLib/kernel/devices/timer.h"
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
# 12 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/devices/port_m1284P.h" 1
# 13 "..\\..\\AntonAvrLib/kernel/devices/port_m1284P.h"
extern Port PortA; extern Pin PinA0; extern Pin PinA1; extern Pin PinA2; extern Pin PinA3; extern Pin PinA4; extern Pin PinA5; extern Pin PinA6; extern Pin PinA7;
extern Port PortB; extern Pin PinB0; extern Pin PinB1; extern Pin PinB2; extern Pin PinB3; extern Pin PinB4; extern Pin PinB5; extern Pin PinB6; extern Pin PinB7;
extern Port PortC; extern Pin PinC0; extern Pin PinC1; extern Pin PinC2; extern Pin PinC3; extern Pin PinC4; extern Pin PinC5; extern Pin PinC6; extern Pin PinC7;
extern Port PortD; extern Pin PinD0; extern Pin PinD1; extern Pin PinD2; extern Pin PinD3; extern Pin PinD4; extern Pin PinD5; extern Pin PinD6; extern Pin PinD7;
# 13 "..\\..\\AntonAvrLib/kernel/devices/timer_m1284P.h" 2

extern TimerConfig Timer0;
extern TimerConfig Timer1;
extern TimerConfig Timer2;
extern TimerConfig Timer3;

extern Timer Timer0A;
extern Timer Timer0B;
extern Timer Timer1A;
extern Timer Timer1B;
extern Timer Timer2A;
extern Timer Timer2B;
extern Timer Timer3A;
extern Timer Timer3B;
# 12 ".././kernel/nibobee_motor.h" 2
# 1 "..\\..\\AntonAvrLib/kernel/devices/motor.h" 1
# 18 "..\\..\\AntonAvrLib/kernel/devices/motor.h"
typedef struct {
 uint8_t flags;
 PPin direction;
 PTimer pwmTimer;
} Motor, *PMotor;

typedef enum {
 FORWARD = 0,
 BACKWARD = 1
} MotorDirection;


void stopMotor(PMotor motor);



uint16_t getSpeed(PMotor motor);
MotorDirection getDirection(PMotor motor);
void setSpeed(PMotor motor, uint16_t speed, MotorDirection direction);
void setSpeedForward(PMotor motor, uint16_t speed);
void setSpeedBackward(PMotor motor, uint16_t speed);







int16_t getDirSpeed(PMotor motor);
void setDirSpeed(PMotor motor, int16_t speed);
# 13 ".././kernel/nibobee_motor.h" 2

extern Motor LeftMotor;
extern Motor RightMotor;
# 27 ".././kernel/nibobee.h" 2

# 1 ".././kernel/analog_ext.h" 1
# 11 ".././kernel/analog_ext.h"
# 1 ".././kernel/nibobee.h" 1
# 12 ".././kernel/analog_ext.h" 2
# 1 "..\\..\\..\\NIBObeeLib\\include/nibobee/analog.h" 1
# 49 "..\\..\\..\\NIBObeeLib\\include/nibobee/analog.h"
enum {
  ANALOG_EXT0,
  ANALOG_EXT1,
  ANALOG_EXT2,
  ANALOG_EXT3,
  ANALOG_VOLT,
  ANALOG_L0,
  ANALOG_C0,
  ANALOG_R0,
  ANALOG_L1,
  ANALOG_C1,
  ANALOG_R1,
};







void analog_init();





uint16_t analog_getValue(uint8_t idx);




void analog_irq_hook();
# 13 ".././kernel/analog_ext.h" 2



void trigger_samplings();
# 29 ".././kernel/nibobee.h" 2
# 13 ".././Main.c" 2
# 26 ".././Main.c"
# 1 ".././Main_test_switchProcess.c" 1


long long mainCounter = 0;
long long newCounter = 0;

Process mainProcess;
Process newProcess;

void newProcessEntry() {
 while (1) {
  newCounter++;
  switchProcess(mainProcess);
 }
}

int main(void) {
 mainProcess = getCurrentProcess();
 newProcess = createProcess(&newProcessEntry);
 while (1) {
  mainCounter++;
  switchProcess(newProcess);
 }
}
# 27 ".././Main.c" 2
