	.file	"kernel.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.text
	.type	initMotorTimer, @function
initMotorTimer:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ld r24,Y
	ldd r25,Y+1
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call setTimerClockSelect
	ld r24,Y
	ldd r25,Y+1
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call setWaveformGenerationMode
	ldd r24,Y+6
	ldd r25,Y+7
	call setPinOutput
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	initMotorTimer, .-initMotorTimer
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
	ldi r24,lo8(24)
/* #APP */
 ;  25 "AntonAvrLib/kernel/reset_condition.kernel.h" 1
	in __tmp_reg__, __SREG__
	cli
	sts 96, r24
	sts 96, __zero_reg__
	out __SREG__,__tmp_reg__
	
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
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
	call init_reset_condition
/* epilogue start */
	.size	init_reset_condition_kernel_init, .-init_reset_condition_kernel_init
	.text
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
	.data
.LC23:
	.word	34
	.word	32
	.word	33
.LC24:
	.word	PortA_
	.byte	1
.LC25:
	.word	PortA_
	.byte	2
.LC26:
	.word	PortA_
	.byte	4
.LC27:
	.word	PortA_
	.byte	8
.LC28:
	.word	PortA_
	.byte	16
.LC29:
	.word	PortA_
	.byte	32
.LC30:
	.word	PortA_
	.byte	64
.LC31:
	.word	PortA_
	.byte	-128
.LC32:
	.word	37
	.word	35
	.word	36
.LC33:
	.word	PortB_
	.byte	1
.LC34:
	.word	PortB_
	.byte	2
.LC35:
	.word	PortB_
	.byte	4
.LC36:
	.word	PortB_
	.byte	8
.LC37:
	.word	PortB_
	.byte	16
.LC38:
	.word	PortB_
	.byte	32
.LC39:
	.word	PortB_
	.byte	64
.LC40:
	.word	PortB_
	.byte	-128
.LC41:
	.word	40
	.word	38
	.word	39
.LC42:
	.word	PortC_
	.byte	1
.LC43:
	.word	PortC_
	.byte	2
.LC44:
	.word	PortC_
	.byte	4
.LC45:
	.word	PortC_
	.byte	8
.LC46:
	.word	PortC_
	.byte	16
.LC47:
	.word	PortC_
	.byte	32
.LC48:
	.word	PortC_
	.byte	64
.LC49:
	.word	PortC_
	.byte	-128
.LC50:
	.word	43
	.word	41
	.word	42
.LC51:
	.word	PortD_
	.byte	1
.LC52:
	.word	PortD_
	.byte	2
.LC53:
	.word	PortD_
	.byte	4
.LC54:
	.word	PortD_
	.byte	8
.LC55:
	.word	PortD_
	.byte	16
.LC56:
	.word	PortD_
	.byte	32
.LC57:
	.word	PortD_
	.byte	64
.LC58:
	.word	PortD_
	.byte	-128
	.text
.global	init_ports_m1284P
	.type	init_ports_m1284P, @function
init_ports_m1284P:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r26,lo8(PortA_)
	ldi r27,hi8(PortA_)
	ldi r30,lo8(.LC23)
	ldi r31,hi8(.LC23)
	ldi r24,lo8(6)
.L6:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L6
	ldi r26,lo8(PinA0_)
	ldi r27,hi8(PinA0_)
	ldi r30,lo8(.LC24)
	ldi r31,hi8(.LC24)
	ldi r24,lo8(3)
.L7:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L7
	ldi r26,lo8(PinA1_)
	ldi r27,hi8(PinA1_)
	ldi r30,lo8(.LC25)
	ldi r31,hi8(.LC25)
	ldi r24,lo8(3)
.L8:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L8
	ldi r26,lo8(PinA2_)
	ldi r27,hi8(PinA2_)
	ldi r30,lo8(.LC26)
	ldi r31,hi8(.LC26)
	ldi r24,lo8(3)
.L9:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L9
	ldi r26,lo8(PinA3_)
	ldi r27,hi8(PinA3_)
	ldi r30,lo8(.LC27)
	ldi r31,hi8(.LC27)
	ldi r24,lo8(3)
.L10:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L10
	ldi r26,lo8(PinA4_)
	ldi r27,hi8(PinA4_)
	ldi r30,lo8(.LC28)
	ldi r31,hi8(.LC28)
	ldi r24,lo8(3)
.L11:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L11
	ldi r26,lo8(PinA5_)
	ldi r27,hi8(PinA5_)
	ldi r30,lo8(.LC29)
	ldi r31,hi8(.LC29)
	ldi r24,lo8(3)
.L12:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L12
	ldi r26,lo8(PinA6_)
	ldi r27,hi8(PinA6_)
	ldi r30,lo8(.LC30)
	ldi r31,hi8(.LC30)
	ldi r24,lo8(3)
.L13:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L13
	ldi r26,lo8(PinA7_)
	ldi r27,hi8(PinA7_)
	ldi r30,lo8(.LC31)
	ldi r31,hi8(.LC31)
	ldi r24,lo8(3)
