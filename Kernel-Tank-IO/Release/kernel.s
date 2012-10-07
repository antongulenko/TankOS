	.file	"kernel.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
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
	ldi r24,lo8(24)
/* #APP */
 ;  25 "..\..\AntonAvrLib/kernel/reset_condition.kernel.h" 1
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
	in r24,84-32
	sts current_reset_status,r24
	out 84-32,__zero_reg__
	ldi r24,lo8(24)
/* #APP */
 ;  25 "..\..\AntonAvrLib/kernel/reset_condition.kernel.h" 1
	in __tmp_reg__, __SREG__
	cli
	sts 96, r24
	sts 96, __zero_reg__
	out __SREG__,__tmp_reg__
	
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
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
	ldi r24,lo8(PortA_)
	ldi r25,hi8(PortA_)
	movw r26,r24
	ldi r30,lo8(C.48.3113)
	ldi r31,hi8(C.48.3113)
	ldi r18,lo8(6)
.L5:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L5
	sts PinA0_+1,r25
	sts PinA0_,r24
	ldi r18,lo8(1)
	sts PinA0_+2,r18
	sts PinA1_+1,r25
	sts PinA1_,r24
	ldi r18,lo8(2)
	sts PinA1_+2,r18
	sts PinA2_+1,r25
	sts PinA2_,r24
	ldi r18,lo8(4)
	sts PinA2_+2,r18
	sts PinA3_+1,r25
	sts PinA3_,r24
	ldi r18,lo8(8)
	sts PinA3_+2,r18
	sts PinA4_+1,r25
	sts PinA4_,r24
	ldi r18,lo8(16)
	sts PinA4_+2,r18
	sts PinA5_+1,r25
	sts PinA5_,r24
	ldi r18,lo8(32)
	sts PinA5_+2,r18
	sts PinA6_+1,r25
	sts PinA6_,r24
	ldi r18,lo8(64)
	sts PinA6_+2,r18
	sts PinA7_+1,r25
	sts PinA7_,r24
	ldi r24,lo8(-128)
	sts PinA7_+2,r24
	ldi r24,lo8(PortB_)
	ldi r25,hi8(PortB_)
	movw r26,r24
	ldi r30,lo8(C.49.3114)
	ldi r31,hi8(C.49.3114)
	ldi r18,lo8(6)
.L6:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L6
	sts PinB0_+1,r25
	sts PinB0_,r24
	ldi r18,lo8(1)
	sts PinB0_+2,r18
	sts PinB1_+1,r25
	sts PinB1_,r24
	ldi r18,lo8(2)
	sts PinB1_+2,r18
	sts PinB2_+1,r25
	sts PinB2_,r24
	ldi r18,lo8(4)
	sts PinB2_+2,r18
	sts PinB3_+1,r25
	sts PinB3_,r24
	ldi r18,lo8(8)
	sts PinB3_+2,r18
	sts PinB4_+1,r25
	sts PinB4_,r24
	ldi r18,lo8(16)
	sts PinB4_+2,r18
	sts PinB5_+1,r25
	sts PinB5_,r24
	ldi r18,lo8(32)
	sts PinB5_+2,r18
	sts PinB6_+1,r25
	sts PinB6_,r24
	ldi r18,lo8(64)
	sts PinB6_+2,r18
	sts PinB7_+1,r25
	sts PinB7_,r24
	ldi r24,lo8(-128)
	sts PinB7_+2,r24
	ldi r24,lo8(PortC_)
	ldi r25,hi8(PortC_)
	movw r26,r24
	ldi r30,lo8(C.50.3115)
	ldi r31,hi8(C.50.3115)
	ldi r18,lo8(6)
.L7:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L7
	sts PinC0_+1,r25
	sts PinC0_,r24
	ldi r18,lo8(1)
	sts PinC0_+2,r18
	sts PinC1_+1,r25
	sts PinC1_,r24
	ldi r18,lo8(2)
	sts PinC1_+2,r18
	sts PinC2_+1,r25
	sts PinC2_,r24
	ldi r18,lo8(4)
	sts PinC2_+2,r18
	sts PinC3_+1,r25
	sts PinC3_,r24
	ldi r18,lo8(8)
	sts PinC3_+2,r18
	sts PinC4_+1,r25
	sts PinC4_,r24
	ldi r18,lo8(16)
	sts PinC4_+2,r18
	sts PinC5_+1,r25
	sts PinC5_,r24
	ldi r18,lo8(32)
	sts PinC5_+2,r18
	sts PinC6_+1,r25
	sts PinC6_,r24
	ldi r18,lo8(64)
	sts PinC6_+2,r18
	sts PinC7_+1,r25
	sts PinC7_,r24
	ldi r24,lo8(-128)
	sts PinC7_+2,r24
	ldi r24,lo8(PortD_)
	ldi r25,hi8(PortD_)
	movw r26,r24
	ldi r30,lo8(C.51.3116)
	ldi r31,hi8(C.51.3116)
	ldi r18,lo8(6)
.L8:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L8
	sts PinD0_+1,r25
	sts PinD0_,r24
	ldi r18,lo8(1)
	sts PinD0_+2,r18
	sts PinD1_+1,r25
	sts PinD1_,r24
	ldi r18,lo8(2)
	sts PinD1_+2,r18
	sts PinD2_+1,r25
	sts PinD2_,r24
	ldi r18,lo8(4)
	sts PinD2_+2,r18
	sts PinD3_+1,r25
	sts PinD3_,r24
	ldi r18,lo8(8)
	sts PinD3_+2,r18
	sts PinD4_+1,r25
	sts PinD4_,r24
	ldi r18,lo8(16)
	sts PinD4_+2,r18
	sts PinD5_+1,r25
	sts PinD5_,r24
	ldi r18,lo8(32)
	sts PinD5_+2,r18
	sts PinD6_+1,r25
	sts PinD6_,r24
	ldi r18,lo8(64)
	sts PinD6_+2,r18
	sts PinD7_+1,r25
	sts PinD7_,r24
	ldi r24,lo8(-128)
	sts PinD7_+2,r24
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
	.section	.text.init_timer_m1284P,"ax",@progbits
