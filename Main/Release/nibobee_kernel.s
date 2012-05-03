	.file	"nibobee_kernel.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.AperiodicJobWrapper,"ax",@progbits
.global	AperiodicJobWrapper
	.type	AperiodicJobWrapper, @function
AperiodicJobWrapper:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	adiw r28,38
.L2:
	ldd r30,Y+1
	ldd r31,Y+2
	icall
	std Y+12,__zero_reg__
	std Y+11,__zero_reg__
	call schedule_next
	rjmp .L2
	.size	AperiodicJobWrapper, .-AperiodicJobWrapper
	.section	.text.PeriodicJobWrapper,"ax",@progbits
.global	PeriodicJobWrapper
	.type	PeriodicJobWrapper, @function
PeriodicJobWrapper:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	adiw r28,38
.L4:
	ldd r30,Y+1
	ldd r31,Y+2
	icall
	ldd r24,Y+11
	ldd r25,Y+12
	ldd r26,Y+13
	ldd r27,Y+14
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
	call schedule_next
	rjmp .L4
	.size	PeriodicJobWrapper, .-PeriodicJobWrapper
	.section	.text.ProcessGraveyard,"ax",@progbits
.global	ProcessGraveyard
	.type	ProcessGraveyard, @function
ProcessGraveyard:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call processor_loop_idle
/* epilogue start */
	ret
	.size	ProcessGraveyard, .-ProcessGraveyard
	.section	.text.init_ports_m1284P,"ax",@progbits
.global	init_ports_m1284P
	.type	init_ports_m1284P, @function
init_ports_m1284P:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r26,lo8(PortA)
	ldi r27,hi8(PortA)
	ldi r30,lo8(C.44.3099)
	ldi r31,hi8(C.44.3099)
	ldi r24,lo8(6)
.L7:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L7
	ldi r26,lo8(PinA0)
	ldi r27,hi8(PinA0)
	ldi r30,lo8(C.45.3100)
	ldi r31,hi8(C.45.3100)
	ldi r24,lo8(3)
.L8:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L8
	ldi r26,lo8(PinA1)
	ldi r27,hi8(PinA1)
	ldi r30,lo8(C.46.3101)
	ldi r31,hi8(C.46.3101)
	ldi r24,lo8(3)
.L9:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L9
	ldi r26,lo8(PinA2)
	ldi r27,hi8(PinA2)
	ldi r30,lo8(C.47.3102)
	ldi r31,hi8(C.47.3102)
	ldi r24,lo8(3)
.L10:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L10
	ldi r26,lo8(PinA3)
	ldi r27,hi8(PinA3)
	ldi r30,lo8(C.48.3103)
	ldi r31,hi8(C.48.3103)
	ldi r24,lo8(3)
.L11:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L11
	ldi r26,lo8(PinA4)
	ldi r27,hi8(PinA4)
	ldi r30,lo8(C.49.3104)
	ldi r31,hi8(C.49.3104)
	ldi r24,lo8(3)
.L12:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L12
	ldi r26,lo8(PinA5)
	ldi r27,hi8(PinA5)
	ldi r30,lo8(C.50.3105)
	ldi r31,hi8(C.50.3105)
	ldi r24,lo8(3)
.L13:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L13
	ldi r26,lo8(PinA6)
	ldi r27,hi8(PinA6)
	ldi r30,lo8(C.51.3106)
	ldi r31,hi8(C.51.3106)
	ldi r24,lo8(3)
.L14:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L14
	ldi r26,lo8(PinA7)
	ldi r27,hi8(PinA7)
	ldi r30,lo8(C.52.3107)
	ldi r31,hi8(C.52.3107)
	ldi r24,lo8(3)
.L15:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L15
	ldi r26,lo8(PortB)
	ldi r27,hi8(PortB)
	ldi r30,lo8(C.53.3108)
	ldi r31,hi8(C.53.3108)
	ldi r24,lo8(6)
.L16:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L16
	ldi r26,lo8(PinB0)
	ldi r27,hi8(PinB0)
	ldi r30,lo8(C.54.3109)
	ldi r31,hi8(C.54.3109)
	ldi r24,lo8(3)
.L17:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L17
	ldi r26,lo8(PinB1)
	ldi r27,hi8(PinB1)
	ldi r30,lo8(C.55.3110)
	ldi r31,hi8(C.55.3110)
	ldi r24,lo8(3)
.L18:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L18
	ldi r26,lo8(PinB2)
	ldi r27,hi8(PinB2)
	ldi r30,lo8(C.56.3111)
	ldi r31,hi8(C.56.3111)
	ldi r24,lo8(3)
.L19:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L19
	ldi r26,lo8(PinB3)
	ldi r27,hi8(PinB3)
	ldi r30,lo8(C.57.3112)
	ldi r31,hi8(C.57.3112)
	ldi r24,lo8(3)
.L20:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L20
	ldi r26,lo8(PinB4)
	ldi r27,hi8(PinB4)
	ldi r30,lo8(C.58.3113)
	ldi r31,hi8(C.58.3113)
	ldi r24,lo8(3)
.L21:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L21
	ldi r26,lo8(PinB5)
	ldi r27,hi8(PinB5)
	ldi r30,lo8(C.59.3114)
	ldi r31,hi8(C.59.3114)
	ldi r24,lo8(3)
.L22:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L22
	ldi r26,lo8(PinB6)
	ldi r27,hi8(PinB6)
	ldi r30,lo8(C.60.3115)
	ldi r31,hi8(C.60.3115)
	ldi r24,lo8(3)
.L23:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L23
	ldi r26,lo8(PinB7)
	ldi r27,hi8(PinB7)
	ldi r30,lo8(C.61.3116)
	ldi r31,hi8(C.61.3116)
	ldi r24,lo8(3)
.L24:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L24
	ldi r26,lo8(PortC)
	ldi r27,hi8(PortC)
	ldi r30,lo8(C.62.3117)
	ldi r31,hi8(C.62.3117)
	ldi r24,lo8(6)
.L25:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L25
	ldi r26,lo8(PinC0)
	ldi r27,hi8(PinC0)
	ldi r30,lo8(C.63.3118)
	ldi r31,hi8(C.63.3118)
	ldi r24,lo8(3)