.L14:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L14
	ldi r26,lo8(PortB_)
	ldi r27,hi8(PortB_)
	ldi r30,lo8(.LC32)
	ldi r31,hi8(.LC32)
	ldi r24,lo8(6)
.L15:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L15
	ldi r26,lo8(PinB0_)
	ldi r27,hi8(PinB0_)
	ldi r30,lo8(.LC33)
	ldi r31,hi8(.LC33)
	ldi r24,lo8(3)
.L16:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L16
	ldi r26,lo8(PinB1_)
	ldi r27,hi8(PinB1_)
	ldi r30,lo8(.LC34)
	ldi r31,hi8(.LC34)
	ldi r24,lo8(3)
.L17:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L17
	ldi r26,lo8(PinB2_)
	ldi r27,hi8(PinB2_)
	ldi r30,lo8(.LC35)
	ldi r31,hi8(.LC35)
	ldi r24,lo8(3)
.L18:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L18
	ldi r26,lo8(PinB3_)
	ldi r27,hi8(PinB3_)
	ldi r30,lo8(.LC36)
	ldi r31,hi8(.LC36)
	ldi r24,lo8(3)
.L19:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L19
	ldi r26,lo8(PinB4_)
	ldi r27,hi8(PinB4_)
	ldi r30,lo8(.LC37)
	ldi r31,hi8(.LC37)
	ldi r24,lo8(3)
.L20:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L20
	ldi r26,lo8(PinB5_)
	ldi r27,hi8(PinB5_)
	ldi r30,lo8(.LC38)
	ldi r31,hi8(.LC38)
	ldi r24,lo8(3)
.L21:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L21
	ldi r26,lo8(PinB6_)
	ldi r27,hi8(PinB6_)
	ldi r30,lo8(.LC39)
	ldi r31,hi8(.LC39)
	ldi r24,lo8(3)
.L22:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L22
	ldi r26,lo8(PinB7_)
	ldi r27,hi8(PinB7_)
	ldi r30,lo8(.LC40)
	ldi r31,hi8(.LC40)
	ldi r24,lo8(3)
.L23:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L23
	ldi r26,lo8(PortC_)
	ldi r27,hi8(PortC_)
	ldi r30,lo8(.LC41)
	ldi r31,hi8(.LC41)
	ldi r24,lo8(6)
.L24:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L24
	ldi r26,lo8(PinC0_)
	ldi r27,hi8(PinC0_)
	ldi r30,lo8(.LC42)
	ldi r31,hi8(.LC42)
	ldi r24,lo8(3)
.L25:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L25
	ldi r26,lo8(PinC1_)
	ldi r27,hi8(PinC1_)
	ldi r30,lo8(.LC43)
	ldi r31,hi8(.LC43)
	ldi r24,lo8(3)
.L26:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L26
	ldi r26,lo8(PinC2_)
	ldi r27,hi8(PinC2_)
	ldi r30,lo8(.LC44)
	ldi r31,hi8(.LC44)
	ldi r24,lo8(3)
.L27:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L27
	ldi r26,lo8(PinC3_)
	ldi r27,hi8(PinC3_)
	ldi r30,lo8(.LC45)
	ldi r31,hi8(.LC45)
	ldi r24,lo8(3)
.L28:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L28
	ldi r26,lo8(PinC4_)
	ldi r27,hi8(PinC4_)
	ldi r30,lo8(.LC46)
	ldi r31,hi8(.LC46)
	ldi r24,lo8(3)
.L29:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L29
	ldi r26,lo8(PinC5_)
	ldi r27,hi8(PinC5_)
	ldi r30,lo8(.LC47)
	ldi r31,hi8(.LC47)
	ldi r24,lo8(3)
.L30:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L30
	ldi r26,lo8(PinC6_)
	ldi r27,hi8(PinC6_)
	ldi r30,lo8(.LC48)
	ldi r31,hi8(.LC48)
	ldi r24,lo8(3)
.L31:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L31
	ldi r26,lo8(PinC7_)
	ldi r27,hi8(PinC7_)
	ldi r30,lo8(.LC49)
	ldi r31,hi8(.LC49)
	ldi r24,lo8(3)
.L32:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L32
	ldi r26,lo8(PortD_)
	ldi r27,hi8(PortD_)
	ldi r30,lo8(.LC50)
	ldi r31,hi8(.LC50)
	ldi r24,lo8(6)
.L33:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L33
	ldi r26,lo8(PinD0_)
	ldi r27,hi8(PinD0_)
	ldi r30,lo8(.LC51)
	ldi r31,hi8(.LC51)
	ldi r24,lo8(3)
.L34:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L34
	ldi r26,lo8(PinD1_)
	ldi r27,hi8(PinD1_)
	ldi r30,lo8(.LC52)
	ldi r31,hi8(.LC52)
	ldi r24,lo8(3)