.global	init_timer_m1284P
	.type	init_timer_m1284P, @function
init_timer_m1284P:
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	ldi r24,lo8(Timer0_)
	ldi r25,hi8(Timer0_)
	movw r26,r24
	ldi r30,lo8(C.44.3109)
	ldi r31,hi8(C.44.3109)
	ldi r18,lo8(7)
.L16:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L16
	ldi r18,lo8(Timer1_)
	ldi r19,hi8(Timer1_)
	movw r26,r18
	ldi r30,lo8(C.45.3110)
	ldi r31,hi8(C.45.3110)
	ldi r20,lo8(7)
.L17:
	ld r0,Z+
	st X+,r0
	subi r20,lo8(-(-1))
	brne .L17
	ldi r20,lo8(Timer2_)
	ldi r21,hi8(Timer2_)
	movw r26,r20
	ldi r30,lo8(C.46.3111)
	ldi r31,hi8(C.46.3111)
	ldi r22,lo8(7)
.L18:
	ld r0,Z+
	st X+,r0
	subi r22,lo8(-(-1))
	brne .L18
	ldi r22,lo8(Timer3_)
	ldi r23,hi8(Timer3_)
	movw r26,r22
	ldi r30,lo8(C.47.3112)
	ldi r31,hi8(C.47.3112)
	ldi r17,lo8(7)
.L19:
	ld r0,Z+
	st X+,r0
	subi r17,lo8(-(-1))
	brne .L19
	sts Timer0A_+1,r25
	sts Timer0A_,r24
	ldi r30,lo8(71)
	ldi r31,hi8(71)
	sts Timer0A_+2+1,r31
	sts Timer0A_+2,r30
	sts Timer0A_+4+1,__zero_reg__
	sts Timer0A_+4,__zero_reg__
	ldi r30,lo8(PinB3_)
	ldi r31,hi8(PinB3_)
	sts Timer0A_+6+1,r31
	sts Timer0A_+6,r30
	sts Timer0B_+1,r25
	sts Timer0B_,r24
	ldi r24,lo8(72)
	ldi r25,hi8(72)
	sts Timer0B_+2+1,r25
	sts Timer0B_+2,r24
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts Timer0B_+4+1,r25
	sts Timer0B_+4,r24
	ldi r30,lo8(PinB4_)
	ldi r31,hi8(PinB4_)
	sts Timer0B_+6+1,r31
	sts Timer0B_+6,r30
	sts Timer1A_+1,r19
	sts Timer1A_,r18
	ldi r30,lo8(136)
	ldi r31,hi8(136)
	sts Timer1A_+2+1,r31
	sts Timer1A_+2,r30
	sts Timer1A_+4+1,__zero_reg__
	sts Timer1A_+4,__zero_reg__
	ldi r30,lo8(PinD5_)
	ldi r31,hi8(PinD5_)
	sts Timer1A_+6+1,r31
	sts Timer1A_+6,r30
	sts Timer1B_+1,r19
	sts Timer1B_,r18
	ldi r18,lo8(138)
	ldi r19,hi8(138)
	sts Timer1B_+2+1,r19
	sts Timer1B_+2,r18
	sts Timer1B_+4+1,r25
	sts Timer1B_+4,r24
	ldi r18,lo8(PinD4_)
	ldi r19,hi8(PinD4_)
	sts Timer1B_+6+1,r19
	sts Timer1B_+6,r18
	sts Timer2A_+1,r21
	sts Timer2A_,r20
	ldi r18,lo8(179)
	ldi r19,hi8(179)
	sts Timer2A_+2+1,r19
	sts Timer2A_+2,r18
	sts Timer2A_+4+1,__zero_reg__
	sts Timer2A_+4,__zero_reg__
	ldi r18,lo8(PinD7_)
	ldi r19,hi8(PinD7_)
	sts Timer2A_+6+1,r19
	sts Timer2A_+6,r18
	sts Timer2B_+1,r21
	sts Timer2B_,r20
	ldi r18,lo8(180)
	ldi r19,hi8(180)
	sts Timer2B_+2+1,r19
	sts Timer2B_+2,r18
	sts Timer2B_+4+1,r25
	sts Timer2B_+4,r24
	ldi r18,lo8(PinD6_)
	ldi r19,hi8(PinD6_)
	sts Timer2B_+6+1,r19
	sts Timer2B_+6,r18
	sts Timer3A_+1,r23
	sts Timer3A_,r22
	ldi r18,lo8(152)
	ldi r19,hi8(152)
	sts Timer3A_+2+1,r19
	sts Timer3A_+2,r18
	sts Timer3A_+4+1,__zero_reg__
	sts Timer3A_+4,__zero_reg__
	ldi r18,lo8(PinB6_)
	ldi r19,hi8(PinB6_)
	sts Timer3A_+6+1,r19
	sts Timer3A_+6,r18
	sts Timer3B_+1,r23
	sts Timer3B_,r22
	ldi r18,lo8(154)
	ldi r19,hi8(154)
	sts Timer3B_+2+1,r19
	sts Timer3B_+2,r18
	sts Timer3B_+4+1,r25
	sts Timer3B_+4,r24
	ldi r24,lo8(PinB7_)
	ldi r25,hi8(PinB7_)
	sts Timer3B_+6+1,r25
	sts Timer3B_+6,r24
/* epilogue start */
	pop r17
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
	ldi r24,lo8(Timer0_)
	ldi r25,hi8(Timer0_)
	movw r26,r24
	ldi r30,lo8(C.44.3109)
	ldi r31,hi8(C.44.3109)
	ldi r18,lo8(7)
.L25:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L25
	ldi r18,lo8(Timer1_)
	ldi r19,hi8(Timer1_)
	movw r26,r18
	ldi r30,lo8(C.45.3110)
	ldi r31,hi8(C.45.3110)
	ldi r20,lo8(7)
.L26:
	ld r0,Z+
	st X+,r0
	subi r20,lo8(-(-1))
	brne .L26
	ldi r20,lo8(Timer2_)
	ldi r21,hi8(Timer2_)
	movw r26,r20
	ldi r30,lo8(C.46.3111)
	ldi r31,hi8(C.46.3111)
	ldi r22,lo8(7)