.L26:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L26
	ldi r26,lo8(PinC1)
	ldi r27,hi8(PinC1)
	ldi r30,lo8(C.64.3119)
	ldi r31,hi8(C.64.3119)
	ldi r24,lo8(3)
.L27:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L27
	ldi r26,lo8(PinC2)
	ldi r27,hi8(PinC2)
	ldi r30,lo8(C.65.3120)
	ldi r31,hi8(C.65.3120)
	ldi r24,lo8(3)
.L28:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L28
	ldi r26,lo8(PinC3)
	ldi r27,hi8(PinC3)
	ldi r30,lo8(C.66.3121)
	ldi r31,hi8(C.66.3121)
	ldi r24,lo8(3)
.L29:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L29
	ldi r26,lo8(PinC4)
	ldi r27,hi8(PinC4)
	ldi r30,lo8(C.67.3122)
	ldi r31,hi8(C.67.3122)
	ldi r24,lo8(3)
.L30:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L30
	ldi r26,lo8(PinC5)
	ldi r27,hi8(PinC5)
	ldi r30,lo8(C.68.3123)
	ldi r31,hi8(C.68.3123)
	ldi r24,lo8(3)
.L31:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L31
	ldi r26,lo8(PinC6)
	ldi r27,hi8(PinC6)
	ldi r30,lo8(C.69.3124)
	ldi r31,hi8(C.69.3124)
	ldi r24,lo8(3)
.L32:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L32
	ldi r26,lo8(PinC7)
	ldi r27,hi8(PinC7)
	ldi r30,lo8(C.70.3125)
	ldi r31,hi8(C.70.3125)
	ldi r24,lo8(3)
.L33:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L33
	ldi r26,lo8(PortD)
	ldi r27,hi8(PortD)
	ldi r30,lo8(C.71.3126)
	ldi r31,hi8(C.71.3126)
	ldi r24,lo8(6)
.L34:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L34
	ldi r26,lo8(PinD0)
	ldi r27,hi8(PinD0)
	ldi r30,lo8(C.72.3127)
	ldi r31,hi8(C.72.3127)
	ldi r24,lo8(3)
.L35:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L35
	ldi r26,lo8(PinD1)
	ldi r27,hi8(PinD1)
	ldi r30,lo8(C.73.3128)
	ldi r31,hi8(C.73.3128)
	ldi r24,lo8(3)
.L36:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L36
	ldi r26,lo8(PinD2)
	ldi r27,hi8(PinD2)
	ldi r30,lo8(C.74.3129)
	ldi r31,hi8(C.74.3129)
	ldi r24,lo8(3)
.L37:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L37
	ldi r26,lo8(PinD3)
	ldi r27,hi8(PinD3)
	ldi r30,lo8(C.75.3130)
	ldi r31,hi8(C.75.3130)
	ldi r24,lo8(3)
.L38:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L38
	ldi r26,lo8(PinD4)
	ldi r27,hi8(PinD4)
	ldi r30,lo8(C.76.3131)
	ldi r31,hi8(C.76.3131)
	ldi r24,lo8(3)
.L39:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L39
	ldi r26,lo8(PinD5)
	ldi r27,hi8(PinD5)
	ldi r30,lo8(C.77.3132)
	ldi r31,hi8(C.77.3132)
	ldi r24,lo8(3)
.L40:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L40
	ldi r26,lo8(PinD6)
	ldi r27,hi8(PinD6)
	ldi r30,lo8(C.78.3133)
	ldi r31,hi8(C.78.3133)
	ldi r24,lo8(3)
.L41:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L41
	ldi r26,lo8(PinD7)
	ldi r27,hi8(PinD7)
	ldi r30,lo8(C.79.3134)
	ldi r31,hi8(C.79.3134)
	ldi r24,lo8(3)
.L42:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L42
/* epilogue start */
	ret
	.size	init_ports_m1284P, .-init_ports_m1284P
	.section	.init8,"ax",@progbits
.global	init_ports_m1284P_kernel_init
	.type	init_ports_m1284P_kernel_init, @function
init_ports_m1284P_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_ports_m1284P
/* epilogue start */
	.size	init_ports_m1284P_kernel_init, .-init_ports_m1284P_kernel_init
	.section	.text.init_timer_m1284P,"ax",@progbits
.global	init_timer_m1284P
	.type	init_timer_m1284P, @function
init_timer_m1284P:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r26,lo8(Timer0)
	ldi r27,hi8(Timer0)
	ldi r30,lo8(C.32.3087)
	ldi r31,hi8(C.32.3087)
	ldi r24,lo8(7)
.L81:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L81
	ldi r26,lo8(Timer1)
	ldi r27,hi8(Timer1)
	ldi r30,lo8(C.33.3088)
	ldi r31,hi8(C.33.3088)
	ldi r24,lo8(7)
.L82:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L82
	ldi r26,lo8(Timer2)
	ldi r27,hi8(Timer2)
	ldi r30,lo8(C.34.3089)
	ldi r31,hi8(C.34.3089)
	ldi r24,lo8(7)
.L83:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L83
	ldi r26,lo8(Timer3)
	ldi r27,hi8(Timer3)
	ldi r30,lo8(C.35.3090)
	ldi r31,hi8(C.35.3090)
	ldi r24,lo8(7)
.L84:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L84
	ldi r26,lo8(Timer0A)
	ldi r27,hi8(Timer0A)
	ldi r30,lo8(C.36.3091)
	ldi r31,hi8(C.36.3091)
	ldi r24,lo8(8)
.L85:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L85
	ldi r26,lo8(Timer0B)
	ldi r27,hi8(Timer0B)
	ldi r30,lo8(C.37.3092)
	ldi r31,hi8(C.37.3092)
	ldi r24,lo8(8)
.L86:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L86
	ldi r26,lo8(Timer1A)
	ldi r27,hi8(Timer1A)
	ldi r30,lo8(C.38.3093)
	ldi r31,hi8(C.38.3093)
	ldi r24,lo8(8)
.L87:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L87
	ldi r26,lo8(Timer1B)
	ldi r27,hi8(Timer1B)
	ldi r30,lo8(C.39.3094)
	ldi r31,hi8(C.39.3094)
	ldi r24,lo8(8)
.L88:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L88
	ldi r26,lo8(Timer2A)
	ldi r27,hi8(Timer2A)
	ldi r30,lo8(C.40.3095)
	ldi r31,hi8(C.40.3095)
	ldi r24,lo8(8)
