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
	.section	.init8,"ax",@progbits
.global	init_reset_condition_kernel_init
	.type	init_reset_condition_kernel_init, @function
init_reset_condition_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,84-32
	sts current_reset_status,r24
	out 84-32,__zero_reg__
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
	ldi r30,lo8(C.55.3273)
	ldi r31,hi8(C.55.3273)
	ldi r24,lo8(6)
.L6:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L6
	ldi r26,lo8(PinA0)
	ldi r27,hi8(PinA0)
	ldi r30,lo8(C.56.3274)
	ldi r31,hi8(C.56.3274)
	ldi r24,lo8(3)
.L7:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L7
	ldi r26,lo8(PinA1)
	ldi r27,hi8(PinA1)
	ldi r30,lo8(C.57.3275)
	ldi r31,hi8(C.57.3275)
	ldi r24,lo8(3)
.L8:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L8
	ldi r26,lo8(PinA2)
	ldi r27,hi8(PinA2)
	ldi r30,lo8(C.58.3276)
	ldi r31,hi8(C.58.3276)
	ldi r24,lo8(3)
.L9:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L9
	ldi r26,lo8(PinA3)
	ldi r27,hi8(PinA3)
	ldi r30,lo8(C.59.3277)
	ldi r31,hi8(C.59.3277)
	ldi r24,lo8(3)
.L10:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L10
	ldi r26,lo8(PinA4)
	ldi r27,hi8(PinA4)
	ldi r30,lo8(C.60.3278)
	ldi r31,hi8(C.60.3278)
	ldi r24,lo8(3)
.L11:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L11
	ldi r26,lo8(PinA5)
	ldi r27,hi8(PinA5)
	ldi r30,lo8(C.61.3279)
	ldi r31,hi8(C.61.3279)
	ldi r24,lo8(3)
.L12:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L12
	ldi r26,lo8(PinA6)
	ldi r27,hi8(PinA6)
	ldi r30,lo8(C.62.3280)
	ldi r31,hi8(C.62.3280)
	ldi r24,lo8(3)
.L13:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L13
	ldi r26,lo8(PinA7)
	ldi r27,hi8(PinA7)
	ldi r30,lo8(C.63.3281)
	ldi r31,hi8(C.63.3281)
	ldi r24,lo8(3)
.L14:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L14
	ldi r26,lo8(PortB)
	ldi r27,hi8(PortB)
	ldi r30,lo8(C.64.3282)
	ldi r31,hi8(C.64.3282)
	ldi r24,lo8(6)
.L15:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L15
	ldi r26,lo8(PinB0)
	ldi r27,hi8(PinB0)
	ldi r30,lo8(C.65.3283)
	ldi r31,hi8(C.65.3283)
	ldi r24,lo8(3)
.L16:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L16
	ldi r26,lo8(PinB1)
	ldi r27,hi8(PinB1)
	ldi r30,lo8(C.66.3284)
	ldi r31,hi8(C.66.3284)
	ldi r24,lo8(3)
.L17:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L17
	ldi r26,lo8(PinB2)
	ldi r27,hi8(PinB2)
	ldi r30,lo8(C.67.3285)
	ldi r31,hi8(C.67.3285)
	ldi r24,lo8(3)
.L18:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L18
	ldi r26,lo8(PinB3)
	ldi r27,hi8(PinB3)
	ldi r30,lo8(C.68.3286)
	ldi r31,hi8(C.68.3286)
	ldi r24,lo8(3)
.L19:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L19
	ldi r26,lo8(PinB4)
	ldi r27,hi8(PinB4)
	ldi r30,lo8(C.69.3287)
	ldi r31,hi8(C.69.3287)
	ldi r24,lo8(3)
.L20:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L20
	ldi r26,lo8(PinB5)
	ldi r27,hi8(PinB5)
	ldi r30,lo8(C.70.3288)
	ldi r31,hi8(C.70.3288)
	ldi r24,lo8(3)
.L21:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L21
	ldi r26,lo8(PinB6)
	ldi r27,hi8(PinB6)
	ldi r30,lo8(C.71.3289)
	ldi r31,hi8(C.71.3289)
	ldi r24,lo8(3)
.L22:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L22
	ldi r26,lo8(PinB7)
	ldi r27,hi8(PinB7)
	ldi r30,lo8(C.72.3290)
	ldi r31,hi8(C.72.3290)
	ldi r24,lo8(3)
.L23:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L23
	ldi r26,lo8(PortC)
	ldi r27,hi8(PortC)
	ldi r30,lo8(C.73.3291)
	ldi r31,hi8(C.73.3291)
	ldi r24,lo8(6)
.L24:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L24
	ldi r26,lo8(PinC0)
	ldi r27,hi8(PinC0)
	ldi r30,lo8(C.74.3292)
	ldi r31,hi8(C.74.3292)
	ldi r24,lo8(3)
.L25:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L25
	ldi r26,lo8(PinC1)
	ldi r27,hi8(PinC1)
	ldi r30,lo8(C.75.3293)
	ldi r31,hi8(C.75.3293)
	ldi r24,lo8(3)
.L26:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L26
	ldi r26,lo8(PinC2)
	ldi r27,hi8(PinC2)
	ldi r30,lo8(C.76.3294)
	ldi r31,hi8(C.76.3294)
	ldi r24,lo8(3)
.L27:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L27
	ldi r26,lo8(PinC3)
	ldi r27,hi8(PinC3)
	ldi r30,lo8(C.77.3295)
	ldi r31,hi8(C.77.3295)
	ldi r24,lo8(3)
.L28:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L28
	ldi r26,lo8(PinC4)
	ldi r27,hi8(PinC4)
	ldi r30,lo8(C.78.3296)
	ldi r31,hi8(C.78.3296)
	ldi r24,lo8(3)
.L29:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L29
	ldi r26,lo8(PinC5)
	ldi r27,hi8(PinC5)
	ldi r30,lo8(C.79.3297)
	ldi r31,hi8(C.79.3297)
	ldi r24,lo8(3)
.L30:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L30
	ldi r26,lo8(PinC6)
	ldi r27,hi8(PinC6)
	ldi r30,lo8(C.80.3298)
	ldi r31,hi8(C.80.3298)
	ldi r24,lo8(3)
.L31:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L31
	ldi r26,lo8(PinC7)
	ldi r27,hi8(PinC7)
	ldi r30,lo8(C.81.3299)
	ldi r31,hi8(C.81.3299)
	ldi r24,lo8(3)
.L32:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L32
	ldi r26,lo8(PortD)
	ldi r27,hi8(PortD)
	ldi r30,lo8(C.82.3300)
	ldi r31,hi8(C.82.3300)
	ldi r24,lo8(6)
.L33:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L33
	ldi r26,lo8(PinD0)
	ldi r27,hi8(PinD0)
	ldi r30,lo8(C.83.3301)
	ldi r31,hi8(C.83.3301)
	ldi r24,lo8(3)
.L34:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L34
	ldi r26,lo8(PinD1)
	ldi r27,hi8(PinD1)
	ldi r30,lo8(C.84.3302)
	ldi r31,hi8(C.84.3302)
	ldi r24,lo8(3)
.L35:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L35
	ldi r26,lo8(PinD2)
	ldi r27,hi8(PinD2)
	ldi r30,lo8(C.85.3303)
	ldi r31,hi8(C.85.3303)
	ldi r24,lo8(3)
.L36:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L36
	ldi r26,lo8(PinD3)
	ldi r27,hi8(PinD3)
	ldi r30,lo8(C.86.3304)
	ldi r31,hi8(C.86.3304)
	ldi r24,lo8(3)
.L37:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L37
	ldi r26,lo8(PinD4)
	ldi r27,hi8(PinD4)
	ldi r30,lo8(C.87.3305)
	ldi r31,hi8(C.87.3305)
	ldi r24,lo8(3)
.L38:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L38
	ldi r26,lo8(PinD5)
	ldi r27,hi8(PinD5)
	ldi r30,lo8(C.88.3306)
	ldi r31,hi8(C.88.3306)
	ldi r24,lo8(3)
.L39:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L39
	ldi r26,lo8(PinD6)
	ldi r27,hi8(PinD6)
	ldi r30,lo8(C.89.3307)
	ldi r31,hi8(C.89.3307)
	ldi r24,lo8(3)
.L40:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L40
	ldi r26,lo8(PinD7)
	ldi r27,hi8(PinD7)
	ldi r30,lo8(C.90.3308)
	ldi r31,hi8(C.90.3308)
	ldi r24,lo8(3)
.L41:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L41
/* epilogue start */
	ret
	.size	init_ports_m1284P, .-init_ports_m1284P
	.section	.init8
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
	ldi r30,lo8(C.50.3267)
	ldi r31,hi8(C.50.3267)
	ldi r24,lo8(3)