.L27:
	ld r0,Z+
	st X+,r0
	subi r22,lo8(-(-1))
	brne .L27
	ldi r22,lo8(Timer3_)
	ldi r23,hi8(Timer3_)
	movw r26,r22
	ldi r30,lo8(C.47.3112)
	ldi r31,hi8(C.47.3112)
	ldi r17,lo8(7)
.L28:
	ld r0,Z+
	st X+,r0
	subi r17,lo8(-(-1))
	brne .L28
	sts Timer0A_+1,r25
	sts Timer0A_,r24
	ldi r30,lo8(71)
	ldi r31,hi8(71)
	sts Timer0A_+2+1,r31
	sts Timer0A_+2,r30
	sts Timer0A_+4+1,__zero_reg__
	sts Timer0A_+4,__zero_reg__
	ldi r30,lo8(PinB3_)
	ldi r31,hi8(PinB3_)
	sts Timer0A_+6+1,r31
	sts Timer0A_+6,r30
	sts Timer0B_+1,r25
	sts Timer0B_,r24
	ldi r24,lo8(72)
	ldi r25,hi8(72)
	sts Timer0B_+2+1,r25
	sts Timer0B_+2,r24
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts Timer0B_+4+1,r25
	sts Timer0B_+4,r24
	ldi r30,lo8(PinB4_)
	ldi r31,hi8(PinB4_)
	sts Timer0B_+6+1,r31
	sts Timer0B_+6,r30
	sts Timer1A_+1,r19
	sts Timer1A_,r18
	ldi r30,lo8(136)
	ldi r31,hi8(136)
	sts Timer1A_+2+1,r31
	sts Timer1A_+2,r30
	sts Timer1A_+4+1,__zero_reg__
	sts Timer1A_+4,__zero_reg__
	ldi r30,lo8(PinD5_)
	ldi r31,hi8(PinD5_)
	sts Timer1A_+6+1,r31
	sts Timer1A_+6,r30
	sts Timer1B_+1,r19
	sts Timer1B_,r18
	ldi r18,lo8(138)
	ldi r19,hi8(138)
	sts Timer1B_+2+1,r19
	sts Timer1B_+2,r18
	sts Timer1B_+4+1,r25
	sts Timer1B_+4,r24
	ldi r18,lo8(PinD4_)
	ldi r19,hi8(PinD4_)
	sts Timer1B_+6+1,r19
	sts Timer1B_+6,r18
	sts Timer2A_+1,r21
	sts Timer2A_,r20
	ldi r18,lo8(179)
	ldi r19,hi8(179)
	sts Timer2A_+2+1,r19
	sts Timer2A_+2,r18
	sts Timer2A_+4+1,__zero_reg__
	sts Timer2A_+4,__zero_reg__
	ldi r18,lo8(PinD7_)
	ldi r19,hi8(PinD7_)
	sts Timer2A_+6+1,r19
	sts Timer2A_+6,r18
	sts Timer2B_+1,r21
	sts Timer2B_,r20
	ldi r18,lo8(180)
	ldi r19,hi8(180)
	sts Timer2B_+2+1,r19
	sts Timer2B_+2,r18
	sts Timer2B_+4+1,r25
	sts Timer2B_+4,r24
	ldi r18,lo8(PinD6_)
	ldi r19,hi8(PinD6_)
	sts Timer2B_+6+1,r19
	sts Timer2B_+6,r18
	sts Timer3A_+1,r23
	sts Timer3A_,r22
	ldi r18,lo8(152)
	ldi r19,hi8(152)
	sts Timer3A_+2+1,r19
	sts Timer3A_+2,r18
	sts Timer3A_+4+1,__zero_reg__
	sts Timer3A_+4,__zero_reg__
	ldi r18,lo8(PinB6_)
	ldi r19,hi8(PinB6_)
	sts Timer3A_+6+1,r19
	sts Timer3A_+6,r18
	sts Timer3B_+1,r23
	sts Timer3B_,r22
	ldi r18,lo8(154)
	ldi r19,hi8(154)
	sts Timer3B_+2+1,r19
	sts Timer3B_+2,r18
	sts Timer3B_+4+1,r25
	sts Timer3B_+4,r24
	ldi r24,lo8(PinB7_)
	ldi r25,hi8(PinB7_)
	sts Timer3B_+6+1,r25
	sts Timer3B_+6,r24
/* epilogue start */
	.size	init_timer_m1284P_kernel_init, .-init_timer_m1284P_kernel_init
	.section	.text.init_timer,"ax",@progbits
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
	.size	init_timer_kernel_init, .-init_timer_kernel_init
	.section	.text.in_timer_tick,"ax",@progbits
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
	.section	.text.__vector_32,"ax",@progbits
.global	__vector_32
	.type	__vector_32, @function
__vector_32:
	push __zero_reg__
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
	pop __zero_reg__
	reti
	.size	__vector_32, .-__vector_32
	.section	.text.mutex_create,"ax",@progbits
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
	.section	.text.mutex_lock,"ax",@progbits
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
 ;  24 "..\..\AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h" 1
	cli
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
	.size	mutex_lock, .-mutex_lock
	.section	.text.mutex_trylock,"ax",@progbits
.global	mutex_trylock
	.type	mutex_trylock, @function
mutex_trylock:
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
 ;  24 "..\..\AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(1)
	ldi r25,hi8(1)
/* epilogue start */
	ret
	.size	mutex_trylock, .-mutex_trylock
	.section	.text.mutex_release,"ax",@progbits
.global	mutex_release
	.type	mutex_release, @function
mutex_release:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  34 "..\..\AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
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
	.section	.text.init_tank_leds,"ax",@progbits
.global	init_tank_leds
	.type	init_tank_leds, @function