.L35:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L35
	ldi r26,lo8(PinD2_)
	ldi r27,hi8(PinD2_)
	ldi r30,lo8(.LC53)
	ldi r31,hi8(.LC53)
	ldi r24,lo8(3)
.L36:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L36
	ldi r26,lo8(PinD3_)
	ldi r27,hi8(PinD3_)
	ldi r30,lo8(.LC54)
	ldi r31,hi8(.LC54)
	ldi r24,lo8(3)
.L37:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L37
	ldi r26,lo8(PinD4_)
	ldi r27,hi8(PinD4_)
	ldi r30,lo8(.LC55)
	ldi r31,hi8(.LC55)
	ldi r24,lo8(3)
.L38:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L38
	ldi r26,lo8(PinD5_)
	ldi r27,hi8(PinD5_)
	ldi r30,lo8(.LC56)
	ldi r31,hi8(.LC56)
	ldi r24,lo8(3)
.L39:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L39
	ldi r26,lo8(PinD6_)
	ldi r27,hi8(PinD6_)
	ldi r30,lo8(.LC57)
	ldi r31,hi8(.LC57)
	ldi r24,lo8(3)
.L40:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L40
	ldi r26,lo8(PinD7_)
	ldi r27,hi8(PinD7_)
	ldi r30,lo8(.LC58)
	ldi r31,hi8(.LC58)
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
	.data
.LC11:
	.byte	0
	.word	0
	.word	68
	.word	69
	.word	110
.LC12:
	.byte	4
	.word	0
	.word	128
	.word	129
	.word	111
.LC13:
	.byte	2
	.word	0
	.word	176
	.word	177
	.word	112
.LC14:
	.byte	4
	.word	0
	.word	144
	.word	145
	.word	113
.LC15:
	.word	Timer0_
	.word	71
	.word	0
	.word	PinB3_
.LC16:
	.word	Timer0_
	.word	72
	.word	1
	.word	PinB4_
.LC17:
	.word	Timer1_
	.word	136
	.word	0
	.word	PinD5_
.LC18:
	.word	Timer1_
	.word	138
	.word	1
	.word	PinD4_
.LC19:
	.word	Timer2_
	.word	179
	.word	0
	.word	PinD7_
.LC20:
	.word	Timer2_
	.word	180
	.word	1
	.word	PinD6_
.LC21:
	.word	Timer3_
	.word	152
	.word	0
	.word	PinB6_
.LC22:
	.word	Timer3_
	.word	154
	.word	1
	.word	PinB7_
	.text
.global	init_timer_m1284P
	.type	init_timer_m1284P, @function
init_timer_m1284P:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r26,lo8(Timer0_)
	ldi r27,hi8(Timer0_)
	ldi r30,lo8(.LC11)
	ldi r31,hi8(.LC11)
	ldi r24,lo8(9)
.L80:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L80
	ldi r26,lo8(Timer1_)
	ldi r27,hi8(Timer1_)
	ldi r30,lo8(.LC12)
	ldi r31,hi8(.LC12)
	ldi r24,lo8(9)
.L81:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L81
	ldi r26,lo8(Timer2_)
	ldi r27,hi8(Timer2_)
	ldi r30,lo8(.LC13)
	ldi r31,hi8(.LC13)
	ldi r24,lo8(9)
.L82:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L82
	ldi r26,lo8(Timer3_)
	ldi r27,hi8(Timer3_)
	ldi r30,lo8(.LC14)
	ldi r31,hi8(.LC14)
	ldi r24,lo8(9)
.L83:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L83
	ldi r26,lo8(Timer0A_)
	ldi r27,hi8(Timer0A_)
	ldi r30,lo8(.LC15)
	ldi r31,hi8(.LC15)
	ldi r24,lo8(8)
.L84:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L84
	ldi r26,lo8(Timer0B_)
	ldi r27,hi8(Timer0B_)
	ldi r30,lo8(.LC16)
	ldi r31,hi8(.LC16)
	ldi r24,lo8(8)
.L85:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L85
	ldi r26,lo8(Timer1A_)
	ldi r27,hi8(Timer1A_)
	ldi r30,lo8(.LC17)
	ldi r31,hi8(.LC17)
	ldi r24,lo8(8)
.L86:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L86
	ldi r26,lo8(Timer1B_)
	ldi r27,hi8(Timer1B_)
	ldi r30,lo8(.LC18)
	ldi r31,hi8(.LC18)
	ldi r24,lo8(8)
.L87:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L87
	ldi r26,lo8(Timer2A_)
	ldi r27,hi8(Timer2A_)
	ldi r30,lo8(.LC19)
	ldi r31,hi8(.LC19)
	ldi r24,lo8(8)
.L88:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L88
	ldi r26,lo8(Timer2B_)
	ldi r27,hi8(Timer2B_)
	ldi r30,lo8(.LC20)
	ldi r31,hi8(.LC20)
	ldi r24,lo8(8)