.L81:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L81
	ldi r26,lo8(YellowLeds)
	ldi r27,hi8(YellowLeds)
	ldi r30,lo8(C.51.3268)
	ldi r31,hi8(C.51.3268)
	ldi r24,lo8(3)
.L82:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L82
	ldi r26,lo8(RightLeds)
	ldi r27,hi8(RightLeds)
	ldi r30,lo8(C.52.3269)
	ldi r31,hi8(C.52.3269)
	ldi r24,lo8(3)
.L83:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L83
	ldi r26,lo8(LeftLeds)
	ldi r27,hi8(LeftLeds)
	ldi r30,lo8(C.53.3270)
	ldi r31,hi8(C.53.3270)
	ldi r24,lo8(3)
.L84:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L84
	ldi r26,lo8(AllLeds)
	ldi r27,hi8(AllLeds)
	ldi r30,lo8(C.54.3271)
	ldi r31,hi8(C.54.3271)
	ldi r24,lo8(3)
.L85:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L85
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
	ldi r30,lo8(C.50.3267)
	ldi r31,hi8(C.50.3267)
	ldi r24,lo8(3)
.L92:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L92
	ldi r26,lo8(YellowLeds)
	ldi r27,hi8(YellowLeds)
	ldi r30,lo8(C.51.3268)
	ldi r31,hi8(C.51.3268)
	ldi r24,lo8(3)
.L93:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L93
	ldi r26,lo8(RightLeds)
	ldi r27,hi8(RightLeds)
	ldi r30,lo8(C.52.3269)
	ldi r31,hi8(C.52.3269)
	ldi r24,lo8(3)
.L94:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L94
	ldi r26,lo8(LeftLeds)
	ldi r27,hi8(LeftLeds)
	ldi r30,lo8(C.53.3270)
	ldi r31,hi8(C.53.3270)
	ldi r24,lo8(3)
.L95:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L95
	ldi r26,lo8(AllLeds)
	ldi r27,hi8(AllLeds)
	ldi r30,lo8(C.54.3271)
	ldi r31,hi8(C.54.3271)
	ldi r24,lo8(3)
.L96:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L96
/* epilogue start */
	.size	init_nibobee_leds_kernel_init, .-init_nibobee_leds_kernel_init
	.section	.text.initButton,"ax",@progbits
.global	initButton
	.type	initButton, @function
initButton:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	call setPinInput
/* epilogue start */
	ret
	.size	initButton, .-initButton
	.section	.text.initInterruptButton,"ax",@progbits
.global	initInterruptButton
	.type	initInterruptButton, @function
initInterruptButton:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldd r24,Y+2
	call enablePinChangeInterrupt
	ld r30,Y
	ldd r31,Y+1
	ld r24,Z
	ldd r25,Z+1
	call setPinInput
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	initInterruptButton, .-initInterruptButton
	.section	.text.init_nibobee_buttons,"ax",@progbits
.global	init_nibobee_buttons
	.type	init_nibobee_buttons, @function
init_nibobee_buttons:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(PinC4)
	ldi r25,hi8(PinC4)
	sts ButtonLeftBackward+1,r25
	sts ButtonLeftBackward,r24
	call setPinInput
	ldi r24,lo8(PinC5)
	ldi r25,hi8(PinC5)
	sts ButtonLeftForward+1,r25
	sts ButtonLeftForward,r24
	call setPinInput
	ldi r24,lo8(PinC6)
	ldi r25,hi8(PinC6)
	sts ButtonRightBackward+1,r25
	sts ButtonRightBackward,r24
	call setPinInput
	ldi r24,lo8(PinC7)
	ldi r25,hi8(PinC7)
	sts ButtonRightForward+1,r25
	sts ButtonRightForward,r24
	call setPinInput
/* epilogue start */
	ret
	.size	init_nibobee_buttons, .-init_nibobee_buttons
	.section	.init8
.global	init_nibobee_buttons_kernel_init
	.type	init_nibobee_buttons_kernel_init, @function
init_nibobee_buttons_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(PinC4)
	ldi r25,hi8(PinC4)
	sts ButtonLeftBackward+1,r25
	sts ButtonLeftBackward,r24
	call setPinInput
	ldi r24,lo8(PinC5)
	ldi r25,hi8(PinC5)
	sts ButtonLeftForward+1,r25
	sts ButtonLeftForward,r24
	call setPinInput
	ldi r24,lo8(PinC6)
	ldi r25,hi8(PinC6)
	sts ButtonRightBackward+1,r25
	sts ButtonRightBackward,r24
	call setPinInput
	ldi r24,lo8(PinC7)
	ldi r25,hi8(PinC7)
	sts ButtonRightForward+1,r25
	sts ButtonRightForward,r24
	call setPinInput
/* epilogue start */
	.size	init_nibobee_buttons_kernel_init, .-init_nibobee_buttons_kernel_init
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
	ldi r30,lo8(C.38.3251)
	ldi r31,hi8(C.38.3251)
	ldi r24,lo8(7)
.L107:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L107
	ldi r26,lo8(Timer1)
	ldi r27,hi8(Timer1)
	ldi r30,lo8(C.39.3252)
	ldi r31,hi8(C.39.3252)
	ldi r24,lo8(7)
.L108:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L108
	ldi r26,lo8(Timer2)
	ldi r27,hi8(Timer2)
	ldi r30,lo8(C.40.3253)
	ldi r31,hi8(C.40.3253)
	ldi r24,lo8(7)
.L109:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L109
	ldi r26,lo8(Timer3)
	ldi r27,hi8(Timer3)
	ldi r30,lo8(C.41.3254)
	ldi r31,hi8(C.41.3254)
	ldi r24,lo8(7)
.L110:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L110
	ldi r26,lo8(Timer0A)
	ldi r27,hi8(Timer0A)
	ldi r30,lo8(C.42.3255)
	ldi r31,hi8(C.42.3255)
	ldi r24,lo8(8)
.L111:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L111
	ldi r26,lo8(Timer0B)
	ldi r27,hi8(Timer0B)
	ldi r30,lo8(C.43.3256)
	ldi r31,hi8(C.43.3256)
	ldi r24,lo8(8)
.L112:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L112
	ldi r26,lo8(Timer1A)
	ldi r27,hi8(Timer1A)
	ldi r30,lo8(C.44.3257)
	ldi r31,hi8(C.44.3257)
	ldi r24,lo8(8)
.L113:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L113
	ldi r26,lo8(Timer1B)
	ldi r27,hi8(Timer1B)
	ldi r30,lo8(C.45.3258)
	ldi r31,hi8(C.45.3258)
	ldi r24,lo8(8)
.L114:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L114
	ldi r26,lo8(Timer2A)
	ldi r27,hi8(Timer2A)
	ldi r30,lo8(C.46.3259)
	ldi r31,hi8(C.46.3259)
	ldi r24,lo8(8)
.L115:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L115
	ldi r26,lo8(Timer2B)
	ldi r27,hi8(Timer2B)
	ldi r30,lo8(C.47.3260)
	ldi r31,hi8(C.47.3260)
	ldi r24,lo8(8)
.L116:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L116
	ldi r26,lo8(Timer3A)
	ldi r27,hi8(Timer3A)
	ldi r30,lo8(C.48.3261)
	ldi r31,hi8(C.48.3261)
	ldi r24,lo8(8)
.L117:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L117
	ldi r26,lo8(Timer3B)
	ldi r27,hi8(Timer3B)
	ldi r30,lo8(C.49.3262)
	ldi r31,hi8(C.49.3262)
	ldi r24,lo8(8)
.L118:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L118
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
	ldi r26,lo8(Timer0)
	ldi r27,hi8(Timer0)
	ldi r30,lo8(C.38.3251)
	ldi r31,hi8(C.38.3251)
	ldi r24,lo8(7)
.L132:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L132
	ldi r26,lo8(Timer1)
	ldi r27,hi8(Timer1)
	ldi r30,lo8(C.39.3252)
	ldi r31,hi8(C.39.3252)
	ldi r24,lo8(7)
.L133:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L133
	ldi r26,lo8(Timer2)
	ldi r27,hi8(Timer2)
	ldi r30,lo8(C.40.3253)
	ldi r31,hi8(C.40.3253)
	ldi r24,lo8(7)
.L134:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L134
	ldi r26,lo8(Timer3)
	ldi r27,hi8(Timer3)
	ldi r30,lo8(C.41.3254)
	ldi r31,hi8(C.41.3254)
	ldi r24,lo8(7)