init_tank_leds:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(PinB0_)
	ldi r25,hi8(PinB0_)
	sts White1_+1,r25
	sts White1_,r24
	call setPinOutput
	ldi r24,lo8(PinB1_)
	ldi r25,hi8(PinB1_)
	sts White2_+1,r25
	sts White2_,r24
	call setPinOutput
	ldi r24,lo8(PinB2_)
	ldi r25,hi8(PinB2_)
	sts White3_+1,r25
	sts White3_,r24
	call setPinOutput
	ldi r24,lo8(PinB3_)
	ldi r25,hi8(PinB3_)
	sts White4_+1,r25
	sts White4_,r24
	call setPinOutput
	ldi r24,lo8(PinB4_)
	ldi r25,hi8(PinB4_)
	sts White5_+1,r25
	sts White5_,r24
	call setPinOutput
	ldi r24,lo8(PinB5_)
	ldi r25,hi8(PinB5_)
	sts Green1_+1,r25
	sts Green1_,r24
	call setPinOutput
	ldi r24,lo8(PinB6_)
	ldi r25,hi8(PinB6_)
	sts Green2_+1,r25
	sts Green2_,r24
	call setPinOutput
	ldi r24,lo8(PinB7_)
	ldi r25,hi8(PinB7_)
	sts Green3_+1,r25
	sts Green3_,r24
	call setPinOutput
	ldi r24,lo8(PinD0_)
	ldi r25,hi8(PinD0_)
	sts Yellow1_+1,r25
	sts Yellow1_,r24
	call setPinOutput
	ldi r24,lo8(PinD1_)
	ldi r25,hi8(PinD1_)
	sts Yellow2_+1,r25
	sts Yellow2_,r24
	call setPinOutput
	ldi r24,lo8(PinD2_)
	ldi r25,hi8(PinD2_)
	sts Red1_+1,r25
	sts Red1_,r24
	call setPinOutput
	ldi r24,lo8(PinD3_)
	ldi r25,hi8(PinD3_)
	sts Red2_+1,r25
	sts Red2_,r24
	call setPinOutput
	ldi r24,lo8(PinD4_)
	ldi r25,hi8(PinD4_)
	sts Red3_+1,r25
	sts Red3_,r24
	call setPinOutput
	ldi r24,lo8(PinD5_)
	ldi r25,hi8(PinD5_)
	sts Red4_+1,r25
	sts Red4_,r24
	call setPinOutput
	ldi r24,lo8(PinD6_)
	ldi r25,hi8(PinD6_)
	sts Red5_+1,r25
	sts Red5_,r24
	call setPinOutput
	ldi r26,lo8(RedLeds_)
	ldi r27,hi8(RedLeds_)
	ldi r30,lo8(C.32.3086)
	ldi r31,hi8(C.32.3086)
	ldi r24,lo8(3)
.L43:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L43
	ldi r26,lo8(YellowLeds_)
	ldi r27,hi8(YellowLeds_)
	ldi r30,lo8(C.33.3087)
	ldi r31,hi8(C.33.3087)
	ldi r24,lo8(3)
.L44:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L44
	ldi r26,lo8(WhiteLeds_)
	ldi r27,hi8(WhiteLeds_)
	ldi r30,lo8(C.34.3088)
	ldi r31,hi8(C.34.3088)
	ldi r24,lo8(3)
.L45:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L45
	ldi r26,lo8(GreenLeds_)
	ldi r27,hi8(GreenLeds_)
	ldi r30,lo8(C.35.3089)
	ldi r31,hi8(C.35.3089)
	ldi r24,lo8(3)
.L46:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L46
	ldi r26,lo8(MiddleLeds_)
	ldi r27,hi8(MiddleLeds_)
	ldi r30,lo8(C.36.3090)
	ldi r31,hi8(C.36.3090)
	ldi r24,lo8(3)
.L47:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L47
	ldi r26,lo8(AllLeds_)
	ldi r27,hi8(AllLeds_)
	ldi r30,lo8(C.37.3091)
	ldi r31,hi8(C.37.3091)
	ldi r24,lo8(3)
.L48:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L48
/* epilogue start */
	ret
	.size	init_tank_leds, .-init_tank_leds
	.section	.init8
.global	init_tank_leds_kernel_init
	.type	init_tank_leds_kernel_init, @function
init_tank_leds_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_tank_leds
/* epilogue start */
	.size	init_tank_leds_kernel_init, .-init_tank_leds_kernel_init
	.section	.text.initButton,"ax",@progbits
.global	initButton
	.type	initButton, @function
initButton:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinInput
	ld r24,Y
	sbrc r24,1
	rjmp .L59
.L57:
	sbrs r24,2
	rjmp .L56
	ldd r24,Y+3
	call enablePinChangeInterrupt
.L56:
/* epilogue start */
	pop r29
	pop r28
	ret
.L59:
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinOne
	ld r24,Y
	rjmp .L57
	.size	initButton, .-initButton
	.section	.text.init_tank_buttons,"ax",@progbits
.global	init_tank_buttons
	.type	init_tank_buttons, @function
init_tank_buttons:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(3)
	sts Button1_,r24
	ldi r24,lo8(PinC5_)
	ldi r25,hi8(PinC5_)
	sts Button1_+1+1,r25
	sts Button1_+1,r24
	ldi r18,lo8(21)
	sts Button1_+3,r18
	call setPinInput
	lds r24,Button1_
	sbrc r24,1
	rjmp .L71
.L61:
	sbrs r24,2
	rjmp .L62
	lds r24,Button1_+3
	call enablePinChangeInterrupt
.L62:
	ldi r24,lo8(3)
	sts Button2_,r24
	ldi r24,lo8(PinC4_)
	ldi r25,hi8(PinC4_)
	sts Button2_+1+1,r25
	sts Button2_+1,r24
	ldi r18,lo8(20)
	sts Button2_+3,r18
	call setPinInput
	lds r24,Button2_
	sbrc r24,1
	rjmp .L72
.L63:
	sbrs r24,2
	rjmp .L64
	lds r24,Button2_+3
	call enablePinChangeInterrupt
.L64:
	ldi r24,lo8(3)
	sts Button3_,r24
	ldi r24,lo8(PinC3_)
	ldi r25,hi8(PinC3_)
	sts Button3_+1+1,r25
	sts Button3_+1,r24
	ldi r18,lo8(19)
	sts Button3_+3,r18
	call setPinInput
	lds r24,Button3_
	sbrc r24,1
	rjmp .L73