.L89:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L89
	ldi r26,lo8(Timer3A_)
	ldi r27,hi8(Timer3A_)
	ldi r30,lo8(.LC21)
	ldi r31,hi8(.LC21)
	ldi r24,lo8(8)
.L90:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L90
	ldi r26,lo8(Timer3B_)
	ldi r27,hi8(Timer3B_)
	ldi r30,lo8(.LC22)
	ldi r31,hi8(.LC22)
	ldi r24,lo8(8)
.L91:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L91
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
	.text
.global	init_timer
	.type	init_timer, @function
init_timer:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r28,lo8(Timer3_)
	ldi r29,hi8(Timer3_)
	movw r24,r28
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call setWaveformGenerationMode
	movw r24,r28
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call setTimerClockSelect
	ldi r24,lo8(Timer3A_)
	ldi r25,hi8(Timer3A_)
	ldi r22,lo8(2500)
	ldi r23,hi8(2500)
	call setTimerCompareValue
	ldi r24,lo8(Timer3B_)
	ldi r25,hi8(Timer3B_)
	ldi r22,lo8(2500)
	ldi r23,hi8(2500)
	call setTimerCompareValue
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	init_timer, .-init_timer
	.section	.init8
.global	init_timer_kernel_init
	.type	init_timer_kernel_init, @function
init_timer_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_timer
/* epilogue start */
	.size	init_timer_kernel_init, .-init_timer_kernel_init
	.text
	.weak	in_timer_tick
	.type	in_timer_tick, @function
in_timer_tick:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	in_timer_tick, .-in_timer_tick
.global	__vector_32
	.type	__vector_32, @function
__vector_32:
	push r1
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
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
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
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
	call in_timer_tick
/* epilogue start */
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
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_32, .-__vector_32
.global	mutex_create
	.type	mutex_create, @function
mutex_create:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	call malloc
/* epilogue start */
	ret
	.size	mutex_create, .-mutex_create
.global	mutex_lock
	.type	mutex_lock, @function
mutex_lock:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r18,__SREG__
	ldi r19,lo8(0)
	andi r18,lo8(128)
	andi r19,hi8(128)
	movw r30,r24
	std Z+1,r19
	st Z,r18
/* #APP */
 ;  24 "AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h" 1
	cli
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
	.size	mutex_lock, .-mutex_lock
.global	mutex_trylock
	.type	mutex_trylock, @function
mutex_trylock:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call mutex_lock
	ldi r24,lo8(1)
	ldi r25,hi8(1)
/* epilogue start */
	ret
	.size	mutex_trylock, .-mutex_trylock
.global	mutex_release
	.type	mutex_release, @function
mutex_release:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L112
/* #APP */
 ;  34 "AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L112:
	ret
	.size	mutex_release, .-mutex_release
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
	.text
.global	__vector_24
	.type	__vector_24, @function
__vector_24:
	push r1
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
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
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	lds r30,analogCallbackFunction
	lds r31,analogCallbackFunction+1
	sbiw r30,0
	breq .L115
	lds r24,121
	icall
.L115:
/* epilogue start */
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
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_24, .-__vector_24
.global	init_analog
	.type	init_analog, @function
init_analog:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(96)
	sts 124,r24
	ldi r24,lo8(-115)
	sts 122,r24
	sts 123,__zero_reg__
/* epilogue start */
	ret
	.size	init_analog, .-init_analog
	.section	.init8
.global	init_analog_kernel_init
	.type	init_analog_kernel_init, @function
init_analog_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_analog
/* epilogue start */
	.size	init_analog_kernel_init, .-init_analog_kernel_init
	.data
.LC4:
	.word	PinA1_
	.byte	1
.LC5:
	.word	PinA2_
	.byte	2
.LC6:
	.word	PinA3_
	.byte	3
.LC7:
	.word	PinA4_
	.byte	4
.LC8:
	.word	PinA5_
	.byte	5
.LC9:
	.word	PinA6_
	.byte	6
.LC10:
	.word	PinA7_
	.byte	7
	.text
.global	init_analog_m1284P
	.type	init_analog_m1284P, @function
init_analog_m1284P:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(PinA0_)
	ldi r25,hi8(PinA0_)
	sts Analog0_+1,r25
	sts Analog0_,r24
	sts Analog0_+2,__zero_reg__
	ldi r26,lo8(Analog1_)
	ldi r27,hi8(Analog1_)
	ldi r30,lo8(.LC4)
	ldi r31,hi8(.LC4)
	ldi r24,lo8(3)
.L120:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L120
	ldi r26,lo8(Analog2_)
	ldi r27,hi8(Analog2_)
	ldi r30,lo8(.LC5)
	ldi r31,hi8(.LC5)
	ldi r24,lo8(3)
.L121:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L121
	ldi r26,lo8(Analog3_)
	ldi r27,hi8(Analog3_)
	ldi r30,lo8(.LC6)
	ldi r31,hi8(.LC6)
	ldi r24,lo8(3)