.L135:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L135
	ldi r26,lo8(Timer0A)
	ldi r27,hi8(Timer0A)
	ldi r30,lo8(C.42.3255)
	ldi r31,hi8(C.42.3255)
	ldi r24,lo8(8)
.L136:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L136
	ldi r26,lo8(Timer0B)
	ldi r27,hi8(Timer0B)
	ldi r30,lo8(C.43.3256)
	ldi r31,hi8(C.43.3256)
	ldi r24,lo8(8)
.L137:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L137
	ldi r26,lo8(Timer1A)
	ldi r27,hi8(Timer1A)
	ldi r30,lo8(C.44.3257)
	ldi r31,hi8(C.44.3257)
	ldi r24,lo8(8)
.L138:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L138
	ldi r26,lo8(Timer1B)
	ldi r27,hi8(Timer1B)
	ldi r30,lo8(C.45.3258)
	ldi r31,hi8(C.45.3258)
	ldi r24,lo8(8)
.L139:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L139
	ldi r26,lo8(Timer2A)
	ldi r27,hi8(Timer2A)
	ldi r30,lo8(C.46.3259)
	ldi r31,hi8(C.46.3259)
	ldi r24,lo8(8)
.L140:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L140
	ldi r26,lo8(Timer2B)
	ldi r27,hi8(Timer2B)
	ldi r30,lo8(C.47.3260)
	ldi r31,hi8(C.47.3260)
	ldi r24,lo8(8)
.L141:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L141
	ldi r26,lo8(Timer3A)
	ldi r27,hi8(Timer3A)
	ldi r30,lo8(C.48.3261)
	ldi r31,hi8(C.48.3261)
	ldi r24,lo8(8)
.L142:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L142
	ldi r26,lo8(Timer3B)
	ldi r27,hi8(Timer3B)
	ldi r30,lo8(C.49.3262)
	ldi r31,hi8(C.49.3262)
	ldi r24,lo8(8)
.L143:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L143
/* epilogue start */
	.size	init_timer_m1284P_kernel_init, .-init_timer_m1284P_kernel_init
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
	.section	.text.initMotor2Pins,"ax",@progbits
.global	initMotor2Pins
	.type	initMotor2Pins, @function
initMotor2Pins:
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
	ldd r24,Y+5
	ldd r25,Y+6
	call setPinOutput
	movw r24,r28
	call stopMotor
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	initMotor2Pins, .-initMotor2Pins
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
	ldi r30,lo8(C.35.3245)
	ldi r31,hi8(C.35.3245)
	ldi r24,lo8(5)
.L159:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L159
	lds r24,LeftMotor+3
	lds r25,LeftMotor+3+1
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call setTimerCompareValue
	lds r24,LeftMotor+1
	lds r25,LeftMotor+1+1
	call setPinOutput
	ldi r26,lo8(RightMotor)
	ldi r27,hi8(RightMotor)
	ldi r30,lo8(C.36.3246)
	ldi r31,hi8(C.36.3246)
	ldi r24,lo8(5)
.L160:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L160
	lds r24,RightMotor+3
	lds r25,RightMotor+3+1
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call setTimerCompareValue
	lds r24,RightMotor+1
	lds r25,RightMotor+1+1
	call setPinOutput
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
	ldi r26,lo8(LeftMotor)
	ldi r27,hi8(LeftMotor)
	ldi r30,lo8(C.35.3245)
	ldi r31,hi8(C.35.3245)
	ldi r24,lo8(5)
.L164:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L164
	lds r24,LeftMotor+3
	lds r25,LeftMotor+3+1
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call setTimerCompareValue
	lds r24,LeftMotor+1
	lds r25,LeftMotor+1+1
	call setPinOutput
	ldi r26,lo8(RightMotor)
	ldi r27,hi8(RightMotor)
	ldi r30,lo8(C.36.3246)
	ldi r31,hi8(C.36.3246)
	ldi r24,lo8(5)
.L165:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L165
	lds r24,RightMotor+3
	lds r25,RightMotor+3+1
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call setTimerCompareValue
	lds r24,RightMotor+1
	lds r25,RightMotor+1+1
	call setPinOutput
/* epilogue start */
	.size	init_nibobee_motors_kernel_init, .-init_nibobee_motors_kernel_init
	.section	.text.twi_unexpectedCondition,"ax",@progbits
	.weak	twi_unexpectedCondition
	.type	twi_unexpectedCondition, @function
twi_unexpectedCondition:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	twi_unexpectedCondition, .-twi_unexpectedCondition
	.section	.text.init_twi,"ax",@progbits
.global	init_twi
	.type	init_twi, @function
init_twi:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(5)
	sts 188,r24
	ldi r24,lo8(-1)
	sts 187,r24
	ldi r24,lo8(17)
	sts 184,r24
	sts 185,__zero_reg__
	ldi r24,lo8(2)
	sts 186,r24
/* epilogue start */
	ret
	.size	init_twi, .-init_twi
	.section	.init8
.global	init_twi_kernel_init
	.type	init_twi_kernel_init, @function
init_twi_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(5)
	sts 188,r24
	ldi r24,lo8(-1)
	sts 187,r24
	ldi r24,lo8(17)
	sts 184,r24
	sts 185,__zero_reg__
	ldi r24,lo8(2)
	sts 186,r24
/* epilogue start */
	.size	init_twi_kernel_init, .-init_twi_kernel_init
	.section	.text.next_twi_operation,"ax",@progbits
.global	next_twi_operation
	.type	next_twi_operation, @function
next_twi_operation:
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 7 */
/* stack size = 11 */
.L__stack_usage = 11
	lds r20,nextTwiOperation
	lds r21,nextTwiOperation+1
	movw r30,r20
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	sub r30,r20
	sbc r31,r21
	subi r30,lo8(-(furtherOperations))
	sbci r31,hi8(-(furtherOperations))
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
.L174:
	movw r24,r18
	movw r16,r30
	ldi r22,lo8(7)
.L172:
	movw r26,r16
	ld r0,X+
	movw r16,r26
	movw r26,r24
	st X+,r0
	movw r24,r26
	subi r22,lo8(-(-1))
	brne .L172
	ldd r22,Z+4
	ldd r24,Z+5
	ldd r25,Z+6
	subi r20,lo8(-(1))
	sbci r21,hi8(-(1))
	sts nextTwiOperation+1,r21
	sts nextTwiOperation,r20
	cpi r20,3
	cpc r21,__zero_reg__
	brge .L178
	adiw r30,7
	sbiw r24,0
	breq .L174
	cpi r24,2
	cpc r25,__zero_reg__
	breq .L182
.L177:
	sts alreadyHandled+1,__zero_reg__
	sts alreadyHandled,__zero_reg__
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sts twi_buffer,r24
	sts twi_buffer+1,r25
	sts twi_buffer+2,r26
	sts twi_buffer+3,r27
	ldi r18,lo8(1)
	ldi r19,hi8(1)
.L173:
	movw r24,r18
/* epilogue start */
	adiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r28
	pop r29
	pop r17
	pop r16
	ret
.L178:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	rjmp .L173
.L182:
	andi r22,lo8(-3)
	sts twi_address,r22
	rjmp .L177
	.size	next_twi_operation, .-next_twi_operation
	.section	.text.twi_start_master_operation,"ax",@progbits
.global	twi_start_master_operation
	.type	twi_start_master_operation, @function
twi_start_master_operation:
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 7 */
/* stack size = 9 */
.L__stack_usage = 9
	sts error+1,__zero_reg__
	sts error,__zero_reg__
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts twi_running+1,r25
	sts twi_running,r24
	movw r24,r28
	adiw r24,1
	movw r26,r24
	ldi r30,lo8(furtherOperations)
	ldi r31,hi8(furtherOperations)
	ldi r18,lo8(7)
.L184:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L184
	lds r22,furtherOperations+4
	lds r18,furtherOperations+5
	lds r19,furtherOperations+5+1
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	sts nextTwiOperation+1,r21
	sts nextTwiOperation,r20
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L185
	movw r26,r24
	ldi r30,lo8(furtherOperations+7)
	ldi r31,hi8(furtherOperations+7)
	ldi r24,lo8(7)
.L186:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L186
	lds r22,furtherOperations+11
	lds r18,furtherOperations+12
	lds r19,furtherOperations+12+1
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	sts nextTwiOperation+1,r25
	sts nextTwiOperation,r24
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L185
	ldi r24,lo8(3)
	ldi r25,hi8(3)
	sts nextTwiOperation+1,r25
	sts nextTwiOperation,r24
.L183:
/* epilogue start */
	adiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r28
	pop r29
	ret
.L185:
	cpi r18,2
	cpc r19,__zero_reg__
	breq .L192