.L89:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L89
	ldi r26,lo8(Timer2B)
	ldi r27,hi8(Timer2B)
	ldi r30,lo8(C.41.3096)
	ldi r31,hi8(C.41.3096)
	ldi r24,lo8(8)
.L90:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L90
	ldi r26,lo8(Timer3A)
	ldi r27,hi8(Timer3A)
	ldi r30,lo8(C.42.3097)
	ldi r31,hi8(C.42.3097)
	ldi r24,lo8(8)
.L91:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L91
	ldi r26,lo8(Timer3B)
	ldi r27,hi8(Timer3B)
	ldi r30,lo8(C.43.3098)
	ldi r31,hi8(C.43.3098)
	ldi r24,lo8(8)
.L92:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L92
/* epilogue start */
	ret
	.size	init_timer_m1284P, .-init_timer_m1284P
	.section	.init8
.global	init_timer_m1284P_kernel_init
	.type	init_timer_m1284P_kernel_init, @function
init_timer_m1284P_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_timer_m1284P
/* epilogue start */
	.size	init_timer_m1284P_kernel_init, .-init_timer_m1284P_kernel_init
	.section	.text.init_nibobee_leds,"ax",@progbits
.global	init_nibobee_leds
	.type	init_nibobee_leds, @function
init_nibobee_leds:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(PinB0)
	ldi r25,hi8(PinB0)
	sts LeftYellow+1,r25
	sts LeftYellow,r24
	call setPinOutput
	ldi r24,lo8(PinB1)
	ldi r25,hi8(PinB1)
	sts LeftRed+1,r25
	sts LeftRed,r24
	call setPinOutput
	ldi r24,lo8(PinB2)
	ldi r25,hi8(PinB2)
	sts RightRed+1,r25
	sts RightRed,r24
	call setPinOutput
	ldi r24,lo8(PinB3)
	ldi r25,hi8(PinB3)
	sts RightYellow+1,r25
	sts RightYellow,r24
	call setPinOutput
	ldi r26,lo8(RedLeds)
	ldi r27,hi8(RedLeds)
	ldi r30,lo8(C.27.3081)
	ldi r31,hi8(C.27.3081)
	ldi r24,lo8(3)
.L107:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L107
	ldi r26,lo8(YellowLeds)
	ldi r27,hi8(YellowLeds)
	ldi r30,lo8(C.28.3082)
	ldi r31,hi8(C.28.3082)
	ldi r24,lo8(3)
.L108:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L108
	ldi r26,lo8(RightLeds)
	ldi r27,hi8(RightLeds)
	ldi r30,lo8(C.29.3083)
	ldi r31,hi8(C.29.3083)
	ldi r24,lo8(3)
.L109:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L109
	ldi r26,lo8(LeftLeds)
	ldi r27,hi8(LeftLeds)
	ldi r30,lo8(C.30.3084)
	ldi r31,hi8(C.30.3084)
	ldi r24,lo8(3)
.L110:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L110
	ldi r26,lo8(AllLeds)
	ldi r27,hi8(AllLeds)
	ldi r30,lo8(C.31.3085)
	ldi r31,hi8(C.31.3085)
	ldi r24,lo8(3)
.L111:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L111
/* epilogue start */
	ret
	.size	init_nibobee_leds, .-init_nibobee_leds
	.section	.init8
.global	init_nibobee_leds_kernel_init
	.type	init_nibobee_leds_kernel_init, @function
init_nibobee_leds_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_nibobee_leds
/* epilogue start */
	.size	init_nibobee_leds_kernel_init, .-init_nibobee_leds_kernel_init
	.section	.text.initMotor,"ax",@progbits
.global	initMotor
	.type	initMotor, @function
initMotor:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldd r24,Y+3
	ldd r25,Y+4
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call setTimerCompareValue
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinOutput
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	initMotor, .-initMotor
	.section	.text.init_nibobee_motors,"ax",@progbits
.global	init_nibobee_motors
	.type	init_nibobee_motors, @function
init_nibobee_motors:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r26,lo8(LeftMotor)
	ldi r27,hi8(LeftMotor)
	ldi r30,lo8(C.25.3077)
	ldi r31,hi8(C.25.3077)
	ldi r24,lo8(5)
.L120:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L120
	ldi r24,lo8(LeftMotor)
	ldi r25,hi8(LeftMotor)
	call initMotor
	ldi r26,lo8(RightMotor)
	ldi r27,hi8(RightMotor)
	ldi r30,lo8(C.26.3078)
	ldi r31,hi8(C.26.3078)
	ldi r24,lo8(5)
.L121:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L121
	ldi r24,lo8(RightMotor)
	ldi r25,hi8(RightMotor)
	call initMotor
/* epilogue start */
	ret
	.size	init_nibobee_motors, .-init_nibobee_motors
	.section	.init8
.global	init_nibobee_motors_kernel_init
	.type	init_nibobee_motors_kernel_init, @function
init_nibobee_motors_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_nibobee_motors
/* epilogue start */
	.size	init_nibobee_motors_kernel_init, .-init_nibobee_motors_kernel_init
	.section	.text.init_reset_condition,"ax",@progbits
.global	init_reset_condition
	.type	init_reset_condition, @function
init_reset_condition:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,84-32
	sts current_reset_status,r24
	out 84-32,__zero_reg__
/* epilogue start */
	ret
	.size	init_reset_condition, .-init_reset_condition
	.section	.init8
.global	init_reset_condition_kernel_init
	.type	init_reset_condition_kernel_init, @function
init_reset_condition_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_reset_condition
/* epilogue start */
	.size	init_reset_condition_kernel_init, .-init_reset_condition_kernel_init
	.section	.text.getResetStatus,"ax",@progbits
.global	getResetStatus
	.type	getResetStatus, @function
getResetStatus:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,current_reset_status
/* epilogue start */
	ret
	.size	getResetStatus, .-getResetStatus
	.section	.text.init_process,"ax",@progbits
.global	init_process
	.type	init_process, @function