.L122:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L122
	ldi r26,lo8(Analog4_)
	ldi r27,hi8(Analog4_)
	ldi r30,lo8(.LC7)
	ldi r31,hi8(.LC7)
	ldi r24,lo8(3)
.L123:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L123
	ldi r26,lo8(Analog5_)
	ldi r27,hi8(Analog5_)
	ldi r30,lo8(.LC8)
	ldi r31,hi8(.LC8)
	ldi r24,lo8(3)
.L124:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L124
	ldi r26,lo8(Analog6_)
	ldi r27,hi8(Analog6_)
	ldi r30,lo8(.LC9)
	ldi r31,hi8(.LC9)
	ldi r24,lo8(3)
.L125:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L125
	ldi r26,lo8(Analog7_)
	ldi r27,hi8(Analog7_)
	ldi r30,lo8(.LC10)
	ldi r31,hi8(.LC10)
	ldi r24,lo8(3)
.L126:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L126
/* epilogue start */
	ret
	.size	init_analog_m1284P, .-init_analog_m1284P
	.section	.init8
.global	init_analog_m1284P_kernel_init
	.type	init_analog_m1284P_kernel_init, @function
init_analog_m1284P_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_analog_m1284P
/* epilogue start */
	.size	init_analog_m1284P_kernel_init, .-init_analog_m1284P_kernel_init
	.text
.global	initMotor_1Dir1Speed
	.type	initMotor_1Dir1Speed, @function
initMotor_1Dir1Speed:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldd r24,Y+9
	ldd r25,Y+10
	call setPinOutput
	ldd r24,Y+11
	ldd r25,Y+12
	call initMotorTimer
	movw r24,r28
	call stopMotor
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	initMotor_1Dir1Speed, .-initMotor_1Dir1Speed
.global	initMotor_2Dir
	.type	initMotor_2Dir, @function
initMotor_2Dir:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldd r24,Y+9
	ldd r25,Y+10
	call setPinOutput
	ldd r24,Y+11
	ldd r25,Y+12
	call setPinOutput
	ldd r24,Y+9
	ldd r25,Y+10
	call setPinZero
	ldd r24,Y+11
	ldd r25,Y+12
	call setPinZero
	ldd r24,Y+13
	ldd r25,Y+14
	call initMotorTimer
	movw r24,r28
	call stopMotor
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	initMotor_2Dir, .-initMotor_2Dir
.global	initMotor_2Speed
	.type	initMotor_2Speed, @function
initMotor_2Speed:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldd r24,Y+9
	ldd r25,Y+10
	call initMotorTimer
	ldd r24,Y+11
	ldd r25,Y+12
	call initMotorTimer
	movw r24,r28
	call stopMotor
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	initMotor_2Speed, .-initMotor_2Speed
.global	initSmoothMotor
	.type	initSmoothMotor, @function
initSmoothMotor:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	call mutex_create
	std Y+15,r25
	std Y+14,r24
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	initSmoothMotor, .-initSmoothMotor
.global	motor_smooth_pair_tick
	.type	motor_smooth_pair_tick, @function
motor_smooth_pair_tick:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,motor_A_running
	lds r25,motor_A_running+1
	sbiw r24,0
	breq .L140
	ldi r24,lo8(LeftMotor_)
	ldi r25,hi8(LeftMotor_)
	call motor_smooth_tick
.L140:
	lds r24,motor_B_running
	lds r25,motor_B_running+1
	sbiw r24,0
	breq .L139
	ldi r24,lo8(RightMotor_)
	ldi r25,hi8(RightMotor_)
	call motor_smooth_tick
.L139:
	ret
	.size	motor_smooth_pair_tick, .-motor_smooth_pair_tick
	.data
.LC0:
	.byte	0
	.word	gs(motor2Speed_setDirSpeed)
	.word	gs(motor2Speed_getDirSpeed)
	.word	0
	.word	-1
	.word	Timer0A_
	.word	Timer0B_
.LC1:
	.byte	0
	.word	gs(motor2Speed_setDirSpeed)
	.word	gs(motor2Speed_getDirSpeed)
	.word	0
	.word	-1
	.word	Timer2A_
	.word	Timer2B_
.LC2:
	.word	LeftMotorBase_
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	130
	.word	0
.LC3:
	.word	RightMotorBase_
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	130
	.word	0
	.text
.global	init_tank_motors
	.type	init_tank_motors, @function
init_tank_motors:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r26,lo8(LeftMotorBase_)
	ldi r27,hi8(LeftMotorBase_)
	ldi r30,lo8(.LC0)
	ldi r31,hi8(.LC0)
	ldi r24,lo8(13)
.L143:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L143
	ldi r24,lo8(LeftMotorBase_)
	ldi r25,hi8(LeftMotorBase_)
	call initMotor_2Speed
	ldi r26,lo8(RightMotorBase_)
	ldi r27,hi8(RightMotorBase_)
	ldi r30,lo8(.LC1)
	ldi r31,hi8(.LC1)
	ldi r24,lo8(13)