.L189:
	sts alreadyHandled+1,__zero_reg__
	sts alreadyHandled,__zero_reg__
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sts twi_buffer,r24
	sts twi_buffer+1,r25
	sts twi_buffer+2,r26
	sts twi_buffer+3,r27
	rjmp .L183
.L192:
	andi r22,lo8(-3)
	sts twi_address,r22
	rjmp .L189
	.size	twi_start_master_operation, .-twi_start_master_operation
	.section	.text.__vector_26,"ax",@progbits
.global	__vector_26
	.type	__vector_26, @function
__vector_26:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
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
	push r30
	push r31
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,7
	out __SP_H__, r29
	out __SP_L__, r28
/* prologue: Signal */
/* frame size = 7 */
/* stack size = 27 */
.L__stack_usage = 27
	lds r30,185
	ldi r31,lo8(0)
	andi r30,lo8(248)
	andi r31,hi8(248)
	sbiw r30,8
	cpi r30,193
	cpc r31,__zero_reg__
	brlo .L244
.L194:
	ldi r24,lo8(3)
	ldi r25,hi8(3)
	sts error+1,r25
	sts error,r24
	call twi_unexpectedCondition
.L193:
/* epilogue start */
	adiw r28,7
	out __SP_H__, r29
	out __SP_L__, r28
	pop r28
	pop r29
	pop r31
	pop r30
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
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
.L244:
	subi r30,lo8(-(gs(.L212)))
	sbci r31,hi8(-(gs(.L212)))
	lsl r30
	rol r31
	lpm __tmp_reg__,Z+
	lpm r31,Z
	mov r30,__tmp_reg__
	ijmp
	.data
	.section .progmem.gcc_sw_table, "a", @progbits
	.p2align 1
.L212:
	.data
	.section .progmem.gcc_sw_table, "a", @progbits
	.p2align 1
	.word gs(.L195)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L195)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L196)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L197)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L196)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L198)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L199)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L204)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L197)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L205)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L203)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L204)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L204)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L204)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L204)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L205)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L206)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L205)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L206)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L207)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L208)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L208)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L209)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L210)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L194)
	.word gs(.L211)
	.section	.text.__vector_26
.L207:
	ldi r24,lo8(9)
	ldi r25,hi8(9)
	sts error+1,r25
	sts error,r24
.L206:
	ldi r24,lo8(-59)
	sts 188,r24
	lds r24,twi_defaultSlaveBuffer
	lds r25,twi_defaultSlaveBuffer+1
	lds r26,twi_defaultSlaveBuffer+2
	lds r27,twi_defaultSlaveBuffer+3
	sts twi_buffer,r24
	sts twi_buffer+1,r25
	sts twi_buffer+2,r26
	sts twi_buffer+3,r27
	sts twi_running+1,__zero_reg__
	sts twi_running,__zero_reg__
	rjmp .L193
.L205:
	lds r18,alreadyHandled
	lds r19,alreadyHandled+1
	lds r24,187
	lds r30,twi_buffer
	lds r31,twi_buffer+1
	add r30,r18
	adc r31,r19
	st Z,r24
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	sts alreadyHandled+1,r19
	sts alreadyHandled,r18
	lds r24,twi_buffer+2
	lds r25,twi_buffer+2+1
	sbiw r24,1
	cp r18,r24
	cpc r19,r25
	brlo .L239
.L228:
	ldi r24,lo8(-123)
	sts 188,r24
	rjmp .L193
.L197:
	ldi r24,lo8(4)
	ldi r25,hi8(4)
	sts error+1,r25
	sts error,r24
.L240:
	ldi r24,lo8(-43)
	sts 188,r24
	lds r24,twi_defaultSlaveBuffer
	lds r25,twi_defaultSlaveBuffer+1
	lds r26,twi_defaultSlaveBuffer+2
	lds r27,twi_defaultSlaveBuffer+3
	sts twi_buffer,r24
	sts twi_buffer+1,r25
	sts twi_buffer+2,r26
	sts twi_buffer+3,r27
	sts twi_running+1,__zero_reg__
	sts twi_running,__zero_reg__
	rjmp .L193
.L204:
	lds r24,twi_buffer+2
	lds r25,twi_buffer+2+1
	sbiw r24,0
	breq .L228
.L239:
	ldi r24,lo8(-59)
	sts 188,r24
	rjmp .L193
.L208:
	sts twi_buffer,__zero_reg__
	sts twi_buffer+1,__zero_reg__
	sts twi_buffer+2,__zero_reg__
	sts twi_buffer+3,__zero_reg__
.L209:
	lds r24,alreadyHandled
	lds r25,alreadyHandled+1
	lds r18,twi_buffer+2
	lds r19,twi_buffer+2+1
	subi r18,lo8(-(-1))
	sbci r19,hi8(-(-1))
	cp r24,r18
	cpc r25,r19
	brlo .+2
	rjmp .L225
	lds r30,twi_buffer
	lds r31,twi_buffer+1
	add r30,r24
	adc r31,r25
	ld r18,Z
	sts 187,r18
	adiw r24,1
	sts alreadyHandled+1,r25
	sts alreadyHandled,r24
	ldi r24,lo8(-59)
	sts 188,r24
	rjmp .L193
.L210:
	lds r18,twi_buffer+2
	lds r19,twi_buffer+2+1
	lds r24,alreadyHandled
	lds r25,alreadyHandled+1
	cp r24,r18
	cpc r25,r19
	brlo .+2
	rjmp .L206
	ldi r24,lo8(8)
	ldi r25,hi8(8)
	sts error+1,r25
	sts error,r24
	rjmp .L206
.L211:
	ldi r24,lo8(7)
	ldi r25,hi8(7)
	sts error+1,r25
	sts error,r24
	rjmp .L206
.L195:
	lds r24,twi_address
	sts 187,r24
	ldi r24,lo8(-123)
	sts 188,r24
	rjmp .L193
.L196:
	lds r24,alreadyHandled
	lds r25,alreadyHandled+1
	lds r18,twi_buffer+2
	lds r19,twi_buffer+2+1
	cp r24,r18
	cpc r25,r19
	brlo .+2
	rjmp .L214
.L225:
	lds r30,twi_buffer
	lds r31,twi_buffer+1
	add r30,r24
	adc r31,r25
	ld r18,Z
	sts 187,r18
	adiw r24,1
	sts alreadyHandled+1,r25
	sts alreadyHandled,r24
	ldi r24,lo8(-123)
	sts 188,r24
	rjmp .L193
.L203:
	lds r18,nextTwiOperation
	lds r19,nextTwiOperation+1
	cpi r18,3
	cpc r19,__zero_reg__
	brlt .+2
	rjmp .L240
	movw r30,r18
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	sub r30,r18
	sbc r31,r19
	subi r30,lo8(-(furtherOperations))
	sbci r31,hi8(-(furtherOperations))
	movw r20,r28
	subi r20,lo8(-(1))
	sbci r21,hi8(-(1))
.L223:
	movw r24,r20
	movw r16,r30
	ldi r22,lo8(7)
.L222:
	movw r26,r16
	ld r0,X+
	movw r16,r26
	movw r26,r24
	st X+,r0
	movw r24,r26
	subi r22,lo8(-(-1))
	brne .L222
	ldd r22,Z+4
	ldd r24,Z+5
	ldd r25,Z+6
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	sts nextTwiOperation+1,r19
	sts nextTwiOperation,r18
	cpi r18,3
	cpc r19,__zero_reg__
	brlt .+2
	rjmp .L240
	adiw r30,7
	sbiw r24,0
	breq .L223
.L238:
	cpi r24,2
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L245
.L232:
	sts alreadyHandled+1,__zero_reg__
	sts alreadyHandled,__zero_reg__
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sts twi_buffer,r24
	sts twi_buffer+1,r25
	sts twi_buffer+2,r26
	sts twi_buffer+3,r27
	rjmp .L193
.L198:
	ldi r24,lo8(6)
	ldi r25,hi8(6)
	sts error+1,r25
	sts error,r24
	rjmp .L240
.L199:
	ldi r24,lo8(5)
	ldi r25,hi8(5)
	sts error+1,r25
	sts error,r24
	rjmp .L206
.L214:
	lds r18,nextTwiOperation
	lds r19,nextTwiOperation+1
	cpi r18,3
	cpc r19,__zero_reg__
	brlt .+2
	rjmp .L240
	movw r30,r18
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	sub r30,r18
	sbc r31,r19
	subi r30,lo8(-(furtherOperations))
	sbci r31,hi8(-(furtherOperations))
	movw r20,r28
	subi r20,lo8(-(1))
	sbci r21,hi8(-(1))
.L217:
	movw r24,r20
	movw r16,r30
	ldi r22,lo8(7)