.L65:
	sbrs r24,2
	rjmp .L66
	lds r24,Button3_+3
	call enablePinChangeInterrupt
.L66:
	ldi r24,lo8(3)
	sts Button4_,r24
	ldi r24,lo8(PinC2_)
	ldi r25,hi8(PinC2_)
	sts Button4_+1+1,r25
	sts Button4_+1,r24
	ldi r18,lo8(18)
	sts Button4_+3,r18
	call setPinInput
	lds r24,Button4_
	sbrc r24,1
	rjmp .L74
.L67:
	sbrs r24,2
	rjmp .L68
	lds r24,Button4_+3
	call enablePinChangeInterrupt
.L68:
	ldi r24,lo8(3)
	sts ButtonSwitch_,r24
	ldi r24,lo8(PinD7_)
	ldi r25,hi8(PinD7_)
	sts ButtonSwitch_+1+1,r25
	sts ButtonSwitch_+1,r24
	ldi r18,lo8(31)
	sts ButtonSwitch_+3,r18
	call setPinInput
	lds r24,ButtonSwitch_
	sbrc r24,1
	rjmp .L75
.L69:
	sbrs r24,2
	rjmp .L70
	lds r24,ButtonSwitch_+3
	call enablePinChangeInterrupt
.L70:
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	call malloc
	sts buttonMutex,r24
	sts buttonMutex+1,r25
/* epilogue start */
	ret
.L75:
	lds r24,ButtonSwitch_+1
	lds r25,ButtonSwitch_+1+1
	call setPinOne
	lds r24,ButtonSwitch_
	rjmp .L69
.L74:
	lds r24,Button4_+1
	lds r25,Button4_+1+1
	call setPinOne
	lds r24,Button4_
	rjmp .L67
.L73:
	lds r24,Button3_+1
	lds r25,Button3_+1+1
	call setPinOne
	lds r24,Button3_
	rjmp .L65
.L72:
	lds r24,Button2_+1
	lds r25,Button2_+1+1
	call setPinOne
	lds r24,Button2_
	rjmp .L63
.L71:
	lds r24,Button1_+1
	lds r25,Button1_+1+1
	call setPinOne
	lds r24,Button1_
	rjmp .L61
	.size	init_tank_buttons, .-init_tank_buttons
	.section	.init8
.global	init_tank_buttons_kernel_init
	.type	init_tank_buttons_kernel_init, @function
init_tank_buttons_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_tank_buttons
/* epilogue start */
	.size	init_tank_buttons_kernel_init, .-init_tank_buttons_kernel_init
	.section	.text.buttonStatusMask,"ax",@progbits
.global	buttonStatusMask
	.type	buttonStatusMask, @function
buttonStatusMask:
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	ldi r24,lo8(Button1_)
	ldi r25,hi8(Button1_)
	call buttonStatus
	ldi r17,lo8(1)
	sbiw r24,0
	brne .L78
	ldi r17,lo8(0)
.L78:
	ldi r24,lo8(Button2_)
	ldi r25,hi8(Button2_)
	call buttonStatus
	sbiw r24,0
	breq .L79
	ori r17,lo8(2)
.L79:
	ldi r24,lo8(Button3_)
	ldi r25,hi8(Button3_)
	call buttonStatus
	sbiw r24,0
	breq .L80
	ori r17,lo8(4)
.L80:
	ldi r24,lo8(Button4_)
	ldi r25,hi8(Button4_)
	call buttonStatus
	sbiw r24,0
	breq .L81
	ori r17,lo8(8)
.L81:
	ldi r24,lo8(ButtonSwitch_)
	ldi r25,hi8(ButtonSwitch_)
	call buttonStatus
	sbiw r24,0
	breq .L82
	ori r17,lo8(16)
.L82:
	mov r24,r17
/* epilogue start */
	pop r17
	ret
	.size	buttonStatusMask, .-buttonStatusMask
	.section	.text.pressedButtons,"ax",@progbits
.global	pressedButtons
	.type	pressedButtons, @function
pressedButtons:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,__SREG__
	lds r30,buttonMutex
	lds r31,buttonMutex+1
	ldi r25,lo8(0)
	andi r24,lo8(128)
	andi r25,hi8(128)
	std Z+1,r25
	st Z,r24
/* #APP */
 ;  24 "..\..\AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,buttonsPressedSinceLastCall
	sts buttonsPressedSinceLastCall,__zero_reg__
/* #APP */
 ;  34 "..\..\AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
	.size	pressedButtons, .-pressedButtons
	.section	.text.updateButtonStatus,"ax",@progbits
.global	updateButtonStatus
	.type	updateButtonStatus, @function
updateButtonStatus:
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	ldi r24,lo8(Button1_)
	ldi r25,hi8(Button1_)
	call buttonStatus
	ldi r17,lo8(1)
	sbiw r24,0
	brne .L85
	ldi r17,lo8(0)
.L85:
	ldi r24,lo8(Button2_)
	ldi r25,hi8(Button2_)
	call buttonStatus
	sbiw r24,0
	breq .L86
	ori r17,lo8(2)
.L86:
	ldi r24,lo8(Button3_)
	ldi r25,hi8(Button3_)
	call buttonStatus
	sbiw r24,0
	breq .L87
	ori r17,lo8(4)
.L87:
	ldi r24,lo8(Button4_)
	ldi r25,hi8(Button4_)
	call buttonStatus
	sbiw r24,0
	breq .L88
	ori r17,lo8(8)
.L88:
	ldi r24,lo8(ButtonSwitch_)
	ldi r25,hi8(ButtonSwitch_)
	call buttonStatus
	sbiw r24,0
	breq .L89
	ori r17,lo8(16)
.L89:
	lds r24,wasPressed
	sbrc r24,0
	rjmp .L95
	mov r18,r17
	andi r18,lo8(1)
.L90:
	sbrc r24,1
	rjmp .L91
	sbrc r17,1
	rjmp .L96
.L91:
	sbrc r24,2
	rjmp .L92
	sbrc r17,2
	rjmp .L97