.L144:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L144
	ldi r24,lo8(RightMotorBase_)
	ldi r25,hi8(RightMotorBase_)
	call initMotor_2Speed
	ldi r26,lo8(LeftMotor_)
	ldi r27,hi8(LeftMotor_)
	ldi r30,lo8(.LC2)
	ldi r31,hi8(.LC2)
	ldi r24,lo8(16)
.L145:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L145
	call mutex_create
	sts LeftMotor_+14+1,r25
	sts LeftMotor_+14,r24
	ldi r26,lo8(RightMotor_)
	ldi r27,hi8(RightMotor_)
	ldi r30,lo8(.LC3)
	ldi r31,hi8(.LC3)
	ldi r24,lo8(16)
.L146:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L146
	call mutex_create
	sts RightMotor_+14+1,r25
	sts RightMotor_+14,r24
/* epilogue start */
	ret
	.size	init_tank_motors, .-init_tank_motors
	.section	.init8
.global	init_tank_motors_kernel_init
	.type	init_tank_motors_kernel_init, @function
init_tank_motors_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_tank_motors
/* epilogue start */
	.size	init_tank_motors_kernel_init, .-init_tank_motors_kernel_init
	.text
.global	motor_smooth_pair_enable_tick
	.type	motor_smooth_pair_enable_tick, @function
motor_smooth_pair_enable_tick:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sbiw r24,0
	breq .L153
	ldi r24,lo8(Timer3B_)
	ldi r25,hi8(Timer3B_)
	call enableTimerInterrupt
	ret
.L153:
	ldi r24,lo8(Timer3B_)
	ldi r25,hi8(Timer3B_)
	call disableTimerInterrupt
	ret
	.size	motor_smooth_pair_enable_tick, .-motor_smooth_pair_enable_tick
	.type	control_smooth_motor.part.0, @function
control_smooth_motor.part.0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,motor_A_running
	lds r25,motor_A_running+1
	sbiw r24,0
	brne .L158
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	lds r18,motor_B_running
	lds r19,motor_B_running+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L156
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	rjmp .L156
.L158:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
.L156:
	call motor_smooth_pair_enable_tick
/* epilogue start */
	ret
	.size	control_smooth_motor.part.0, .-control_smooth_motor.part.0
.global	motor_smooth_stop_tick
	.type	motor_smooth_stop_tick, @function
motor_smooth_stop_tick:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,hi8(LeftMotor_)
	cpi r24,lo8(LeftMotor_)
	cpc r25,r18
	brne .L160
	sts motor_A_running+1,__zero_reg__
	sts motor_A_running,__zero_reg__
	rjmp .L161
.L160:
	ldi r18,hi8(RightMotor_)
	cpi r24,lo8(RightMotor_)
	cpc r25,r18
	brne .L159
	sts motor_B_running+1,__zero_reg__
	sts motor_B_running,__zero_reg__
.L161:
	call control_smooth_motor.part.0
.L159:
	ret
	.size	motor_smooth_stop_tick, .-motor_smooth_stop_tick
.global	motor_smooth_start_tick
	.type	motor_smooth_start_tick, @function
motor_smooth_start_tick:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,hi8(LeftMotor_)
	cpi r24,lo8(LeftMotor_)
	cpc r25,r18
	brne .L164
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts motor_A_running+1,r25
	sts motor_A_running,r24
	rjmp .L165
.L164:
	ldi r18,hi8(RightMotor_)
	cpi r24,lo8(RightMotor_)
	cpc r25,r18
	brne .L163
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts motor_B_running+1,r25
	sts motor_B_running,r24
.L165:
	call control_smooth_motor.part.0
.L163:
	ret
	.size	motor_smooth_start_tick, .-motor_smooth_start_tick
.global	__vector_33
	.type	__vector_33, @function
__vector_33:
	push r1
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
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
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	call motor_smooth_pair_tick
/* epilogue start */
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
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_33, .-__vector_33
	.weak	before_timer
	.type	before_timer, @function
before_timer:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	before_timer, .-before_timer
.global	init_kernel
	.type	init_kernel, @function
init_kernel:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,80-32
	ori r24,lo8(-128)
	out 80-32,r24
	call before_timer
	ldi r24,lo8(Timer3A_)
	ldi r25,hi8(Timer3A_)
	call enableTimerInterrupt
/* #APP */
 ;  37 "Kernel-Tank-MASTER/shared/base_after.kernel.h" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
	.size	init_kernel, .-init_kernel
	.section	.init8
.global	init_kernel_kernel_init
	.type	init_kernel_kernel_init, @function
init_kernel_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_kernel
/* epilogue start */
	.size	init_kernel_kernel_init, .-init_kernel_kernel_init
.global	motor_B_running
.global	motor_B_running
	.section .bss
	.type	motor_B_running, @object
	.size	motor_B_running, 2
motor_B_running:
	.skip 2,0
.global	motor_A_running
.global	motor_A_running
	.type	motor_A_running, @object
	.size	motor_A_running, 2
motor_A_running:
	.skip 2,0