.L216:
	movw r26,r16
	ld r0,X+
	movw r16,r26
	movw r26,r24
	st X+,r0
	movw r24,r26
	subi r22,lo8(-(-1))
	brne .L216
	ldd r22,Z+4
	ldd r24,Z+5
	ldd r25,Z+6
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	sts nextTwiOperation+1,r19
	sts nextTwiOperation,r18
	cpi r18,3
	cpc r19,__zero_reg__
	brlt .+2
	rjmp .L240
	adiw r30,7
	sbiw r24,0
	breq .L217
	rjmp .L238
.L245:
	andi r22,lo8(-3)
	sts twi_address,r22
	rjmp .L232
	.size	__vector_26, .-__vector_26
	.section	.text.twi_handleMasterRequest,"ax",@progbits
.global	twi_handleMasterRequest
	.type	twi_handleMasterRequest, @function
twi_handleMasterRequest:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(0)
	ldi r23,lo8(0)
	ldi r24,lo8(0)
	ldi r25,lo8(0)
/* epilogue start */
	ret
	.size	twi_handleMasterRequest, .-twi_handleMasterRequest
	.section	.text.twi_handleMasterTransmission,"ax",@progbits
.global	twi_handleMasterTransmission
	.type	twi_handleMasterTransmission, @function
twi_handleMasterTransmission:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	twi_handleMasterTransmission, .-twi_handleMasterTransmission
	.section	.text.init_process_base,"ax",@progbits
.global	init_process_base
	.type	init_process_base, @function
init_process_base:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(16639)
	ldi r25,hi8(16639)
	lds r18,__default_stack_size
	lds r19,__default_stack_size+1
	sub r24,r18
	sbc r25,r19
	sts __malloc_heap_end+1,r25
	sts __malloc_heap_end,r24
	sts __malloc_margin+1,__zero_reg__
	sts __malloc_margin,__zero_reg__
	lds r22,__main_process_additional_memory
	ldi r23,lo8(0)
	subi r22,lo8(-(2))
	sbci r23,hi8(-(2))
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	call calloc
	movw r30,r24
	sbiw r24,0
	breq .L250
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	sts __current_process+1,r31
	sts __current_process,r30
/* epilogue start */
	ret
.L250:
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	sts __current_process+1,r31
	sts __current_process,r30
/* epilogue start */
	ret
	.size	init_process_base, .-init_process_base
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
	breq .L257
	movw r20,r10
	subi r20,lo8(-(-1))
	sbci r21,hi8(-(-1))
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
	breq .L254
	movw r24,r20
	sbiw r24,38
	std Z+1,r25
	st Z,r24
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L259
.L255:
	movw r26,r20
	sbiw r26,30
	st X,r14
	subi r20,lo8(-(-31))
	sbci r21,hi8(-(-31))
	movw r26,r20
	st X,r15
.L253:
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
.L257:
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	rjmp .L253
.L259:
	movw r14,r30
	rjmp .L255
.L254:
	movw r24,r16
	call free
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	rjmp .L253
	.size	createProcessBase3, .-createProcessBase3
	.section	.text.createProcessBase2,"ax",@progbits
.global	createProcessBase2
	.type	createProcessBase2, @function
createProcessBase2:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r12,r24
	movw r14,r22
	lds r28,__default_stack_size
	lds r29,__default_stack_size+1
	movw r24,r28
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call calloc
	movw r16,r24
	sbiw r24,0
	breq .L265
	sbiw r28,1
	add r28,r24
	adc r29,r25
	ldi r18,lo8(gs(ProcessGraveyard))
	ldi r19,hi8(gs(ProcessGraveyard))
	st Y,r18
	movw r30,r28
	sbiw r30,1
	st Z,r19
	movw r30,r28
	sbiw r30,2
	st Z,r12
	movw r30,r28
	sbiw r30,3
	st Z,r13
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call calloc
	movw r30,r24
	sbiw r24,0
	breq .L262
	movw r24,r28
	sbiw r24,38
	std Z+1,r25
	st Z,r24
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L267
.L263:
	movw r26,r28
	sbiw r26,30
	st X,r14
	sbiw r28,31
	st Y,r15
.L261:
	movw r24,r30
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L265:
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	rjmp .L261
.L267:
	movw r14,r30
	rjmp .L263
.L262:
	movw r24,r16
	call free
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	rjmp .L261
	.size	createProcessBase2, .-createProcessBase2
	.section	.text.createProcessBase,"ax",@progbits
.global	createProcessBase
	.type	createProcessBase, @function
createProcessBase:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r14,r24
	lds r28,__default_stack_size
	lds r29,__default_stack_size+1
	movw r24,r28
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call calloc
	movw r16,r24
	sbiw r24,0
	breq .L271
	sbiw r28,1
	add r28,r24
	adc r29,r25
	ldi r18,lo8(gs(ProcessGraveyard))
	ldi r19,hi8(gs(ProcessGraveyard))
	st Y,r18
	movw r30,r28
	sbiw r30,1
	st Z,r19
	movw r30,r28
	sbiw r30,2
	st Z,r14
	movw r30,r28
	sbiw r30,3
	st Z,r15
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call calloc
	movw r30,r24
	sbiw r24,0
	breq .L270
	movw r24,r28
	sbiw r24,38
	std Z+1,r25
	st Z,r24
	movw r26,r28
	sbiw r26,30
	st X,r30
	sbiw r28,31
	st Y,r31
.L269:
	movw r24,r30
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L271:
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	movw r24,r30
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L270:
	movw r24,r16
	call free
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	rjmp .L269
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
 ;  94 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
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
 ;  95 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
	movw r26, r24
 ;  0 "" 2
 ;  96 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
	in r0, __SP_L__			
st X+, r0					
in r0, __SP_H__			
st X+, r0					

 ;  0 "" 2
 ;  97 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
	movw r26, r22
 ;  0 "" 2
 ;  98 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
	ld r0, X+					
out __SP_L__, r0			
ld r0, X+					
out __SP_H__, r0			

 ;  0 "" 2
 ;  99 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
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
 ;  101 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
	sei
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
	sts __current_process+1,r23
	sts __current_process,r22
	call switchContext
/* epilogue start */
	ret
	.size	switchProcess, .-switchProcess
	.section	.text.createProcess3,"ax",@progbits
.global	createProcess3
	.type	createProcess3, @function
createProcess3:
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
	mov r11,r24
	mov r10,r25
	movw r12,r22
	movw r16,r20
	movw r24,r20
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	std Y+1,r18
	call calloc
	movw r14,r24
	ldd r18,Y+1
	sbiw r24,0
	brne .+2
	rjmp .L280
	movw r20,r16
	subi r20,lo8(-(-1))
	sbci r21,hi8(-(-1))
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
	st Z,r11
	movw r30,r20
	sbiw r30,3
	st Z,r10
	subi r18,lo8(-(6))
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
	brne .+2
	rjmp .L277
	movw r24,r20
	sbiw r24,38
	std Z+1,r25
	st Z,r24
	movw r18,r30
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L282
.L278:
	movw r26,r20
	sbiw r26,30
	st X,r12
	subi r20,lo8(-(-31))
	sbci r21,hi8(-(-31))
	movw r26,r20
	st X,r13
	movw r26,r30
	adiw r26,4
	lds r24,__nextProcessNumber
	lds r25,__nextProcessNumber+1
	std Z+5,r25
	std Z+4,r24
	adiw r24,1
	sts __nextProcessNumber+1,r25
	sts __nextProcessNumber,r24
	adiw r26,2+1
	st X,r17
	st -X,r16
	sbiw r26,2
	ldi r20,lo8(39)
	ldi r21,hi8(39)
	sub r20,r16
	sbc r21,r17
	ld r24,Z
	ldd r25,Z+1
	add r24,r20
	adc r25,r21
	adiw r26,4+1
	st X,r25
	st -X,r24
	sbiw r26,4
.L276:
	movw r24,r18
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
.L280:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	rjmp .L276
.L282:
	movw r12,r30
	rjmp .L278
.L277:
	movw r24,r14
	call free
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	rjmp .L276
	.size	createProcess3, .-createProcess3
	.section	.text.createProcess2,"ax",@progbits
.global	createProcess2
	.type	createProcess2, @function