.L92:
	sbrc r24,3
	rjmp .L93
	sbrc r17,3
	rjmp .L98
.L93:
	sbrc r24,4
	rjmp .L94
	sbrc r17,4
	ori r18,lo8(16)
.L94:
	in r24,__SREG__
	lds r30,buttonMutex
	lds r31,buttonMutex+1
	ldi r25,lo8(0)
	andi r24,lo8(128)
	andi r25,hi8(128)
	std Z+1,r25
	st Z,r24
/* #APP */
 ;  24 "..\..\AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,buttonsPressedSinceLastCall
	or r24,r18
	sts buttonsPressedSinceLastCall,r24
/* #APP */
 ;  34 "..\..\AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	sts wasPressed,r17
/* epilogue start */
	pop r17
	ret
.L95:
	ldi r18,lo8(0)
	rjmp .L90
.L98:
	ori r18,lo8(8)
	rjmp .L93
.L97:
	ori r18,lo8(4)
	rjmp .L92
.L96:
	ori r18,lo8(2)
	rjmp .L91
	.size	updateButtonStatus, .-updateButtonStatus
	.section	.text.before_timer,"ax",@progbits
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
	.section	.text.init_kernel,"ax",@progbits
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
	ldi r30,lo8(100)
	ldi r31,hi8(100)
	ld r24,Z
	ori r24,lo8(96)
	st Z,r24
	call before_timer
	ldi r24,lo8(Timer3A_)
	ldi r25,hi8(Timer3A_)
	call enableTimerInterrupt
/* #APP */
 ;  37 ".././shared/base_after.kernel.h" 1
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
	in r24,80-32
	ori r24,lo8(-128)
	out 80-32,r24
	ldi r30,lo8(100)
	ldi r31,hi8(100)
	ld r24,Z
	ori r24,lo8(96)
	st Z,r24
	call before_timer
	ldi r24,lo8(Timer3A_)
	ldi r25,hi8(Timer3A_)
	call enableTimerInterrupt
/* #APP */
 ;  37 ".././shared/base_after.kernel.h" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	.size	init_kernel_kernel_init, .-init_kernel_kernel_init
.global	tankIO_system_initialized_kernel_init
	.type	tankIO_system_initialized_kernel_init, @function
tankIO_system_initialized_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call tankIO_system_initialized
/* epilogue start */
	.size	tankIO_system_initialized_kernel_init, .-tankIO_system_initialized_kernel_init
.global	current_reset_status
.global	current_reset_status
	.section .bss
	.type	current_reset_status, @object
	.size	current_reset_status, 1
current_reset_status:
	.skip 1,0
.global	milliseconds_running
.global	milliseconds_running
	.type	milliseconds_running, @object
	.size	milliseconds_running, 4
milliseconds_running:
	.skip 4,0
.global	Button1
	.data
	.type	Button1, @object
	.size	Button1, 2
Button1:
	.word	Button1_
.global	Button2
	.type	Button2, @object
	.size	Button2, 2
Button2:
	.word	Button2_
.global	Button3
	.type	Button3, @object
	.size	Button3, 2
Button3:
	.word	Button3_
.global	Button4
	.type	Button4, @object
	.size	Button4, 2
Button4:
	.word	Button4_
.global	ButtonSwitch
	.type	ButtonSwitch, @object
	.size	ButtonSwitch, 2
ButtonSwitch:
	.word	ButtonSwitch_
.global	White1
	.type	White1, @object
	.size	White1, 2
White1:
	.word	White1_
.global	White2
	.type	White2, @object
	.size	White2, 2
White2:
	.word	White2_
.global	White3
	.type	White3, @object
	.size	White3, 2
White3:
	.word	White3_
.global	White4
	.type	White4, @object
	.size	White4, 2
White4:
	.word	White4_
.global	White5
	.type	White5, @object
	.size	White5, 2
White5:
	.word	White5_
.global	Red1
	.type	Red1, @object
	.size	Red1, 2
Red1:
	.word	Red1_
.global	Red2
	.type	Red2, @object
	.size	Red2, 2
Red2:
	.word	Red2_
.global	Red3
	.type	Red3, @object
	.size	Red3, 2
Red3:
	.word	Red3_
.global	Red4
	.type	Red4, @object
	.size	Red4, 2
Red4:
	.word	Red4_
.global	Red5
	.type	Red5, @object
	.size	Red5, 2
Red5:
	.word	Red5_
.global	Green1
	.type	Green1, @object
	.size	Green1, 2
Green1:
	.word	Green1_
.global	Green2
	.type	Green2, @object
	.size	Green2, 2
Green2:
	.word	Green2_
.global	Green3
	.type	Green3, @object
	.size	Green3, 2
Green3:
	.word	Green3_
.global	Yellow1
	.type	Yellow1, @object
	.size	Yellow1, 2
Yellow1:
	.word	Yellow1_
.global	Yellow2
	.type	Yellow2, @object
	.size	Yellow2, 2
Yellow2:
	.word	Yellow2_
.global	RedLeds
	.type	RedLeds, @object
	.size	RedLeds, 2
RedLeds:
	.word	RedLeds_
.global	YellowLeds
	.type	YellowLeds, @object
	.size	YellowLeds, 2
YellowLeds:
	.word	YellowLeds_
.global	WhiteLeds
	.type	WhiteLeds, @object
	.size	WhiteLeds, 2
WhiteLeds:
	.word	WhiteLeds_
.global	GreenLeds
	.type	GreenLeds, @object
	.size	GreenLeds, 2
GreenLeds:
	.word	GreenLeds_
.global	MiddleLeds
	.type	MiddleLeds, @object
	.size	MiddleLeds, 2
MiddleLeds:
	.word	MiddleLeds_
.global	AllLeds
	.type	AllLeds, @object
	.size	AllLeds, 2
AllLeds:
	.word	AllLeds_
.global	PortA
	.type	PortA, @object
	.size	PortA, 2
PortA:
	.word	PortA_
.global	PinA0
	.type	PinA0, @object
	.size	PinA0, 2
PinA0:
	.word	PinA0_