.global	RightMotor
	.data
	.type	RightMotor, @object
	.size	RightMotor, 2
RightMotor:
	.word	RightMotor_
	.comm RightMotor_,16,1
.global	LeftMotor
	.type	LeftMotor, @object
	.size	LeftMotor, 2
LeftMotor:
	.word	LeftMotor_
	.comm LeftMotor_,16,1
.global	RightMotorBase
	.type	RightMotorBase, @object
	.size	RightMotorBase, 2
RightMotorBase:
	.word	RightMotorBase_
	.comm RightMotorBase_,13,1
.global	LeftMotorBase
	.type	LeftMotorBase, @object
	.size	LeftMotorBase, 2
LeftMotorBase:
	.word	LeftMotorBase_
	.comm LeftMotorBase_,13,1
.global	Timer3B
	.type	Timer3B, @object
	.size	Timer3B, 2
Timer3B:
	.word	Timer3B_
	.comm Timer3B_,8,1
.global	Timer3A
	.type	Timer3A, @object
	.size	Timer3A, 2
Timer3A:
	.word	Timer3A_
	.comm Timer3A_,8,1
.global	Timer2B
	.type	Timer2B, @object
	.size	Timer2B, 2
Timer2B:
	.word	Timer2B_
	.comm Timer2B_,8,1
.global	Timer2A
	.type	Timer2A, @object
	.size	Timer2A, 2
Timer2A:
	.word	Timer2A_
	.comm Timer2A_,8,1
.global	Timer1B
	.type	Timer1B, @object
	.size	Timer1B, 2
Timer1B:
	.word	Timer1B_
	.comm Timer1B_,8,1
.global	Timer1A
	.type	Timer1A, @object
	.size	Timer1A, 2
Timer1A:
	.word	Timer1A_
	.comm Timer1A_,8,1
.global	Timer0B
	.type	Timer0B, @object
	.size	Timer0B, 2
Timer0B:
	.word	Timer0B_
	.comm Timer0B_,8,1
.global	Timer0A
	.type	Timer0A, @object
	.size	Timer0A, 2
Timer0A:
	.word	Timer0A_
	.comm Timer0A_,8,1
.global	Timer3
	.type	Timer3, @object
	.size	Timer3, 2
Timer3:
	.word	Timer3_
	.comm Timer3_,9,1
.global	Timer2
	.type	Timer2, @object
	.size	Timer2, 2
Timer2:
	.word	Timer2_
	.comm Timer2_,9,1
.global	Timer1
	.type	Timer1, @object
	.size	Timer1, 2
Timer1:
	.word	Timer1_
	.comm Timer1_,9,1
.global	Timer0
	.type	Timer0, @object
	.size	Timer0, 2
Timer0:
	.word	Timer0_
	.comm Timer0_,9,1
.global	PinD7
	.type	PinD7, @object
	.size	PinD7, 2
PinD7:
	.word	PinD7_
	.comm PinD7_,3,1
.global	PinD6
	.type	PinD6, @object
	.size	PinD6, 2
PinD6:
	.word	PinD6_
	.comm PinD6_,3,1
.global	PinD5
	.type	PinD5, @object
	.size	PinD5, 2
PinD5:
	.word	PinD5_
	.comm PinD5_,3,1
.global	PinD4
	.type	PinD4, @object
	.size	PinD4, 2
PinD4:
	.word	PinD4_
	.comm PinD4_,3,1
.global	PinD3
	.type	PinD3, @object
	.size	PinD3, 2
PinD3:
	.word	PinD3_
	.comm PinD3_,3,1
.global	PinD2
	.type	PinD2, @object
	.size	PinD2, 2
PinD2:
	.word	PinD2_
	.comm PinD2_,3,1
.global	PinD1
	.type	PinD1, @object
	.size	PinD1, 2
PinD1:
	.word	PinD1_
	.comm PinD1_,3,1
.global	PinD0
	.type	PinD0, @object
	.size	PinD0, 2
PinD0:
	.word	PinD0_
	.comm PinD0_,3,1
.global	PortD
	.type	PortD, @object
	.size	PortD, 2
PortD:
	.word	PortD_
	.comm PortD_,6,1
.global	PinC7
	.type	PinC7, @object
	.size	PinC7, 2
PinC7:
	.word	PinC7_
	.comm PinC7_,3,1
.global	PinC6
	.type	PinC6, @object
	.size	PinC6, 2
PinC6:
	.word	PinC6_
	.comm PinC6_,3,1
.global	PinC5
	.type	PinC5, @object
	.size	PinC5, 2
PinC5:
	.word	PinC5_
	.comm PinC5_,3,1
.global	PinC4
	.type	PinC4, @object
	.size	PinC4, 2
PinC4:
	.word	PinC4_
	.comm PinC4_,3,1
.global	PinC3
	.type	PinC3, @object
	.size	PinC3, 2
PinC3:
	.word	PinC3_
	.comm PinC3_,3,1