createProcess2:
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r10,r24
	movw r12,r22
	lds r16,__default_stack_size
	lds r17,__default_stack_size+1
	movw r24,r16
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call calloc
	movw r14,r24
	sbiw r24,0
	brne .+2
	rjmp .L288
	movw r28,r16
	sbiw r28,1
	add r28,r24
	adc r29,r25
	ldi r18,lo8(gs(ProcessGraveyard))
	ldi r19,hi8(gs(ProcessGraveyard))
	st Y,r18
	movw r30,r28
	sbiw r30,1
	st Z,r19
	movw r30,r28
	sbiw r30,2
	st Z,r10
	movw r30,r28
	sbiw r30,3
	st Z,r11
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldi r22,lo8(8)
	ldi r23,hi8(8)
	call calloc
	movw r30,r24
	sbiw r24,0
	breq .L285
	movw r24,r28
	sbiw r24,38
	std Z+1,r25
	st Z,r24
	movw r18,r30
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L290
.L286:
	movw r26,r28
	sbiw r26,30
	st X,r12
	sbiw r28,31
	st Y,r13
	movw r26,r30
	adiw r26,4
	lds r24,__nextProcessNumber
	lds r25,__nextProcessNumber+1
	std Z+5,r25
	std Z+4,r24
	adiw r24,1
	sts __nextProcessNumber+1,r25
	sts __nextProcessNumber,r24
	adiw r26,2+1
	st X,r17
	st -X,r16
	sbiw r26,2
	ldi r20,lo8(39)
	ldi r21,hi8(39)
	sub r20,r16
	sbc r21,r17
	ld r24,Z
	ldd r25,Z+1
	add r24,r20
	adc r25,r21
	adiw r26,4+1
	st X,r25
	st -X,r24
	sbiw r26,4
.L284:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
.L288:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	rjmp .L284
.L290:
	movw r12,r30
	rjmp .L286
.L285:
	movw r24,r14
	call free
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	rjmp .L284
	.size	createProcess2, .-createProcess2
	.section	.text.createProcess,"ax",@progbits
.global	createProcess
	.type	createProcess, @function
createProcess:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r12,r24
	lds r16,__default_stack_size
	lds r17,__default_stack_size+1
	movw r24,r16
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call calloc
	movw r14,r24
	sbiw r24,0
	brne .+2
	rjmp .L294
	movw r28,r16
	sbiw r28,1
	add r28,r24
	adc r29,r25
	ldi r18,lo8(gs(ProcessGraveyard))
	ldi r19,hi8(gs(ProcessGraveyard))
	st Y,r18
	movw r30,r28
	sbiw r30,1
	st Z,r19
	movw r30,r28
	sbiw r30,2
	st Z,r12
	movw r30,r28
	sbiw r30,3
	st Z,r13
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldi r22,lo8(8)
	ldi r23,hi8(8)
	call calloc
	movw r30,r24
	sbiw r24,0
	breq .L293
	movw r24,r28
	sbiw r24,38
	std Z+1,r25
	st Z,r24
	movw r26,r28
	sbiw r26,30
	st X,r30
	sbiw r28,31
	st Y,r31
	movw r26,r30
	adiw r26,4
	lds r24,__nextProcessNumber
	lds r25,__nextProcessNumber+1
	std Z+5,r25
	std Z+4,r24
	adiw r24,1
	sts __nextProcessNumber+1,r25
	sts __nextProcessNumber,r24
	adiw r26,2+1
	st X,r17
	st -X,r16
	sbiw r26,2
	ldi r18,lo8(39)
	ldi r19,hi8(39)
	sub r18,r16
	sbc r19,r17
	ld r24,Z
	ldd r25,Z+1
	add r24,r18
	adc r25,r19
	adiw r26,4+1
	st X,r25
	st -X,r24
	sbiw r26,4
.L292:
	movw r24,r30
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L294:
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	rjmp .L292
.L293:
	movw r24,r14
	call free
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	rjmp .L292
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
	breq .L295
	movw r30,r28
	adiw r30,4
	ldd r24,Y+4
	ldd r25,Y+5
	sbiw r24,0
	brne .L298
.L297:
	movw r24,r28
	call free
.L295:
/* epilogue start */
	pop r29
	pop r28
	ret
.L298:
	ldd r24,Z+4
	ldd r25,Z+5
	call free
	rjmp .L297
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
	ldd r24,Z+6
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
	ldd r18,Z+8
	ldd r19,Z+9
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
	ldd r24,Z+4
	ldd r25,Z+5
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
	subi r18,lo8(-(40))
	sbci r19,hi8(-(40))
	movw r24,r18
/* epilogue start */
	ret
	.size	getProcessMemory, .-getProcessMemory
	.section	.text.init_process,"ax",@progbits
.global	init_process
	.type	init_process, @function
init_process:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	lds r22,__main_process_additional_memory
	subi r22,lo8(-(6))
	sts __main_process_additional_memory,r22
	lds r16,__default_stack_size
	lds r17,__default_stack_size+1
	ldi r28,lo8(16639)
	ldi r29,hi8(16639)
	sub r28,r16
	sbc r29,r17
	sts __malloc_heap_end+1,r29
	sts __malloc_heap_end,r28
	sts __malloc_margin+1,__zero_reg__
	sts __malloc_margin,__zero_reg__
	ldi r23,lo8(0)
	subi r22,lo8(-(2))
	sbci r23,hi8(-(2))
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	call calloc
	movw r30,r24
	sbiw r24,0
	breq .L305
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	movw r26,r24
	adiw r26,4
.L304:
	sts __current_process+1,r31
	sts __current_process,r30
	adiw r26,1
	st X,__zero_reg__
	st -X,__zero_reg__
	adiw r26,2+1
	st X,r17
	st -X,r16
	sbiw r26,2
	adiw r26,4+1
	st X,r29
	st -X,r28
	sbiw r26,4
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L305:
	ldi r26,lo8(4)
	ldi r27,hi8(4)
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	rjmp .L304
	.size	init_process, .-init_process
	.section	.text.init_idle_scheduler,"ax",@progbits
.global	init_idle_scheduler
	.type	init_idle_scheduler, @function
init_idle_scheduler:
	push r14
	push r15
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	ldi r24,lo8(64)
	ldi r25,hi8(64)
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call calloc
	mov r14,r24
	movw r28,r14
	movw r14,r28
	mov r15,r25
	movw r28,r14
	sbiw r28,0
	breq .L307
	ldi r24,lo8(gs(ProcessGraveyard))
	ldi r25,hi8(gs(ProcessGraveyard))
	std Y+63,r24
	std Y+62,r25
	std Y+61,r24
	std Y+60,r25
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldi r22,lo8(8)
	ldi r23,hi8(8)
	call calloc
	movw r30,r24
	sbiw r24,0
	breq .L308
	movw r24,r14
	adiw r24,25
	std Z+1,r25
	st Z,r24
	std Y+33,r30
	std Y+32,r31
	movw r26,r30
	adiw r26,4
	lds r24,__nextProcessNumber
	lds r25,__nextProcessNumber+1
	std Z+5,r25
	std Z+4,r24
	adiw r24,1
	sts __nextProcessNumber+1,r25
	sts __nextProcessNumber,r24
	ldi r24,lo8(64)
	ldi r25,hi8(64)
	adiw r26,2+1
	st X,r25
	st -X,r24
	sbiw r26,2
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,25
	adiw r26,4+1
	st X,r25
	st -X,r24
	sbiw r26,4
.L309:
	sts __idle_process+1,r31
	sts __idle_process,r30
/* epilogue start */
	pop r29
	pop r28
	pop r15
	pop r14
	ret
.L308:
	movw r24,r14
	call free
.L307:
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	rjmp .L309
	.size	init_idle_scheduler, .-init_idle_scheduler
	.section	.init8
.global	init_idle_scheduler_kernel_init
	.type	init_idle_scheduler_kernel_init, @function
init_idle_scheduler_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(64)
	ldi r25,hi8(64)
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call calloc
	mov r14,r24
	movw r28,r14
	movw r14,r28
	mov r15,r25
	movw r28,r14
	sbiw r28,0
	breq .L311
	ldi r24,lo8(gs(ProcessGraveyard))
	ldi r25,hi8(gs(ProcessGraveyard))
	std Y+63,r24
	std Y+62,r25
	std Y+61,r24
	std Y+60,r25
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldi r22,lo8(8)
	ldi r23,hi8(8)
	call calloc
	movw r30,r24
	sbiw r24,0
	breq .L312
	movw r24,r14
	adiw r24,25
	std Z+1,r25
	st Z,r24
	std Y+33,r30
	std Y+32,r31
	movw r26,r30
	adiw r26,4
	lds r24,__nextProcessNumber
	lds r25,__nextProcessNumber+1
	std Z+5,r25
	std Z+4,r24
	adiw r24,1
	sts __nextProcessNumber+1,r25
	sts __nextProcessNumber,r24
	ldi r24,lo8(64)
	ldi r25,hi8(64)
	adiw r26,2+1
	st X,r25
	st -X,r24
	sbiw r26,2
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,25
	adiw r26,4+1
	st X,r25
	st -X,r24
	sbiw r26,4
	sts __idle_process+1,r31
	sts __idle_process,r30