init_process:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(16127)
	ldi r25,hi8(16127)
	sts __malloc_heap_end+1,r25
	sts __malloc_heap_end,r24
	sts __malloc_margin+1,__zero_reg__
	sts __malloc_margin,__zero_reg__
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldi r22,lo8(8)
	ldi r23,hi8(8)
	call calloc
	movw r30,r24
	sbiw r24,0
	breq .L130
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	rjmp .L129
.L130:
	ldi r30,lo8(0)
	ldi r31,hi8(0)
.L129:
	sts __current_process+1,r31
	sts __current_process,r30
/* epilogue start */
	ret
	.size	init_process, .-init_process
	.section	.init8
.global	init_process_kernel_init
	.type	init_process_kernel_init, @function
init_process_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_process
/* epilogue start */
	.size	init_process_kernel_init, .-init_process_kernel_init
	.section	.fini1,"ax",@progbits
.global	MainProcessEnd
	.type	MainProcessEnd, @function
MainProcessEnd:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call processor_loop_idle
/* epilogue start */
	ret
	.size	MainProcessEnd, .-MainProcessEnd
	.section	.text.createProcessBase3,"ax",@progbits
.global	createProcessBase3
	.type	createProcessBase3, @function
createProcessBase3:
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r13,r24
	mov r12,r25
	movw r14,r22
	movw r10,r20
	movw r24,r20
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	std Y+1,r18
	call calloc
	movw r16,r24
	ldd r18,Y+1
	sbiw r24,0
	breq .L138
	movw r20,r10
	add r20,r24
	adc r21,r25
	ldi r24,lo8(gs(ProcessGraveyard))
	ldi r25,hi8(gs(ProcessGraveyard))
	movw r26,r20
	st X,r24
	movw r30,r20
	sbiw r30,1
	st Z,r25
	movw r30,r20
	sbiw r30,2
	st Z,r13
	movw r30,r20
	sbiw r30,3
	st Z,r12
	mov r22,r18
	ldi r23,lo8(0)
	subi r22,lo8(-(2))
	sbci r23,hi8(-(2))
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	std Y+1,r20
	std Y+2,r21
	call calloc
	movw r30,r24
	ldd r20,Y+1
	ldd r21,Y+2
	sbiw r24,0
	breq .L135
	movw r24,r20
	sbiw r24,38
	std Z+1,r25
	st Z,r24
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L136
	rjmp .L140
.L135:
	movw r24,r16
	call free
	rjmp .L138
.L140:
	movw r14,r30
.L136:
	movw r26,r20
	sbiw r26,30
	st X,r14
	subi r20,lo8(-(-31))
	sbci r21,hi8(-(-31))
	movw r26,r20
	st X,r15
	rjmp .L134
.L138:
	ldi r30,lo8(0)
	ldi r31,hi8(0)
.L134:
	movw r24,r30
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	createProcessBase3, .-createProcessBase3
	.section	.text.createProcessBase2,"ax",@progbits
.global	createProcessBase2
	.type	createProcessBase2, @function
createProcessBase2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,lo8(512)
	ldi r21,hi8(512)
	ldi r18,lo8(0)
	call createProcessBase3
/* epilogue start */
	ret
	.size	createProcessBase2, .-createProcessBase2
	.section	.text.createProcessBase,"ax",@progbits
.global	createProcessBase
	.type	createProcessBase, @function
createProcessBase:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call createProcessBase2
/* epilogue start */
	ret
	.size	createProcessBase, .-createProcessBase
	.section	.text.switchContext,"ax",@progbits
.global	switchContext
	.type	switchContext, @function
switchContext:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  102 "..\..\AntonAvrLib/kernel/processes/process.kernel" 1
	push r0				
in r0, __SREG__		
cli					
push r0				
in r0, __RAMPZ__		
push r0				
push r1				
clr r1				
push r2			
push r3			
push r4			
push r5			
push r6			
push r7			
push r8			
push r9			
push r10			
push r11			
push r12			
push r13			
push r14			
push r15			
push r16			
push r17			
push r18			
push r19			
push r20			
push r21			
push r22			
push r23			
push r24			
push r25			
push r26			
push r27			
push r28			
push r29			
push r30			
push r31			

 ;  0 "" 2
 ;  103 "..\..\AntonAvrLib/kernel/processes/process.kernel" 1
	movw r26, r24
 ;  0 "" 2
 ;  104 "..\..\AntonAvrLib/kernel/processes/process.kernel" 1
	in r0, __SP_L__			
st X+, r0					
in r0, __SP_H__			
st X+, r0					

 ;  0 "" 2
 ;  105 "..\..\AntonAvrLib/kernel/processes/process.kernel" 1
	movw r26, r22
 ;  0 "" 2
 ;  106 "..\..\AntonAvrLib/kernel/processes/process.kernel" 1
	ld r0, X+					
out __SP_L__, r0			
ld r0, X+					
out __SP_H__, r0			

 ;  0 "" 2
 ;  107 "..\..\AntonAvrLib/kernel/processes/process.kernel" 1
	pop r31			
pop r30			
pop r29			
pop r28			
pop r27			
pop r26			
pop r25			
pop r24			
pop r23			
pop r22			
pop r21			
pop r20			
pop r19			
pop r18			
pop r17			
pop r16			
pop r15			
pop r14			
pop r13			
pop r12			
pop r11			
pop r10			
pop r9				
pop r8				
pop r7				
pop r6				
pop r5				
pop r4				
pop r3				
pop r2				
pop r1				
pop r0						
out __RAMPZ__, r0			
pop r0						
out __SREG__, r0			
pop r0						

 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
	.size	switchContext, .-switchContext
	.section	.text.getCurrentProcess,"ax",@progbits
.global	getCurrentProcess
	.type	getCurrentProcess, @function
getCurrentProcess:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,__current_process
	lds r25,__current_process+1
/* epilogue start */
	ret
	.size	getCurrentProcess, .-getCurrentProcess
	.section	.text.switchProcess,"ax",@progbits
.global	switchProcess
	.type	switchProcess, @function
switchProcess:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r22,r24
	lds r24,__current_process
	lds r25,__current_process+1
	sts __current_process,r22
	sts __current_process+1,r23
	call switchContext
/* epilogue start */
	ret
	.size	switchProcess, .-switchProcess
	.section	.text.createProcess3,"ax",@progbits
.global	createProcess3
	.type	createProcess3, @function