.global	PinA1
	.type	PinA1, @object
	.size	PinA1, 2
PinA1:
	.word	PinA1_
.global	PinA2
	.type	PinA2, @object
	.size	PinA2, 2
PinA2:
	.word	PinA2_
.global	PinA3
	.type	PinA3, @object
	.size	PinA3, 2
PinA3:
	.word	PinA3_
.global	PinA4
	.type	PinA4, @object
	.size	PinA4, 2
PinA4:
	.word	PinA4_
.global	PinA5
	.type	PinA5, @object
	.size	PinA5, 2
PinA5:
	.word	PinA5_
.global	PinA6
	.type	PinA6, @object
	.size	PinA6, 2
PinA6:
	.word	PinA6_
.global	PinA7
	.type	PinA7, @object
	.size	PinA7, 2
PinA7:
	.word	PinA7_
.global	PortB
	.type	PortB, @object
	.size	PortB, 2
PortB:
	.word	PortB_
.global	PinB0
	.type	PinB0, @object
	.size	PinB0, 2
PinB0:
	.word	PinB0_
.global	PinB1
	.type	PinB1, @object
	.size	PinB1, 2
PinB1:
	.word	PinB1_
.global	PinB2
	.type	PinB2, @object
	.size	PinB2, 2
PinB2:
	.word	PinB2_
.global	PinB3
	.type	PinB3, @object
	.size	PinB3, 2
PinB3:
	.word	PinB3_
.global	PinB4
	.type	PinB4, @object
	.size	PinB4, 2
PinB4:
	.word	PinB4_
.global	PinB5
	.type	PinB5, @object
	.size	PinB5, 2
PinB5:
	.word	PinB5_
.global	PinB6
	.type	PinB6, @object
	.size	PinB6, 2
PinB6:
	.word	PinB6_
.global	PinB7
	.type	PinB7, @object
	.size	PinB7, 2
PinB7:
	.word	PinB7_
.global	PortC
	.type	PortC, @object
	.size	PortC, 2
PortC:
	.word	PortC_
.global	PinC0
	.type	PinC0, @object
	.size	PinC0, 2
PinC0:
	.word	PinC0_
.global	PinC1
	.type	PinC1, @object
	.size	PinC1, 2
PinC1:
	.word	PinC1_
.global	PinC2
	.type	PinC2, @object
	.size	PinC2, 2
PinC2:
	.word	PinC2_
.global	PinC3
	.type	PinC3, @object
	.size	PinC3, 2
PinC3:
	.word	PinC3_
.global	PinC4
	.type	PinC4, @object
	.size	PinC4, 2
PinC4:
	.word	PinC4_
.global	PinC5
	.type	PinC5, @object
	.size	PinC5, 2
PinC5:
	.word	PinC5_
.global	PinC6
	.type	PinC6, @object
	.size	PinC6, 2
PinC6:
	.word	PinC6_
.global	PinC7
	.type	PinC7, @object
	.size	PinC7, 2
PinC7:
	.word	PinC7_
.global	PortD
	.type	PortD, @object
	.size	PortD, 2
PortD:
	.word	PortD_
.global	PinD0
	.type	PinD0, @object
	.size	PinD0, 2
PinD0:
	.word	PinD0_
.global	PinD1
	.type	PinD1, @object
	.size	PinD1, 2
PinD1:
	.word	PinD1_
.global	PinD2
	.type	PinD2, @object
	.size	PinD2, 2
PinD2:
	.word	PinD2_
.global	PinD3
	.type	PinD3, @object
	.size	PinD3, 2
PinD3:
	.word	PinD3_
.global	PinD4
	.type	PinD4, @object
	.size	PinD4, 2
PinD4:
	.word	PinD4_
.global	PinD5
	.type	PinD5, @object
	.size	PinD5, 2
PinD5:
	.word	PinD5_
.global	PinD6
	.type	PinD6, @object
	.size	PinD6, 2
PinD6:
	.word	PinD6_
.global	PinD7
	.type	PinD7, @object
	.size	PinD7, 2
PinD7:
	.word	PinD7_
.global	Timer0
	.type	Timer0, @object
	.size	Timer0, 2
Timer0:
	.word	Timer0_
.global	Timer1
	.type	Timer1, @object
	.size	Timer1, 2
Timer1:
	.word	Timer1_
.global	Timer2
	.type	Timer2, @object
	.size	Timer2, 2
Timer2:
	.word	Timer2_
.global	Timer3
	.type	Timer3, @object
	.size	Timer3, 2
Timer3:
	.word	Timer3_
.global	Timer0A
	.type	Timer0A, @object
	.size	Timer0A, 2
Timer0A:
	.word	Timer0A_
.global	Timer0B
	.type	Timer0B, @object
	.size	Timer0B, 2
Timer0B:
	.word	Timer0B_
.global	Timer1A
	.type	Timer1A, @object
	.size	Timer1A, 2
Timer1A:
	.word	Timer1A_
.global	Timer1B
	.type	Timer1B, @object
	.size	Timer1B, 2
Timer1B:
	.word	Timer1B_
.global	Timer2A
	.type	Timer2A, @object
	.size	Timer2A, 2
Timer2A:
	.word	Timer2A_
.global	Timer2B
	.type	Timer2B, @object
	.size	Timer2B, 2
Timer2B:
	.word	Timer2B_
.global	Timer3A
	.type	Timer3A, @object
	.size	Timer3A, 2
Timer3A:
	.word	Timer3A_
.global	Timer3B
	.type	Timer3B, @object
	.size	Timer3B, 2
Timer3B:
	.word	Timer3B_
.global	redLedsArray
	.type	redLedsArray, @object
	.size	redLedsArray, 10
redLedsArray:
	.word	Red1_
	.word	Red2_
	.word	Red3_
	.word	Red4_
	.word	Red5_
.global	yellowLedsArray
	.type	yellowLedsArray, @object
	.size	yellowLedsArray, 4
yellowLedsArray:
	.word	Yellow1_
	.word	Yellow2_
.global	whiteLedsArray
	.type	whiteLedsArray, @object
	.size	whiteLedsArray, 10