/* epilogue start */
.L312:
	movw r24,r14
	call free
.L311:
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	sts __idle_process+1,r31
	sts __idle_process,r30
/* epilogue start */
	.size	init_idle_scheduler_kernel_init, .-init_idle_scheduler_kernel_init
	.section	.text.idle_schedule,"ax",@progbits
.global	idle_schedule
	.type	idle_schedule, @function
idle_schedule:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,__idle_process
	lds r25,__idle_process+1
/* epilogue start */
	ret
	.size	idle_schedule, .-idle_schedule
	.section	.text.__vector_32,"ax",@progbits
.global	__vector_32
	.type	__vector_32, @function
__vector_32:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  25 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
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
 ;  33 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	lds r26, __current_process
 ;  0 "" 2
 ;  34 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	lds r27, __current_process + 1
 ;  0 "" 2
 ;  35 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	in r0, __SP_L__			
st X+, r0					
in r0, __SP_H__			
st X+, r0					

 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	call dms_schedule
	sbiw r24,0
	brne .+2
	rjmp .L318
.L316:
	sts __current_process+1,r25
	sts __current_process,r24
.L317:
/* #APP */
 ;  45 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	movw r26, r24
 ;  0 "" 2
 ;  46 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	ld r0, X+					
out __SP_L__, r0			
ld r0, X+					
out __SP_H__, r0			

 ;  0 "" 2
 ;  47 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
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
 ;  50 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	reti
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
.L318:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	call rr_schedule
	sbiw r24,0
	breq .+2
	rjmp .L316
	lds r24,__idle_process
	lds r25,__idle_process+1
	sts __current_process+1,r25
	sts __current_process,r24
	sbiw r24,0
	breq .+2
	rjmp .L317
	call HARDWARE_RESET
	rjmp .L317
	.size	__vector_32, .-__vector_32
	.section	.text.init_scheduler,"ax",@progbits
.global	init_scheduler
	.type	init_scheduler, @function
init_scheduler:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r28,lo8(Timer3)
	ldi r29,hi8(Timer3)
	movw r24,r28
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call setWaveformGenerationMode
	ldi r24,lo8(Timer3A)
	ldi r25,hi8(Timer3A)
	ldi r22,lo8(2500)
	ldi r23,hi8(2500)
	call setTimerCompareValue
	movw r24,r28
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call setTimerClockSelect
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	init_scheduler, .-init_scheduler
	.section	.init8
.global	init_scheduler_kernel_init
	.type	init_scheduler_kernel_init, @function
init_scheduler_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r28,lo8(Timer3)
	ldi r29,hi8(Timer3)
	movw r24,r28
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call setWaveformGenerationMode
	ldi r24,lo8(Timer3A)
	ldi r25,hi8(Timer3A)
	ldi r22,lo8(2500)
	ldi r23,hi8(2500)
	call setTimerCompareValue
	movw r24,r28
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call setTimerClockSelect
/* epilogue start */
	.size	init_scheduler_kernel_init, .-init_scheduler_kernel_init
	.section	.text.start_scheduler,"ax",@progbits
.global	start_scheduler
	.type	start_scheduler, @function
start_scheduler:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(Timer3A)
	ldi r25,hi8(Timer3A)
	call enableTimerInterrupt
/* #APP */
 ;  27 ".././shared/scheduler.kernel.h" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
	.size	start_scheduler, .-start_scheduler
	.section	.text.before_scheduler,"ax",@progbits
	.weak	before_scheduler
	.type	before_scheduler, @function
before_scheduler:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	before_scheduler, .-before_scheduler
	.section	.text.schedule,"ax",@progbits
.global	schedule
	.type	schedule, @function
schedule:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	call dms_schedule
	movw r18,r24
	sbiw r24,0
	breq .L325
.L324:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
.L325:
	movw r24,r28
	call rr_schedule
	movw r18,r24
	sbiw r24,0
	brne .L324
	lds r18,__idle_process
	lds r19,__idle_process+1
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	schedule, .-schedule
	.section	.text.init_kernel,"ax",@progbits
.global	init_kernel
	.type	init_kernel, @function
init_kernel:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	in r24,80-32
	ori r24,lo8(-128)
	out 80-32,r24
	lds r24,100
	ori r24,lo8(96)
	sts 100,r24
	ldi r24,lo8(16)
	sts 96,r24
	lds r24,96
	ori r24,lo8(5)
	sts 96,r24
	lds r22,__main_process_additional_memory
	subi r22,lo8(-(6))
	sts __main_process_additional_memory,r22
	lds r16,__default_stack_size
	lds r17,__default_stack_size+1
	ldi r28,lo8(16639)
	ldi r29,hi8(16639)
	sub r28,r16
	sbc r29,r17
	sts __malloc_heap_end+1,r29
	sts __malloc_heap_end,r28
	sts __malloc_margin+1,__zero_reg__
	sts __malloc_margin,__zero_reg__
	ldi r23,lo8(0)
	subi r22,lo8(-(2))
	sbci r23,hi8(-(2))
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	call calloc
	movw r30,r24
	sbiw r24,0
	breq .L328
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	movw r26,r24
	adiw r26,4
.L327:
	sts __current_process+1,r31
	sts __current_process,r30
	adiw r26,1
	st X,__zero_reg__
	st -X,__zero_reg__
	adiw r26,2+1
	st X,r17
	st -X,r16
	sbiw r26,2
	adiw r26,4+1
	st X,r29
	st -X,r28
	sbiw r26,4
	ldi r24,lo8(3)
	ldi r25,hi8(3)
	call rr_captureMainProcess
	call before_scheduler
	ldi r24,lo8(Timer3A)
	ldi r25,hi8(Timer3A)
	call enableTimerInterrupt
/* #APP */
 ;  27 ".././shared/scheduler.kernel.h" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L328:
	ldi r26,lo8(4)
	ldi r27,hi8(4)
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	rjmp .L327
	.size	init_kernel, .-init_kernel
	.section	.init8
.global	init_kernel_kernel_init
	.type	init_kernel_kernel_init, @function
init_kernel_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,80-32
	ori r24,lo8(-128)
	out 80-32,r24
	lds r24,100
	ori r24,lo8(96)
	sts 100,r24
	ldi r24,lo8(16)
	sts 96,r24
	lds r24,96
	ori r24,lo8(5)
	sts 96,r24
	lds r22,__main_process_additional_memory
	subi r22,lo8(-(6))
	sts __main_process_additional_memory,r22
	lds r16,__default_stack_size
	lds r17,__default_stack_size+1
	ldi r28,lo8(16639)
	ldi r29,hi8(16639)
	sub r28,r16
	sbc r29,r17
	sts __malloc_heap_end+1,r29
	sts __malloc_heap_end,r28
	sts __malloc_margin+1,__zero_reg__
	sts __malloc_margin,__zero_reg__
	ldi r23,lo8(0)
	subi r22,lo8(-(2))
	sbci r23,hi8(-(2))
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	call calloc
	movw r30,r24
	sbiw r24,0
	breq .L331
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	movw r26,r24
	adiw r26,4
.L330:
	sts __current_process+1,r31
	sts __current_process,r30
	adiw r26,1
	st X,__zero_reg__
	st -X,__zero_reg__
	adiw r26,2+1
	st X,r17
	st -X,r16
	sbiw r26,2
	adiw r26,4+1
	st X,r29
	st -X,r28
	sbiw r26,4
	ldi r24,lo8(3)
	ldi r25,hi8(3)
	call rr_captureMainProcess
	call before_scheduler
	ldi r24,lo8(Timer3A)
	ldi r25,hi8(Timer3A)
	call enableTimerInterrupt
/* #APP */
 ;  27 ".././shared/scheduler.kernel.h" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
.L331:
	ldi r26,lo8(4)
	ldi r27,hi8(4)
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	rjmp .L330
	.size	init_kernel_kernel_init, .-init_kernel_kernel_init
.global	current_reset_status
.global	current_reset_status
	.section .bss
	.type	current_reset_status, @object
	.size	current_reset_status, 1
current_reset_status:
	.skip 1,0
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
.global	twi_defaultSlaveBuffer
	.type	twi_defaultSlaveBuffer, @object
	.size	twi_defaultSlaveBuffer, 4
twi_defaultSlaveBuffer:
	.word	twi_defaultSlaveBufferData
	.word	64
.global	__default_stack_size
	.type	__default_stack_size, @object
	.size	__default_stack_size, 2
__default_stack_size:
	.word	512
.global	__main_process_additional_memory
.global	__main_process_additional_memory
	.section .bss
	.type	__main_process_additional_memory, @object
	.size	__main_process_additional_memory, 1
__main_process_additional_memory:
	.skip 1,0