createProcess3:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r20
	subi r18,lo8(-(6))
	call createProcessBase3
	movw r30,r24
	sbiw r24,0
	breq .L147
	movw r26,r24
	adiw r26,2
	lds r24,__nextProcessNumber
	lds r25,__nextProcessNumber+1
	std Z+3,r25
	std Z+2,r24
	adiw r24,1
	sts __nextProcessNumber+1,r25
	sts __nextProcessNumber,r24
	adiw r26,2+1
	st X,r29
	st -X,r28
	sbiw r26,2
	ldi r18,lo8(38)
	ldi r19,hi8(38)
	sub r18,r28
	sbc r19,r29
	ld r24,Z
	ldd r25,Z+1
	add r24,r18
	adc r25,r19
	adiw r26,4+1
	st X,r25
	st -X,r24
	sbiw r26,4
.L147:
	movw r24,r30
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	createProcess3, .-createProcess3
	.section	.text.createProcess2,"ax",@progbits
.global	createProcess2
	.type	createProcess2, @function
createProcess2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,lo8(512)
	ldi r21,hi8(512)
	ldi r18,lo8(0)
	call createProcess3
/* epilogue start */
	ret
	.size	createProcess2, .-createProcess2
	.section	.text.createProcess,"ax",@progbits
.global	createProcess
	.type	createProcess, @function
createProcess:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call createProcess2
/* epilogue start */
	ret
	.size	createProcess, .-createProcess
	.section	.text.freeProcess,"ax",@progbits
.global	freeProcess
	.type	freeProcess, @function
freeProcess:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	lds r24,__current_process
	lds r25,__current_process+1
	cp r28,r24
	cpc r29,r25
	breq .L150
	movw r30,r28
	adiw r30,2
	ldd r24,Y+2
	ldd r25,Y+3
	sbiw r24,0
	breq .L152
	ldd r24,Z+4
	ldd r25,Z+5
	call free
.L152:
	movw r24,r28
	call free
.L150:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	freeProcess, .-freeProcess
	.section	.text.getProcessStackSize,"ax",@progbits
.global	getProcessStackSize
	.type	getProcessStackSize, @function
getProcessStackSize:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r24,Z+4
/* epilogue start */
	ret
	.size	getProcessStackSize, .-getProcessStackSize
	.section	.text.getFreeProcessStackSize,"ax",@progbits
.global	getFreeProcessStackSize
	.type	getFreeProcessStackSize, @function
getFreeProcessStackSize:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r18,Z+6
	ldd r19,Z+7
	ld r24,Z
	ldd r25,Z+1
	sub r18,r24
	sbc r19,r25
	movw r24,r18
/* epilogue start */
	ret
	.size	getFreeProcessStackSize, .-getFreeProcessStackSize
	.section	.text.getProcessNumber,"ax",@progbits
.global	getProcessNumber
	.type	getProcessNumber, @function
getProcessNumber:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r24,Z+2
	ldd r25,Z+3
/* epilogue start */
	ret
	.size	getProcessNumber, .-getProcessNumber
	.section	.text.getProcessMemory,"ax",@progbits
.global	getProcessMemory
	.type	getProcessMemory, @function
getProcessMemory:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r18,r24
	subi r18,lo8(-(38))
	sbci r19,hi8(-(38))
	movw r24,r18
/* epilogue start */
	ret
	.size	getProcessMemory, .-getProcessMemory
	.section	.text.init_process_ext,"ax",@progbits
.global	init_process_ext
	.type	init_process_ext, @function
init_process_ext:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r26,__current_process
	lds r27,__current_process+1
	movw r30,r26
	adiw r30,2
	adiw r26,2+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,2
	ldi r24,lo8(512)
	ldi r25,hi8(512)
	std Z+3,r25
	std Z+2,r24
	lds r24,__malloc_heap_end
	lds r25,__malloc_heap_end+1
	std Z+5,r25
	std Z+4,r24
/* epilogue start */
	ret
	.size	init_process_ext, .-init_process_ext
	.section	.init8
.global	init_process_ext_kernel_init
	.type	init_process_ext_kernel_init, @function
init_process_ext_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_process_ext
/* epilogue start */
	.size	init_process_ext_kernel_init, .-init_process_ext_kernel_init
	.section	.text.init_clock,"ax",@progbits
.global	init_clock
	.type	init_clock, @function
init_clock:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	init_clock, .-init_clock
	.section	.init8
.global	init_clock_kernel_init
	.type	init_clock_kernel_init, @function
init_clock_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	.size	init_clock_kernel_init, .-init_clock_kernel_init
	.section	.text.dms_schedule,"ax",@progbits
.global	dms_schedule
	.type	dms_schedule, @function
dms_schedule:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,processListHead
	lds r31,processListHead+1
	lds r18,milliseconds_running
	lds r19,milliseconds_running+1
	lds r20,milliseconds_running+2
	lds r21,milliseconds_running+3
	rjmp .L162
.L167:
	movw r26,r30
	adiw r26,38
	adiw r26,9
	ld r24,X+
	ld r25,X
	sbiw r26,9+1
	sbiw r24,0
	breq .L164
	cpi r24,1
	cpc r25,__zero_reg__
	brne .L163
	rjmp .L170
.L164:
	ldd r22,Z+11
	ldd r23,Z+12
	ldd r24,Z+13
	ldd r25,Z+14
	cp r22,r18
	cpc r23,r19
	cpc r24,r20
	cpc r25,r21
	brlo .L163
	rjmp .L169
.L170:
	ldd r24,Z+11
	ldd r25,Z+12
	cpi r24,1
	cpc r25,__zero_reg__
	breq .L169
.L163:
	adiw r26,3
	ld r30,X+
	ld r31,X
	sbiw r26,3+1
.L162:
	sbiw r30,0
	brne .L167
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	rjmp .L166
.L169:
	movw r18,r26
.L166:
	movw r24,r18
/* epilogue start */
	ret
	.size	dms_schedule, .-dms_schedule
	.section	.text.__vector_16,"ax",@progbits
.global	__vector_16
	.type	__vector_16, @function
__vector_16:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  25 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	push r0				
in r0, __SREG__		
cli					
push r0				
in r0, __RAMPZ__		
push r0				
push r1				
clr r1				
push r2			
push r3			
push r4			
push r5			
push r6			
push r7			
push r8			
push r9			
push r10			
push r11			
push r12			
push r13			
push r14			
push r15			
push r16			
push r17			
push r18			
push r19			
push r20			
push r21			
push r22			
push r23			
push r24			
push r25			
push r26			
push r27			
push r28			
push r29			
push r30			
push r31			

 ;  0 "" 2