.global	PinC2
	.type	PinC2, @object
	.size	PinC2, 2
PinC2:
	.word	PinC2_
	.comm PinC2_,3,1
.global	PinC1
	.type	PinC1, @object
	.size	PinC1, 2
PinC1:
	.word	PinC1_
	.comm PinC1_,3,1
.global	PinC0
	.type	PinC0, @object
	.size	PinC0, 2
PinC0:
	.word	PinC0_
	.comm PinC0_,3,1
.global	PortC
	.type	PortC, @object
	.size	PortC, 2
PortC:
	.word	PortC_
	.comm PortC_,6,1
.global	PinB7
	.type	PinB7, @object
	.size	PinB7, 2
PinB7:
	.word	PinB7_
	.comm PinB7_,3,1
.global	PinB6
	.type	PinB6, @object
	.size	PinB6, 2
PinB6:
	.word	PinB6_
	.comm PinB6_,3,1
.global	PinB5
	.type	PinB5, @object
	.size	PinB5, 2
PinB5:
	.word	PinB5_
	.comm PinB5_,3,1
.global	PinB4
	.type	PinB4, @object
	.size	PinB4, 2
PinB4:
	.word	PinB4_
	.comm PinB4_,3,1
.global	PinB3
	.type	PinB3, @object
	.size	PinB3, 2
PinB3:
	.word	PinB3_
	.comm PinB3_,3,1
.global	PinB2
	.type	PinB2, @object
	.size	PinB2, 2
PinB2:
	.word	PinB2_
	.comm PinB2_,3,1
.global	PinB1
	.type	PinB1, @object
	.size	PinB1, 2
PinB1:
	.word	PinB1_
	.comm PinB1_,3,1
.global	PinB0
	.type	PinB0, @object
	.size	PinB0, 2
PinB0:
	.word	PinB0_
	.comm PinB0_,3,1
.global	PortB
	.type	PortB, @object
	.size	PortB, 2
PortB:
	.word	PortB_
	.comm PortB_,6,1
.global	PinA7
	.type	PinA7, @object
	.size	PinA7, 2
PinA7:
	.word	PinA7_
	.comm PinA7_,3,1
.global	PinA6
	.type	PinA6, @object
	.size	PinA6, 2
PinA6:
	.word	PinA6_
	.comm PinA6_,3,1
.global	PinA5
	.type	PinA5, @object
	.size	PinA5, 2
PinA5:
	.word	PinA5_
	.comm PinA5_,3,1
.global	PinA4
	.type	PinA4, @object
	.size	PinA4, 2
PinA4:
	.word	PinA4_
	.comm PinA4_,3,1
.global	PinA3
	.type	PinA3, @object
	.size	PinA3, 2
PinA3:
	.word	PinA3_
	.comm PinA3_,3,1
.global	PinA2
	.type	PinA2, @object
	.size	PinA2, 2
PinA2:
	.word	PinA2_
	.comm PinA2_,3,1
.global	PinA1
	.type	PinA1, @object
	.size	PinA1, 2
PinA1:
	.word	PinA1_
	.comm PinA1_,3,1
.global	PinA0
	.type	PinA0, @object
	.size	PinA0, 2
PinA0:
	.word	PinA0_
	.comm PinA0_,3,1
.global	PortA
	.type	PortA, @object
	.size	PortA, 2
PortA:
	.word	PortA_
	.comm PortA_,6,1
.global	Analog7
	.type	Analog7, @object
	.size	Analog7, 2
Analog7:
	.word	Analog7_
	.comm Analog7_,3,1
.global	Analog6
	.type	Analog6, @object
	.size	Analog6, 2
Analog6:
	.word	Analog6_
	.comm Analog6_,3,1
.global	Analog5
	.type	Analog5, @object
	.size	Analog5, 2
Analog5:
	.word	Analog5_
	.comm Analog5_,3,1
.global	Analog4
	.type	Analog4, @object
	.size	Analog4, 2
Analog4:
	.word	Analog4_
	.comm Analog4_,3,1
.global	Analog3
	.type	Analog3, @object
	.size	Analog3, 2
Analog3:
	.word	Analog3_
	.comm Analog3_,3,1
.global	Analog2
	.type	Analog2, @object
	.size	Analog2, 2
Analog2:
	.word	Analog2_
	.comm Analog2_,3,1
.global	Analog1
	.type	Analog1, @object
	.size	Analog1, 2
Analog1:
	.word	Analog1_
	.comm Analog1_,3,1
.global	Analog0
	.type	Analog0, @object
	.size	Analog0, 2
Analog0:
	.word	Analog0_
	.comm Analog0_,3,1
.global	milliseconds_running
.global	milliseconds_running
	.section .bss
	.type	milliseconds_running, @object
	.size	milliseconds_running, 4
milliseconds_running:
	.skip 4,0
.global	current_reset_status
.global	current_reset_status
	.type	current_reset_status, @object
	.size	current_reset_status, 1
current_reset_status:
	.skip 1,0