.global	__nextProcessNumber
	.data
	.type	__nextProcessNumber, @object
	.size	__nextProcessNumber, 2
__nextProcessNumber:
	.word	1
.global	__current_process
.global	__current_process
	.section .bss
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
	.comm LeftYellow,2,1
	.comm LeftRed,2,1
	.comm RightRed,2,1
	.comm RightYellow,2,1
	.comm RedLeds,3,1
	.comm YellowLeds,3,1
	.comm RightLeds,3,1
	.comm LeftLeds,3,1
	.comm AllLeds,3,1
	.comm ButtonRightBackward,2,1
	.comm ButtonRightForward,2,1
	.comm ButtonLeftBackward,2,1
	.comm ButtonLeftForward,2,1
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
	.comm LeftMotor,5,1
	.comm RightMotor,5,1
	.comm twi_running,2,1
	.comm twi_defaultSlaveBufferData,64,1
	.comm twi_address,1,1
	.comm alreadyHandled,2,1
	.comm twi_buffer,4,1
	.comm error,2,1
	.comm furtherOperations,21,1
	.comm nextTwiOperation,2,1
	.comm __idle_process,2,1
	.data
	.type	C.36.3246, @object
	.size	C.36.3246, 5
C.36.3246:
	.byte	0
	.word	PinD7
	.word	Timer1B
	.type	C.35.3245, @object
	.size	C.35.3245, 5
C.35.3245:
	.byte	0
	.word	PinD6
	.word	Timer1A
	.type	C.49.3262, @object
	.size	C.49.3262, 8
C.49.3262:
	.word	Timer3
	.word	154
	.word	1
	.word	PinB7
	.type	C.48.3261, @object
	.size	C.48.3261, 8
C.48.3261:
	.word	Timer3
	.word	152
	.word	0
	.word	PinB6
	.type	C.47.3260, @object
	.size	C.47.3260, 8
C.47.3260:
	.word	Timer2
	.word	180
	.word	1
	.word	PinD6
	.type	C.46.3259, @object
	.size	C.46.3259, 8
C.46.3259:
	.word	Timer2
	.word	179
	.word	0
	.word	PinD7
	.type	C.45.3258, @object
	.size	C.45.3258, 8
C.45.3258:
	.word	Timer1
	.word	138
	.word	1
	.word	PinD4
	.type	C.44.3257, @object
	.size	C.44.3257, 8
C.44.3257:
	.word	Timer1
	.word	136
	.word	0
	.word	PinD5
	.type	C.43.3256, @object
	.size	C.43.3256, 8
C.43.3256:
	.word	Timer0
	.word	72
	.word	1
	.word	PinB4
	.type	C.42.3255, @object
	.size	C.42.3255, 8
C.42.3255:
	.word	Timer0
	.word	71
	.word	0
	.word	PinB3
	.type	C.41.3254, @object
	.size	C.41.3254, 7
C.41.3254:
	.byte	4
	.word	144
	.word	145
	.word	113
	.type	C.40.3253, @object
	.size	C.40.3253, 7
C.40.3253:
	.byte	2
	.word	176
	.word	177
	.word	112
	.type	C.39.3252, @object
	.size	C.39.3252, 7
C.39.3252:
	.byte	4
	.word	128
	.word	129
	.word	111
	.type	C.38.3251, @object
	.size	C.38.3251, 7
C.38.3251:
	.byte	0
	.word	68
	.word	69
	.word	110
	.type	C.54.3271, @object
	.size	C.54.3271, 3
C.54.3271:
	.word	allLedsArray
	.byte	4
	.type	C.53.3270, @object
	.size	C.53.3270, 3
C.53.3270:
	.word	leftLedsArray
	.byte	2
	.type	C.52.3269, @object
	.size	C.52.3269, 3
C.52.3269:
	.word	rightLedsArray
	.byte	2
	.type	C.51.3268, @object
	.size	C.51.3268, 3
C.51.3268:
	.word	yellowLedsArray
	.byte	2
	.type	C.50.3267, @object
	.size	C.50.3267, 3
C.50.3267:
	.word	redLedsArray
	.byte	2
	.type	C.90.3308, @object
	.size	C.90.3308, 3
C.90.3308:
	.word	PortD
	.byte	-128
	.type	C.89.3307, @object
	.size	C.89.3307, 3
C.89.3307:
	.word	PortD
	.byte	64
	.type	C.88.3306, @object
	.size	C.88.3306, 3
C.88.3306:
	.word	PortD
	.byte	32
	.type	C.87.3305, @object
	.size	C.87.3305, 3
C.87.3305:
	.word	PortD
	.byte	16
	.type	C.86.3304, @object
	.size	C.86.3304, 3
C.86.3304:
	.word	PortD
	.byte	8
	.type	C.85.3303, @object
	.size	C.85.3303, 3
C.85.3303:
	.word	PortD
	.byte	4
	.type	C.84.3302, @object
	.size	C.84.3302, 3
C.84.3302:
	.word	PortD
	.byte	2
	.type	C.83.3301, @object
	.size	C.83.3301, 3
C.83.3301:
	.word	PortD
	.byte	1
	.type	C.82.3300, @object
	.size	C.82.3300, 6
C.82.3300:
	.word	43
	.word	41
	.word	42
	.type	C.81.3299, @object
	.size	C.81.3299, 3
C.81.3299:
	.word	PortC
	.byte	-128
	.type	C.80.3298, @object
	.size	C.80.3298, 3
C.80.3298:
	.word	PortC
	.byte	64
	.type	C.79.3297, @object
	.size	C.79.3297, 3
C.79.3297:
	.word	PortC
	.byte	32
	.type	C.78.3296, @object
	.size	C.78.3296, 3
C.78.3296:
	.word	PortC
	.byte	16
	.type	C.77.3295, @object
	.size	C.77.3295, 3
C.77.3295:
	.word	PortC
	.byte	8
	.type	C.76.3294, @object
	.size	C.76.3294, 3
C.76.3294:
	.word	PortC
	.byte	4
	.type	C.75.3293, @object
	.size	C.75.3293, 3
C.75.3293:
	.word	PortC
	.byte	2
	.type	C.74.3292, @object
	.size	C.74.3292, 3
C.74.3292:
	.word	PortC
	.byte	1
	.type	C.73.3291, @object
	.size	C.73.3291, 6
C.73.3291:
	.word	40
	.word	38
	.word	39
	.type	C.72.3290, @object
	.size	C.72.3290, 3
C.72.3290:
	.word	PortB
	.byte	-128
	.type	C.71.3289, @object
	.size	C.71.3289, 3
C.71.3289:
	.word	PortB
	.byte	64
	.type	C.70.3288, @object
	.size	C.70.3288, 3
C.70.3288:
	.word	PortB
	.byte	32
	.type	C.69.3287, @object
	.size	C.69.3287, 3
C.69.3287:
	.word	PortB
	.byte	16
	.type	C.68.3286, @object
	.size	C.68.3286, 3
C.68.3286:
	.word	PortB
	.byte	8
	.type	C.67.3285, @object
	.size	C.67.3285, 3
C.67.3285:
	.word	PortB
	.byte	4
	.type	C.66.3284, @object
	.size	C.66.3284, 3
C.66.3284:
	.word	PortB
	.byte	2
	.type	C.65.3283, @object
	.size	C.65.3283, 3
C.65.3283:
	.word	PortB
	.byte	1
	.type	C.64.3282, @object
	.size	C.64.3282, 6
C.64.3282:
	.word	37
	.word	35
	.word	36
	.type	C.63.3281, @object
	.size	C.63.3281, 3
C.63.3281:
	.word	PortA
	.byte	-128
	.type	C.62.3280, @object
	.size	C.62.3280, 3
C.62.3280:
	.word	PortA
	.byte	64
	.type	C.61.3279, @object
	.size	C.61.3279, 3
C.61.3279:
	.word	PortA
	.byte	32
	.type	C.60.3278, @object
	.size	C.60.3278, 3
C.60.3278:
	.word	PortA
	.byte	16
	.type	C.59.3277, @object
	.size	C.59.3277, 3
C.59.3277:
	.word	PortA
	.byte	8
	.type	C.58.3276, @object
	.size	C.58.3276, 3
C.58.3276:
	.word	PortA
	.byte	4
	.type	C.57.3275, @object
	.size	C.57.3275, 3
C.57.3275:
	.word	PortA
	.byte	2
	.type	C.56.3274, @object
	.size	C.56.3274, 3
C.56.3274:
	.word	PortA
	.byte	1
	.type	C.55.3273, @object
	.size	C.55.3273, 6
C.55.3273:
	.word	34
	.word	32
	.word	33
.global __do_copy_data
.global __do_clear_bss