/* #NOAPP */
	lds r24,milliseconds_running
	lds r25,milliseconds_running+1
	lds r26,milliseconds_running+2
	lds r27,milliseconds_running+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts milliseconds_running,r24
	sts milliseconds_running+1,r25
	sts milliseconds_running+2,r26
	sts milliseconds_running+3,r27
/* #APP */
 ;  33 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	lds r26, __current_process
 ;  0 "" 2
 ;  34 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	lds r27, __current_process + 1
 ;  0 "" 2
 ;  35 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	in r0, __SP_L__			
st X+, r0					
in r0, __SP_H__			
st X+, r0					

 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	call dms_schedule
	movw r18,r24
	sts __current_process+1,r25
	sts __current_process,r24
	sbiw r24,0
	brne .L172
	call processor_loop_idle
.L172:
/* #APP */
 ;  43 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	movw r26, r24
 ;  0 "" 2
 ;  44 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	ld r0, X+					
out __SP_L__, r0			
ld r0, X+					
out __SP_H__, r0			

 ;  0 "" 2
 ;  45 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	pop r31			
pop r30			
pop r29			
pop r28			
pop r27			
pop r26			
pop r25			
pop r24			
pop r23			
pop r22			
pop r21			
pop r20			
pop r19			
pop r18			
pop r17			
pop r16			
pop r15			
pop r14			
pop r13			
pop r12			
pop r11			
pop r10			
pop r9				
pop r8				
pop r7				
pop r6				
pop r5				
pop r4				
pop r3				
pop r2				
pop r1				
pop r0						
out __RAMPZ__, r0			
pop r0						
out __SREG__, r0			
pop r0						

 ;  0 "" 2
 ;  48 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	reti
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	.size	__vector_16, .-__vector_16
	.section	.text.insertJobIntoList,"ax",@progbits
.global	insertJobIntoList
	.type	insertJobIntoList, @function
insertJobIntoList:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r30,r22
	lds r22,processListHead
	lds r23,processListHead+1
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L174
	sts processListHead+1,r25
	sts processListHead,r24
	std Z+4,__zero_reg__
	std Z+3,__zero_reg__
	rjmp .L173
.L174:
	ldd r18,Z+5
	ldd r19,Z+6
	ldd r20,Z+7
	ldd r21,Z+8
.L178:
	movw r26,r22
	adiw r26,38
	adiw r26,5
	ld r14,X+
	ld r15,X+
	ld r16,X+
	ld r17,X
	sbiw r26,5+3
	cp r18,r14
	cpc r19,r15
	cpc r20,r16
	cpc r21,r17
	brlo .L176
	cp r14,r18
	cpc r15,r19
	cpc r16,r20
	cpc r17,r21
	brne .L177
	ld r23,X
	ld r22,Z
	cp r23,r22
	brlo .L176
.L177:
	adiw r26,3
	ld r22,X+
	ld r23,X
	sbiw r26,3+1
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L178
.L176:
	in r18,41-32
	in r19,41+1-32
	std Z+4,r19
	std Z+3,r18
	out 41+1-32,r25
	out 41-32,r24
.L173:
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	insertJobIntoList, .-insertJobIntoList
	.section	.text.initializeJob,"ax",@progbits
.global	initializeJob
	.type	initializeJob, @function
initializeJob:
	push r14
	push r15
	push r16
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r28,r24
	adiw r28,38
	std Y+2,r23
	std Y+1,r22
	movw r30,r24
	std Z+38,r16
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	movw r22,r28
	call insertJobIntoList
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r16
	pop r15
	pop r14
	ret
	.size	initializeJob, .-initializeJob
	.section	.text.createPeriodicJob,"ax",@progbits
.global	createPeriodicJob
	.type	createPeriodicJob, @function
createPeriodicJob:
	push r10
	push r11
	push r12
	push r13
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r28,r24
	movw r10,r20
	movw r12,r22
	mov r16,r18
	ldi r24,lo8(gs(PeriodicJobWrapper))
	ldi r25,hi8(gs(PeriodicJobWrapper))
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	ldi r20,lo8(512)
	ldi r21,hi8(512)
	ldi r18,lo8(15)
	call createProcess3
	mov r15,r24
	mov r17,r25
	movw r22,r28
	movw r20,r12
	movw r18,r10
	call initializeJob
	movw r30,r24
	std Z+10,__zero_reg__
	std Z+9,__zero_reg__
	lds r18,milliseconds_running
	lds r19,milliseconds_running+1
	lds r20,milliseconds_running+2
	lds r21,milliseconds_running+3
	add r18,r10
	adc r19,r11
	adc r20,r12
	adc r21,r13
	std Z+11,r18
	std Z+12,r19
	std Z+13,r20
	std Z+14,r21
	mov r24,r15
	mov r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	createPeriodicJob, .-createPeriodicJob
	.section	.text.createAperiodicJob,"ax",@progbits
.global	createAperiodicJob
	.type	createAperiodicJob, @function
createAperiodicJob:
	push r10
	push r11
	push r12
	push r13
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r28,r24
	movw r10,r20
	movw r12,r22
	mov r16,r18
	ldi r24,lo8(gs(AperiodicJobWrapper))
	ldi r25,hi8(gs(AperiodicJobWrapper))
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	ldi r20,lo8(512)
	ldi r21,hi8(512)
	ldi r18,lo8(13)
	call createProcess3
	mov r15,r24
	mov r17,r25
	movw r22,r28
	movw r20,r12
	movw r18,r10
	call initializeJob
	movw r30,r24
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	std Z+10,r25
	std Z+9,r24
	std Z+12,__zero_reg__
	std Z+11,__zero_reg__
	mov r24,r15
	mov r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	createAperiodicJob, .-createAperiodicJob
	.section	.text.triggerAperiodicJob,"ax",@progbits
.global	triggerAperiodicJob
	.type	triggerAperiodicJob, @function
triggerAperiodicJob:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	movw r30,r24
	std Z+50,r19
	std Z+49,r18