whiteLedsArray:
	.word	White1_
	.word	White2_
	.word	White3_
	.word	White4_
	.word	White5_
.global	greenLedsArray
	.type	greenLedsArray, @object
	.size	greenLedsArray, 6
greenLedsArray:
	.word	Green1_
	.word	Green2_
	.word	Green3_
.global	middleLedsArray
	.type	middleLedsArray, @object
	.size	middleLedsArray, 10
middleLedsArray:
	.word	Green1_
	.word	Green2_
	.word	Green3_
	.word	Yellow1_
	.word	Yellow2_
.global	allLedsArray
	.type	allLedsArray, @object
	.size	allLedsArray, 30
allLedsArray:
	.word	White1_
	.word	White2_
	.word	White3_
	.word	White4_
	.word	White5_
	.word	Green1_
	.word	Green2_
	.word	Green3_
	.word	Yellow1_
	.word	Yellow2_
	.word	Red1_
	.word	Red2_
	.word	Red3_
	.word	Red4_
	.word	Red5_
.global	buttonsPressedSinceLastCall
.global	buttonsPressedSinceLastCall
	.section .bss
	.type	buttonsPressedSinceLastCall, @object
	.size	buttonsPressedSinceLastCall, 1
buttonsPressedSinceLastCall:
	.skip 1,0
.global	wasPressed
.global	wasPressed
	.type	wasPressed, @object
	.size	wasPressed, 1
wasPressed:
	.skip 1,0
	.comm Button1_,4,1
	.comm Button2_,4,1
	.comm Button3_,4,1
	.comm Button4_,4,1
	.comm ButtonSwitch_,4,1
	.comm White1_,2,1
	.comm White2_,2,1
	.comm White3_,2,1
	.comm White4_,2,1
	.comm White5_,2,1
	.comm Red1_,2,1
	.comm Red2_,2,1
	.comm Red3_,2,1
	.comm Red4_,2,1
	.comm Red5_,2,1
	.comm Green1_,2,1
	.comm Green2_,2,1
	.comm Green3_,2,1
	.comm Yellow1_,2,1
	.comm Yellow2_,2,1
	.comm RedLeds_,3,1
	.comm YellowLeds_,3,1
	.comm WhiteLeds_,3,1
	.comm GreenLeds_,3,1
	.comm MiddleLeds_,3,1
	.comm AllLeds_,3,1
	.comm PortA_,6,1
	.comm PinA0_,3,1
	.comm PinA1_,3,1
	.comm PinA2_,3,1
	.comm PinA3_,3,1
	.comm PinA4_,3,1
	.comm PinA5_,3,1
	.comm PinA6_,3,1
	.comm PinA7_,3,1
	.comm PortB_,6,1
	.comm PinB0_,3,1
	.comm PinB1_,3,1
	.comm PinB2_,3,1
	.comm PinB3_,3,1
	.comm PinB4_,3,1
	.comm PinB5_,3,1
	.comm PinB6_,3,1
	.comm PinB7_,3,1
	.comm PortC_,6,1
	.comm PinC0_,3,1
	.comm PinC1_,3,1
	.comm PinC2_,3,1
	.comm PinC3_,3,1
	.comm PinC4_,3,1
	.comm PinC5_,3,1
	.comm PinC6_,3,1
	.comm PinC7_,3,1
	.comm PortD_,6,1
	.comm PinD0_,3,1
	.comm PinD1_,3,1
	.comm PinD2_,3,1
	.comm PinD3_,3,1
	.comm PinD4_,3,1
	.comm PinD5_,3,1
	.comm PinD6_,3,1
	.comm PinD7_,3,1
	.comm Timer0_,7,1
	.comm Timer1_,7,1
	.comm Timer2_,7,1
	.comm Timer3_,7,1
	.comm Timer0A_,8,1
	.comm Timer0B_,8,1
	.comm Timer1A_,8,1
	.comm Timer1B_,8,1
	.comm Timer2A_,8,1
	.comm Timer2B_,8,1
	.comm Timer3A_,8,1
	.comm Timer3B_,8,1
	.comm buttonMutex,2,1
	.data
	.type	C.37.3091, @object
	.size	C.37.3091, 3
C.37.3091:
	.word	allLedsArray
	.byte	15
	.type	C.36.3090, @object
	.size	C.36.3090, 3
C.36.3090:
	.word	middleLedsArray
	.byte	5
	.type	C.35.3089, @object
	.size	C.35.3089, 3
C.35.3089:
	.word	greenLedsArray
	.byte	3
	.type	C.34.3088, @object
	.size	C.34.3088, 3
C.34.3088:
	.word	whiteLedsArray
	.byte	5
	.type	C.33.3087, @object
	.size	C.33.3087, 3
C.33.3087:
	.word	yellowLedsArray
	.byte	2
	.type	C.32.3086, @object
	.size	C.32.3086, 3
C.32.3086:
	.word	redLedsArray
	.byte	5
	.type	C.47.3112, @object
	.size	C.47.3112, 7
C.47.3112:
	.byte	4
	.word	144
	.word	145
	.word	113
	.type	C.46.3111, @object
	.size	C.46.3111, 7
C.46.3111:
	.byte	2
	.word	176
	.word	177
	.word	112
	.type	C.45.3110, @object
	.size	C.45.3110, 7
C.45.3110:
	.byte	4
	.word	128
	.word	129
	.word	111
	.type	C.44.3109, @object
	.size	C.44.3109, 7
C.44.3109:
	.byte	0
	.word	68
	.word	69
	.word	110
	.type	C.51.3116, @object
	.size	C.51.3116, 6
C.51.3116:
	.word	43
	.word	41
	.word	42
	.type	C.50.3115, @object
	.size	C.50.3115, 6
C.50.3115:
	.word	40
	.word	38
	.word	39
	.type	C.49.3114, @object
	.size	C.49.3114, 6
C.49.3114:
	.word	37
	.word	35
	.word	36
	.type	C.48.3113, @object
	.size	C.48.3113, 6
C.48.3113:
	.word	34
	.word	32
	.word	33
	.weak	tankIO_system_initialized
.global __do_copy_data
.global __do_clear_bss