/* epilogue start */
	ret
	.size	triggerAperiodicJob, .-triggerAperiodicJob
	.section	.text.schedule,"ax",@progbits
.global	schedule
	.type	schedule, @function
schedule:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call dms_schedule
/* epilogue start */
	ret
	.size	schedule, .-schedule
	.section	.text.init_nibobee,"ax",@progbits
.global	init_nibobee
	.type	init_nibobee, @function
init_nibobee:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call analog_init
	in r24,80-32
	ori r24,lo8(-128)
	out 80-32,r24
	ldi r30,lo8(100)
	ldi r31,hi8(100)
	ld r24,Z
	ori r24,lo8(96)
	st Z,r24
	ldi r30,lo8(96)
	ldi r31,hi8(96)
	ldi r24,lo8(16)
	st Z,r24
	ld r24,Z
	ori r24,lo8(5)
	st Z,r24
/* epilogue start */
	ret
	.size	init_nibobee, .-init_nibobee
	.section	.init8
.global	init_nibobee_kernel_init
	.type	init_nibobee_kernel_init, @function
init_nibobee_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_nibobee
/* epilogue start */
	.size	init_nibobee_kernel_init, .-init_nibobee_kernel_init
.global	redLedsArray
	.data
	.type	redLedsArray, @object
	.size	redLedsArray, 4
redLedsArray:
	.word	LeftRed
	.word	RightRed
.global	yellowLedsArray
	.type	yellowLedsArray, @object
	.size	yellowLedsArray, 4
yellowLedsArray:
	.word	LeftYellow
	.word	RightYellow
.global	rightLedsArray
	.type	rightLedsArray, @object
	.size	rightLedsArray, 4
rightLedsArray:
	.word	RightYellow
	.word	RightRed
.global	leftLedsArray
	.type	leftLedsArray, @object
	.size	leftLedsArray, 4
leftLedsArray:
	.word	LeftYellow
	.word	LeftRed
.global	allLedsArray
	.type	allLedsArray, @object
	.size	allLedsArray, 8
allLedsArray:
	.word	LeftYellow
	.word	LeftRed
	.word	RightYellow
	.word	RightRed
.global	current_reset_status
.global	current_reset_status
	.section .bss
	.type	current_reset_status, @object
	.size	current_reset_status, 1
current_reset_status:
	.skip 1,0
.global	__nextProcessNumber
.global	__nextProcessNumber
	.type	__nextProcessNumber, @object
	.size	__nextProcessNumber, 2
__nextProcessNumber:
	.skip 2,0
.global	__current_process
.global	__current_process
	.type	__current_process, @object
	.size	__current_process, 2
__current_process:
	.skip 2,0
.global	milliseconds_running
.global	milliseconds_running
	.type	milliseconds_running, @object
	.size	milliseconds_running, 4
milliseconds_running:
	.skip 4,0
	.comm PortA,6,1
	.comm PinA0,3,1
	.comm PinA1,3,1
	.comm PinA2,3,1
	.comm PinA3,3,1
	.comm PinA4,3,1
	.comm PinA5,3,1
	.comm PinA6,3,1
	.comm PinA7,3,1
	.comm PortB,6,1
	.comm PinB0,3,1
	.comm PinB1,3,1
	.comm PinB2,3,1
	.comm PinB3,3,1
	.comm PinB4,3,1
	.comm PinB5,3,1
	.comm PinB6,3,1
	.comm PinB7,3,1
	.comm PortC,6,1
	.comm PinC0,3,1
	.comm PinC1,3,1
	.comm PinC2,3,1
	.comm PinC3,3,1
	.comm PinC4,3,1
	.comm PinC5,3,1
	.comm PinC6,3,1
	.comm PinC7,3,1
	.comm PortD,6,1
	.comm PinD0,3,1
	.comm PinD1,3,1
	.comm PinD2,3,1
	.comm PinD3,3,1
	.comm PinD4,3,1
	.comm PinD5,3,1
	.comm PinD6,3,1
	.comm PinD7,3,1
	.comm Timer0,7,1
	.comm Timer1,7,1
	.comm Timer2,7,1
	.comm Timer3,7,1
	.comm Timer0A,8,1
	.comm Timer0B,8,1
	.comm Timer1A,8,1
	.comm Timer1B,8,1
	.comm Timer2A,8,1
	.comm Timer2B,8,1
	.comm Timer3A,8,1
	.comm Timer3B,8,1
	.comm LeftYellow,2,1
	.comm LeftRed,2,1
	.comm RightRed,2,1
	.comm RightYellow,2,1
	.comm RedLeds,3,1
	.comm YellowLeds,3,1
	.comm RightLeds,3,1
	.comm LeftLeds,3,1
	.comm AllLeds,3,1
	.comm LeftMotor,5,1
	.comm RightMotor,5,1
	.comm processListHead,2,1
	.comm ButtonRightBackward,2,1
	.comm ButtonRightForward,2,1
	.comm ButtonLeftBackward,2,1
	.comm ButtonLeftForward,2,1
	.data
	.type	C.26.3078, @object
	.size	C.26.3078, 5
C.26.3078:
	.byte	0
	.word	PinD7
	.word	Timer1B
	.type	C.25.3077, @object
	.size	C.25.3077, 5
C.25.3077:
	.byte	0
	.word	PinD6
	.word	Timer1A
	.type	C.31.3085, @object
	.size	C.31.3085, 3
C.31.3085:
	.word	allLedsArray
	.byte	4
	.type	C.30.3084, @object
	.size	C.30.3084, 3
C.30.3084:
	.word	leftLedsArray
	.byte	2
	.type	C.29.3083, @object
	.size	C.29.3083, 3
C.29.3083:
	.word	rightLedsArray
	.byte	2
	.type	C.28.3082, @object
	.size	C.28.3082, 3
C.28.3082:
	.word	yellowLedsArray
	.byte	2
	.type	C.27.3081, @object
	.size	C.27.3081, 3
C.27.3081:
	.word	redLedsArray
	.byte	2
	.type	C.43.3098, @object
	.size	C.43.3098, 8
C.43.3098:
	.word	Timer3
	.word	154
	.word	1
	.word	PinB7
	.type	C.42.3097, @object
	.size	C.42.3097, 8
C.42.3097:
	.word	Timer3
	.word	152
	.word	0
	.word	PinB6
	.type	C.41.3096, @object
	.size	C.41.3096, 8
C.41.3096:
	.word	Timer2
	.word	180
	.word	1
	.word	PinD6
	.type	C.40.3095, @object
	.size	C.40.3095, 8
C.40.3095:
	.word	Timer2
	.word	179
	.word	0
	.word	PinD7
	.type	C.39.3094, @object
	.size	C.39.3094, 8
C.39.3094:
	.word	Timer1
	.word	138
	.word	1
	.word	PinD4
	.type	C.38.3093, @object
	.size	C.38.3093, 8
C.38.3093:
	.word	Timer1
	.word	136
	.word	0
	.word	PinD5
	.type	C.37.3092, @object
	.size	C.37.3092, 8
C.37.3092:
	.word	Timer0
	.word	72
	.word	1
	.word	PinB4
	.type	C.36.3091, @object
	.size	C.36.3091, 8
C.36.3091:
	.word	Timer0
	.word	71
	.word	0
	.word	PinB3
	.type	C.35.3090, @object
	.size	C.35.3090, 7
C.35.3090:
	.byte	4
	.word	144
	.word	145
	.word	113
	.type	C.34.3089, @object
	.size	C.34.3089, 7
C.34.3089:
	.byte	2
	.word	176
	.word	177
	.word	112
	.type	C.33.3088, @object
	.size	C.33.3088, 7
C.33.3088:
	.byte	4
	.word	128
	.word	129
	.word	111
	.type	C.32.3087, @object
	.size	C.32.3087, 7
C.32.3087:
	.byte	0
	.word	68
	.word	69
	.word	110
	.type	C.79.3134, @object
	.size	C.79.3134, 3
C.79.3134:
	.word	PortD
	.byte	-128
	.type	C.78.3133, @object
	.size	C.78.3133, 3
C.78.3133:
	.word	PortD
	.byte	64
	.type	C.77.3132, @object
	.size	C.77.3132, 3
C.77.3132:
	.word	PortD
	.byte	32
	.type	C.76.3131, @object
	.size	C.76.3131, 3
C.76.3131:
	.word	PortD
	.byte	16
	.type	C.75.3130, @object
	.size	C.75.3130, 3
C.75.3130:
	.word	PortD
	.byte	8
	.type	C.74.3129, @object
	.size	C.74.3129, 3
C.74.3129:
	.word	PortD
	.byte	4
	.type	C.73.3128, @object
	.size	C.73.3128, 3
C.73.3128:
	.word	PortD
	.byte	2
	.type	C.72.3127, @object
	.size	C.72.3127, 3
C.72.3127:
	.word	PortD
	.byte	1
	.type	C.71.3126, @object
	.size	C.71.3126, 6
C.71.3126:
	.word	43
	.word	41
	.word	42
	.type	C.70.3125, @object
	.size	C.70.3125, 3
C.70.3125:
	.word	PortC
	.byte	-128
	.type	C.69.3124, @object
	.size	C.69.3124, 3
C.69.3124:
	.word	PortC
	.byte	64
	.type	C.68.3123, @object
	.size	C.68.3123, 3
C.68.3123:
	.word	PortC
	.byte	32
	.type	C.67.3122, @object
	.size	C.67.3122, 3
C.67.3122:
	.word	PortC
	.byte	16
	.type	C.66.3121, @object
	.size	C.66.3121, 3
C.66.3121:
	.word	PortC
	.byte	8
	.type	C.65.3120, @object
	.size	C.65.3120, 3
C.65.3120:
	.word	PortC
	.byte	4
	.type	C.64.3119, @object
	.size	C.64.3119, 3
C.64.3119:
	.word	PortC
	.byte	2
	.type	C.63.3118, @object
	.size	C.63.3118, 3
C.63.3118:
	.word	PortC
	.byte	1
	.type	C.62.3117, @object
	.size	C.62.3117, 6
C.62.3117:
	.word	40
	.word	38
	.word	39
	.type	C.61.3116, @object
	.size	C.61.3116, 3
C.61.3116:
	.word	PortB
	.byte	-128
	.type	C.60.3115, @object
	.size	C.60.3115, 3
C.60.3115:
	.word	PortB
	.byte	64
	.type	C.59.3114, @object
	.size	C.59.3114, 3
C.59.3114:
	.word	PortB
	.byte	32
	.type	C.58.3113, @object
	.size	C.58.3113, 3
C.58.3113:
	.word	PortB
	.byte	16
	.type	C.57.3112, @object
	.size	C.57.3112, 3
C.57.3112:
	.word	PortB
	.byte	8
	.type	C.56.3111, @object
	.size	C.56.3111, 3
C.56.3111:
	.word	PortB
	.byte	4
	.type	C.55.3110, @object
	.size	C.55.3110, 3
C.55.3110:
	.word	PortB
	.byte	2
	.type	C.54.3109, @object
	.size	C.54.3109, 3
C.54.3109:
	.word	PortB
	.byte	1
	.type	C.53.3108, @object
	.size	C.53.3108, 6
C.53.3108:
	.word	37
	.word	35
	.word	36
	.type	C.52.3107, @object
	.size	C.52.3107, 3
C.52.3107:
	.word	PortA
	.byte	-128
	.type	C.51.3106, @object
	.size	C.51.3106, 3
C.51.3106:
	.word	PortA
	.byte	64
	.type	C.50.3105, @object
	.size	C.50.3105, 3
C.50.3105:
	.word	PortA
	.byte	32
	.type	C.49.3104, @object
	.size	C.49.3104, 3
C.49.3104:
	.word	PortA
	.byte	16
	.type	C.48.3103, @object
	.size	C.48.3103, 3
C.48.3103:
	.word	PortA
	.byte	8
	.type	C.47.3102, @object
	.size	C.47.3102, 3
C.47.3102:
	.word	PortA
	.byte	4
	.type	C.46.3101, @object
	.size	C.46.3101, 3
C.46.3101:
	.word	PortA
	.byte	2
	.type	C.45.3100, @object
	.size	C.45.3100, 3
C.45.3100:
	.word	PortA
	.byte	1
	.type	C.44.3099, @object
	.size	C.44.3099, 6
C.44.3099:
	.word	34
	.word	32
	.word	33
.global __do_copy_data
.global __do_clear_bss
