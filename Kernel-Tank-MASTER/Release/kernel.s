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
	ldi r30,lo8(C.34.4112)
	ldi r31,hi8(C.34.4112)
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
	ldi r30,lo8(C.35.4113)
	ldi r31,hi8(C.35.4113)
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
	ldi r30,lo8(C.36.4114)
	ldi r31,hi8(C.36.4114)
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
	ldi r30,lo8(C.37.4115)
	ldi r31,hi8(C.37.4115)
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
	ldi r30,lo8(C.30.4108)
	ldi r31,hi8(C.30.4108)
	ldi r18,lo8(7)
.L16:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L16
	ldi r18,lo8(Timer1_)
	ldi r19,hi8(Timer1_)
	movw r26,r18
	ldi r30,lo8(C.31.4109)
	ldi r31,hi8(C.31.4109)
	ldi r20,lo8(7)
.L17:
	ld r0,Z+
	st X+,r0
	subi r20,lo8(-(-1))
	brne .L17
	ldi r20,lo8(Timer2_)
	ldi r21,hi8(Timer2_)
	movw r26,r20
	ldi r30,lo8(C.32.4110)
	ldi r31,hi8(C.32.4110)
	ldi r22,lo8(7)
.L18:
	ld r0,Z+
	st X+,r0
	subi r22,lo8(-(-1))
	brne .L18
	ldi r22,lo8(Timer3_)
	ldi r23,hi8(Timer3_)
	movw r26,r22
	ldi r30,lo8(C.33.4111)
	ldi r31,hi8(C.33.4111)
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
	ldi r30,lo8(C.30.4108)
	ldi r31,hi8(C.30.4108)
	ldi r18,lo8(7)
.L25:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L25
	ldi r18,lo8(Timer1_)
	ldi r19,hi8(Timer1_)
	movw r26,r18
	ldi r30,lo8(C.31.4109)
	ldi r31,hi8(C.31.4109)
	ldi r20,lo8(7)
.L26:
	ld r0,Z+
	st X+,r0
	subi r20,lo8(-(-1))
	brne .L26
	ldi r20,lo8(Timer2_)
	ldi r21,hi8(Timer2_)
	movw r26,r20
	ldi r30,lo8(C.32.4110)
	ldi r31,hi8(C.32.4110)
	ldi r22,lo8(7)
.L27:
	ld r0,Z+
	st X+,r0
	subi r22,lo8(-(-1))
	brne .L27
	ldi r22,lo8(Timer3_)
	ldi r23,hi8(Timer3_)
	movw r26,r22
	ldi r30,lo8(C.33.4111)
	ldi r31,hi8(C.33.4111)
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
	ldd r30,Y+3
	ldd r31,Y+4
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call setTimerClockSelect
	ldd r30,Y+3
	ldd r31,Y+4
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(4)
	ldi r23,hi8(4)
	call setWaveformGenerationMode
	ldd r24,Y+3
	ldd r25,Y+4
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call setCompareMatchOutputMode
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+3
	ldd r25,Y+4
	call setTimerCompareValue
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinOutput
	ld r24,Y
	sbrc r24,3
	rjmp .L42
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinOne
.L42:
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
	ldd r30,Y+3
	ldd r31,Y+4
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call setTimerClockSelect
	ldd r30,Y+3
	ldd r31,Y+4
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(4)
	ldi r23,hi8(4)
	call setWaveformGenerationMode
	ldd r24,Y+3
	ldd r25,Y+4
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call setCompareMatchOutputMode
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+3
	ldd r25,Y+4
	call setTimerCompareValue
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinOutput
	ld r24,Y
	sbrc r24,3
	rjmp .L45
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinOne
.L45:
	ldd r24,Y+9
	ldd r25,Y+10
	call setPinOutput
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinZero
	ldd r24,Y+9
	ldd r25,Y+10
	call setPinZero
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	initMotor2Pins, .-initMotor2Pins
	.section	.text.init_tank_motors,"ax",@progbits
.global	init_tank_motors
	.type	init_tank_motors, @function
init_tank_motors:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,Timer1_
	ori r24,lo8(32)
	sts Timer1_,r24
	ldi r30,lo8(LeftMotorBase_)
	ldi r31,hi8(LeftMotorBase_)
	ldi r24,lo8(11)
	movw r26,r30
	st X+,__zero_reg__
        dec r24
	brne .-6
	ldi r24,lo8(26)
	sts LeftMotorBase_,r24
	ldi r24,lo8(PinC4_)
	ldi r25,hi8(PinC4_)
	sts LeftMotorBase_+1+1,r25
	sts LeftMotorBase_+1,r24
	ldi r24,lo8(Timer1B_)
	ldi r25,hi8(Timer1B_)
	sts LeftMotorBase_+3+1,r25
	sts LeftMotorBase_+3,r24
	ldi r24,lo8(PinC5_)
	ldi r25,hi8(PinC5_)
	sts LeftMotorBase_+9+1,r25
	sts LeftMotorBase_+9,r24
	lds r24,Timer1B_
	lds r25,Timer1B_+1
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call setTimerClockSelect
	lds r30,LeftMotorBase_+3
	lds r31,LeftMotorBase_+3+1
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(4)
	ldi r23,hi8(4)
	call setWaveformGenerationMode
	lds r24,LeftMotorBase_+3
	lds r25,LeftMotorBase_+3+1
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call setCompareMatchOutputMode
	lds r22,LeftMotorBase_+5
	lds r23,LeftMotorBase_+5+1
	lds r24,LeftMotorBase_+3
	lds r25,LeftMotorBase_+3+1
	call setTimerCompareValue
	lds r24,LeftMotorBase_+1
	lds r25,LeftMotorBase_+1+1
	call setPinOutput
	lds r24,LeftMotorBase_
	sbrc r24,3
	rjmp .L47
	lds r24,LeftMotorBase_+1
	lds r25,LeftMotorBase_+1+1
	call setPinOne
.L47:
	lds r24,LeftMotorBase_+9
	lds r25,LeftMotorBase_+9+1
	call setPinOutput
	lds r24,LeftMotorBase_+1
	lds r25,LeftMotorBase_+1+1
	call setPinZero
	lds r24,LeftMotorBase_+9
	lds r25,LeftMotorBase_+9+1
	call setPinZero
	ldi r30,lo8(RightMotorBase_)
	ldi r31,hi8(RightMotorBase_)
	ldi r24,lo8(11)
	movw r26,r30
	st X+,__zero_reg__
        dec r24
	brne .-6
	ldi r24,lo8(26)
	sts RightMotorBase_,r24
	ldi r24,lo8(PinC2_)
	ldi r25,hi8(PinC2_)
	sts RightMotorBase_+1+1,r25
	sts RightMotorBase_+1,r24
	ldi r24,lo8(Timer1A_)
	ldi r25,hi8(Timer1A_)
	sts RightMotorBase_+3+1,r25
	sts RightMotorBase_+3,r24
	ldi r24,lo8(PinC3_)
	ldi r25,hi8(PinC3_)
	sts RightMotorBase_+9+1,r25
	sts RightMotorBase_+9,r24
	lds r24,Timer1A_
	lds r25,Timer1A_+1
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call setTimerClockSelect
	lds r30,RightMotorBase_+3
	lds r31,RightMotorBase_+3+1
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(4)
	ldi r23,hi8(4)
	call setWaveformGenerationMode
	lds r24,RightMotorBase_+3
	lds r25,RightMotorBase_+3+1
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call setCompareMatchOutputMode
	lds r22,RightMotorBase_+5
	lds r23,RightMotorBase_+5+1
	lds r24,RightMotorBase_+3
	lds r25,RightMotorBase_+3+1
	call setTimerCompareValue
	lds r24,RightMotorBase_+1
	lds r25,RightMotorBase_+1+1
	call setPinOutput
	lds r24,RightMotorBase_
	sbrc r24,3
	rjmp .L48
	lds r24,RightMotorBase_+1
	lds r25,RightMotorBase_+1+1
	call setPinOne
.L48:
	lds r24,RightMotorBase_+9
	lds r25,RightMotorBase_+9+1
	call setPinOutput
	lds r24,RightMotorBase_+1
	lds r25,RightMotorBase_+1+1
	call setPinZero
	lds r24,RightMotorBase_+9
	lds r25,RightMotorBase_+9+1
	call setPinZero
	ldi r24,lo8(26214)
	ldi r25,hi8(26214)
	sts LeftMotorBase_+5+1,r25
	sts LeftMotorBase_+5,r24
	sts RightMotorBase_+5+1,r25
	sts RightMotorBase_+5,r24
	ldi r24,lo8(-6555)
	ldi r25,hi8(-6555)
	sts LeftMotorBase_+7+1,r25
	sts LeftMotorBase_+7,r24
	sts RightMotorBase_+7+1,r25
	sts RightMotorBase_+7,r24
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
	.section	.text.initSmoothMotor,"ax",@progbits
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
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	call malloc
	std Y+14,r24
	std Y+15,r25
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	initSmoothMotor, .-initSmoothMotor
	.section	.text.motor_smooth_start_tick,"ax",@progbits
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
	breq .L55
	ldi r18,hi8(RightMotor_)
	cpi r24,lo8(RightMotor_)
	cpc r25,r18
	breq .L56
	ret
.L56:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts motor_B_running+1,r25
	sts motor_B_running,r24
.L53:
	ldi r24,lo8(Timer3B_)
	ldi r25,hi8(Timer3B_)
	call enableTimerInterrupt
	ret
.L55:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts motor_A_running+1,r25
	sts motor_A_running,r24
	rjmp .L53
	.size	motor_smooth_start_tick, .-motor_smooth_start_tick
	.section	.text.motor_smooth_stop_tick,"ax",@progbits
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
	breq .L62
	ldi r18,hi8(RightMotor_)
	cpi r24,lo8(RightMotor_)
	cpc r25,r18
	breq .L63
	ret
.L63:
	sts motor_B_running+1,__zero_reg__
	sts motor_B_running,__zero_reg__
	lds r24,motor_A_running
	lds r25,motor_A_running+1
	sbiw r24,0
	breq .L60
.L59:
	ldi r24,lo8(Timer3B_)
	ldi r25,hi8(Timer3B_)
	call enableTimerInterrupt
	ret
.L62:
	sts motor_A_running+1,__zero_reg__
	sts motor_A_running,__zero_reg__
	lds r24,motor_B_running
	lds r25,motor_B_running+1
	sbiw r24,0
	brne .L59
.L60:
	ldi r24,lo8(Timer3B_)
	ldi r25,hi8(Timer3B_)
	call disableTimerInterrupt
	ret
	.size	motor_smooth_stop_tick, .-motor_smooth_stop_tick
	.section	.text.smooth_motor_tick,"ax",@progbits
.global	smooth_motor_tick
	.type	smooth_motor_tick, @function
smooth_motor_tick:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,motor_A_running
	lds r25,motor_A_running+1
	sbiw r24,0
	brne .L67
.L65:
	lds r24,motor_B_running
	lds r25,motor_B_running+1
	sbiw r24,0
	brne .L68
	ret
.L68:
	ldi r24,lo8(RightMotor_)
	ldi r25,hi8(RightMotor_)
	call motor_smooth_tick
	ret
.L67:
	ldi r24,lo8(LeftMotor_)
	ldi r25,hi8(LeftMotor_)
	call motor_smooth_tick
	rjmp .L65
	.size	smooth_motor_tick, .-smooth_motor_tick
	.section	.text.smooth_enable_tick,"ax",@progbits
.global	smooth_enable_tick
	.type	smooth_enable_tick, @function
smooth_enable_tick:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sbiw r24,0
	brne .L72
	ldi r24,lo8(Timer3B_)
	ldi r25,hi8(Timer3B_)
	call disableTimerInterrupt
	ret
.L72:
	ldi r24,lo8(Timer3B_)
	ldi r25,hi8(Timer3B_)
	call enableTimerInterrupt
	ret
	.size	smooth_enable_tick, .-smooth_enable_tick
	.section	.text.__vector_33,"ax",@progbits
.global	__vector_33
	.type	__vector_33, @function
__vector_33:
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
	lds r24,motor_A_running
	lds r25,motor_A_running+1
	sbiw r24,0
	brne .L76
.L74:
	lds r24,motor_B_running
	lds r25,motor_B_running+1
	sbiw r24,0
	breq .L73
	ldi r24,lo8(RightMotor_)
	ldi r25,hi8(RightMotor_)
	call motor_smooth_tick
.L73:
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
.L76:
	ldi r24,lo8(LeftMotor_)
	ldi r25,hi8(LeftMotor_)
	call motor_smooth_tick
	rjmp .L74
	.size	__vector_33, .-__vector_33
	.section	.text.init_smooth_motors,"ax",@progbits
.global	init_smooth_motors
	.type	init_smooth_motors, @function
init_smooth_motors:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	ldi r24,lo8(LeftMotorBase_)
	ldi r25,hi8(LeftMotorBase_)
	sts LeftMotor_+1,r25
	sts LeftMotor_,r24
	sts LeftMotor_+2+1,__zero_reg__
	sts LeftMotor_+2,__zero_reg__
	ldi r28,lo8(1)
	ldi r29,hi8(1)
	sts LeftMotor_+4+1,r29
	sts LeftMotor_+4,r28
	sts LeftMotor_+6+1,__zero_reg__
	sts LeftMotor_+6,__zero_reg__
	sts LeftMotor_+8+1,r29
	sts LeftMotor_+8,r28
	sts LeftMotor_+10+1,__zero_reg__
	sts LeftMotor_+10,__zero_reg__
	ldi r16,lo8(35)
	ldi r17,hi8(35)
	sts LeftMotor_+12+1,r17
	sts LeftMotor_+12,r16
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	call malloc
	sts LeftMotor_+14,r24
	sts LeftMotor_+15,r25
	ldi r24,lo8(RightMotorBase_)
	ldi r25,hi8(RightMotorBase_)
	sts RightMotor_+1,r25
	sts RightMotor_,r24
	sts RightMotor_+2+1,__zero_reg__
	sts RightMotor_+2,__zero_reg__
	sts RightMotor_+4+1,r29
	sts RightMotor_+4,r28
	sts RightMotor_+6+1,__zero_reg__
	sts RightMotor_+6,__zero_reg__
	sts RightMotor_+8+1,r29
	sts RightMotor_+8,r28
	sts RightMotor_+10+1,__zero_reg__
	sts RightMotor_+10,__zero_reg__
	sts RightMotor_+12+1,r17
	sts RightMotor_+12,r16
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	call malloc
	sts RightMotor_+14,r24
	sts RightMotor_+15,r25
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	init_smooth_motors, .-init_smooth_motors
	.section	.init8
.global	init_smooth_motors_kernel_init
	.type	init_smooth_motors_kernel_init, @function
init_smooth_motors_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(LeftMotorBase_)
	ldi r25,hi8(LeftMotorBase_)
	sts LeftMotor_+1,r25
	sts LeftMotor_,r24
	sts LeftMotor_+2+1,__zero_reg__
	sts LeftMotor_+2,__zero_reg__
	ldi r28,lo8(1)
	ldi r29,hi8(1)
	sts LeftMotor_+4+1,r29
	sts LeftMotor_+4,r28
	sts LeftMotor_+6+1,__zero_reg__
	sts LeftMotor_+6,__zero_reg__
	sts LeftMotor_+8+1,r29
	sts LeftMotor_+8,r28
	sts LeftMotor_+10+1,__zero_reg__
	sts LeftMotor_+10,__zero_reg__
	ldi r16,lo8(35)
	ldi r17,hi8(35)
	sts LeftMotor_+12+1,r17
	sts LeftMotor_+12,r16
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	call malloc
	sts LeftMotor_+14,r24
	sts LeftMotor_+15,r25
	ldi r24,lo8(RightMotorBase_)
	ldi r25,hi8(RightMotorBase_)
	sts RightMotor_+1,r25
	sts RightMotor_,r24
	sts RightMotor_+2+1,__zero_reg__
	sts RightMotor_+2,__zero_reg__
	sts RightMotor_+4+1,r29
	sts RightMotor_+4,r28
	sts RightMotor_+6+1,__zero_reg__
	sts RightMotor_+6,__zero_reg__
	sts RightMotor_+8+1,r29
	sts RightMotor_+8,r28
	sts RightMotor_+10+1,__zero_reg__
	sts RightMotor_+10,__zero_reg__
	sts RightMotor_+12+1,r17
	sts RightMotor_+12,r16
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	call malloc
	sts RightMotor_+14,r24
	sts RightMotor_+15,r25
/* epilogue start */
	.size	init_smooth_motors_kernel_init, .-init_smooth_motors_kernel_init
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
	lds r18,nextTwiOperation
	lds r19,nextTwiOperation+1
	cpi r18,3
	cpc r19,__zero_reg__
	brge .L92
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
.L88:
	movw r24,r20
	movw r16,r30
	ldi r22,lo8(7)
.L86:
	movw r26,r16
	ld r0,X+
	movw r16,r26
	movw r26,r24
	st X+,r0
	movw r24,r26
	subi r22,lo8(-(-1))
	brne .L86
	ldd r22,Z+4
	ldd r24,Z+5
	ldd r25,Z+6
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	sts nextTwiOperation+1,r19
	sts nextTwiOperation,r18
	sbiw r24,0
	brne .L87
	adiw r30,7
	cpi r18,3
	cpc r19,__zero_reg__
	brlt .L88
.L92:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
.L85:
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
.L87:
	cpi r18,3
	cpc r19,__zero_reg__
	brge .L92
	cpi r24,2
	cpc r25,__zero_reg__
	breq .L95
	cpi r24,1
	cpc r25,__zero_reg__
	breq .L96
.L90:
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
	rjmp .L85
.L95:
	andi r22,lo8(-2)
	sts twi_address,r22
	rjmp .L90
.L96:
	ori r22,lo8(1)
	sts twi_address,r22
	rjmp .L90
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
	sts twi_error+1,__zero_reg__
	sts twi_error,__zero_reg__
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
.L98:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L98
	lds r22,furtherOperations+4
	lds r18,furtherOperations+5
	lds r19,furtherOperations+5+1
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	sts nextTwiOperation+1,r21
	sts nextTwiOperation,r20
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L99
	movw r26,r24
	ldi r30,lo8(furtherOperations+7)
	ldi r31,hi8(furtherOperations+7)
	ldi r24,lo8(7)
.L100:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L100
	lds r22,furtherOperations+11
	lds r18,furtherOperations+12
	lds r19,furtherOperations+12+1
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	sts nextTwiOperation+1,r25
	sts nextTwiOperation,r24
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L99
	ldi r24,lo8(3)
	ldi r25,hi8(3)
	sts nextTwiOperation+1,r25
	sts nextTwiOperation,r24
.L97:
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
.L99:
	cpi r18,2
	cpc r19,__zero_reg__
	breq .L108
	cpi r18,1
	cpc r19,__zero_reg__
	breq .L109
.L102:
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
	ldi r24,lo8(-91)
	sts 188,r24
	rjmp .L97
.L108:
	andi r22,lo8(-2)
	sts twi_address,r22
	rjmp .L102
.L109:
	ori r22,lo8(1)
	sts twi_address,r22
	rjmp .L102
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
	lds r24,185
	ldi r25,lo8(0)
	andi r24,lo8(248)
	andi r25,hi8(248)
	cpi r24,48
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L116
	cpi r24,49
	cpc r25,__zero_reg__
	brlt .L155
	cpi r24,72
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L119
	cpi r24,73
	cpc r25,__zero_reg__
	brlt .+2
	rjmp .L125
	cpi r24,56
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L117
	cpi r24,64
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L156
.L111:
	ldi r24,lo8(3)
	ldi r25,hi8(3)
	sts twi_error+1,r25
	sts twi_error,r24
	call twi_unexpectedCondition
.L110:
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
.L155:
	cpi r24,16
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L113
	cpi r24,17
	cpc r25,__zero_reg__
	brge .+2
	rjmp .L157
	cpi r24,32
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L115
	cpi r24,40
	cpc r25,__zero_reg__
	breq .L114
	cpi r24,24
	cpc r25,__zero_reg__
	brne .L111
.L114:
	lds r24,alreadyHandled
	lds r25,alreadyHandled+1
	lds r18,twi_buffer+2
	lds r19,twi_buffer+2+1
	cp r24,r18
	cpc r25,r19
	brlo .+2
	rjmp .L127
	lds r30,twi_buffer
	lds r31,twi_buffer+1
	add r30,r24
	adc r31,r25
	ld r18,Z
	adiw r24,1
	sts alreadyHandled+1,r25
	sts alreadyHandled,r24
	sts 187,r18
	ldi r24,lo8(-123)
	sts 188,r24
	rjmp .L110
.L125:
	cpi r24,88
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L121
	cpi r24,248
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L122
	cpi r24,80
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L111
	lds r18,twi_buffer+2
	lds r19,twi_buffer+2+1
	lds r24,alreadyHandled
	lds r25,alreadyHandled+1
	cp r24,r18
	cpc r25,r19
	brsh .L135
	lds r18,187
	lds r30,twi_buffer
	lds r31,twi_buffer+1
	add r30,r24
	adc r31,r25
	st Z,r18
	adiw r24,1
	sts alreadyHandled+1,r25
	sts alreadyHandled,r24
	lds r18,twi_buffer+2
	lds r19,twi_buffer+2+1
.L135:
	adiw r24,1
	cp r24,r18
	cpc r25,r19
	brsh .L136
.L149:
	ldi r24,lo8(-59)
	sts 188,r24
	rjmp .L110
.L157:
	sbiw r24,0
	breq .L112
	cpi r24,8
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L111
.L113:
	lds r24,twi_address
	sts 187,r24
	ldi r24,lo8(-123)
	sts 188,r24
	rjmp .L110
.L156:
	lds r24,alreadyHandled
	lds r25,alreadyHandled+1
	adiw r24,1
	lds r18,twi_buffer+2
	lds r19,twi_buffer+2+1
	cp r24,r18
	cpc r25,r19
	brlo .L149
.L136:
	ldi r24,lo8(-123)
	sts 188,r24
	rjmp .L110
.L112:
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	sts twi_error+1,r25
	sts twi_error,r24
	call twi_unexpectedCondition
	rjmp .L110
.L116:
	ldi r24,lo8(6)
	ldi r25,hi8(6)
	sts twi_error+1,r25
	sts twi_error,r24
	ldi r24,lo8(-107)
	sts 188,r24
	sts twi_running+1,__zero_reg__
	sts twi_running,__zero_reg__
	rjmp .L110
.L115:
	ldi r24,lo8(4)
	ldi r25,hi8(4)
	sts twi_error+1,r25
	sts twi_error,r24
.L148:
	ldi r24,lo8(-107)
	sts 188,r24
	sts twi_running+1,__zero_reg__
	sts twi_running,__zero_reg__
	rjmp .L110
.L119:
	ldi r24,lo8(4)
	ldi r25,hi8(4)
	sts twi_error+1,r25
	sts twi_error,r24
	ldi r24,lo8(-107)
	sts 188,r24
	sts twi_running+1,__zero_reg__
	sts twi_running,__zero_reg__
	rjmp .L110
.L117:
	ldi r24,lo8(5)
	ldi r25,hi8(5)
	sts twi_error+1,r25
	sts twi_error,r24
	ldi r24,lo8(-123)
	sts 188,r24
	sts twi_running+1,__zero_reg__
	sts twi_running,__zero_reg__
	rjmp .L110
.L122:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts twi_error+1,r25
	sts twi_error,r24
	call twi_unexpectedCondition
	rjmp .L110
.L121:
	lds r24,alreadyHandled
	lds r25,alreadyHandled+1
	lds r18,twi_buffer+2
	lds r19,twi_buffer+2+1
	cp r24,r18
	cpc r25,r19
	brsh .L137
	lds r18,187
	lds r30,twi_buffer
	lds r31,twi_buffer+1
	add r30,r24
	adc r31,r25
	st Z,r18
	adiw r24,1
	sts alreadyHandled+1,r25
	sts alreadyHandled,r24
.L137:
	lds r18,nextTwiOperation
	lds r19,nextTwiOperation+1
	cpi r18,3
	cpc r19,__zero_reg__
	brlt .+2
	rjmp .L148
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
.L141:
	movw r24,r20
	movw r16,r30
	ldi r22,lo8(7)
.L139:
	movw r26,r16
	ld r0,X+
	movw r16,r26
	movw r26,r24
	st X+,r0
	movw r24,r26
	subi r22,lo8(-(-1))
	brne .L139
	ldd r22,Z+4
	ldd r24,Z+5
	ldd r25,Z+6
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	sts nextTwiOperation+1,r19
	sts nextTwiOperation,r18
	sbiw r24,0
	brne .L140
	adiw r30,7
	cpi r18,3
	cpc r19,__zero_reg__
	brlt .L141
	rjmp .L148
.L127:
	lds r18,nextTwiOperation
	lds r19,nextTwiOperation+1
	cpi r18,3
	cpc r19,__zero_reg__
	brlt .+2
	rjmp .L148
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
.L131:
	movw r24,r20
	movw r16,r30
	ldi r22,lo8(7)
.L129:
	movw r26,r16
	ld r0,X+
	movw r16,r26
	movw r26,r24
	st X+,r0
	movw r24,r26
	subi r22,lo8(-(-1))
	brne .L129
	ldd r22,Z+4
	ldd r24,Z+5
	ldd r25,Z+6
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	sts nextTwiOperation+1,r19
	sts nextTwiOperation,r18
	sbiw r24,0
	brne .L140
	adiw r30,7
	cpi r18,3
	cpc r19,__zero_reg__
	brlt .L131
	rjmp .L148
.L140:
	cpi r18,3
	cpc r19,__zero_reg__
	brlt .+2
	rjmp .L148
	cpi r24,2
	cpc r25,__zero_reg__
	breq .L158
	cpi r24,1
	cpc r25,__zero_reg__
	breq .L159
.L143:
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
	ldi r24,lo8(-91)
	sts 188,r24
	rjmp .L110
.L158:
	andi r22,lo8(-2)
	sts twi_address,r22
	rjmp .L143
.L159:
	ori r22,lo8(1)
	sts twi_address,r22
	rjmp .L143
	.size	__vector_26, .-__vector_26
	.section	.text.twiSend,"ax",@progbits
.global	twiSend
	.type	twiSend, @function
twiSend:
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 14 */
/* stack size = 16 */
.L__stack_usage = 16
	movw r30,r28
	adiw r30,1
	ldi r25,lo8(7)
	movw r26,r30
	st X+,__zero_reg__
        dec r25
	brne .-6
	std Y+1,r20
	std Y+2,r21
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	ldi r26,lo8(furtherOperations)
	ldi r27,hi8(furtherOperations)
	ldi r24,lo8(7)
.L161:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L161
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	sts furtherOperations+5+1,r25
	sts furtherOperations+5,r24
	sts furtherOperations+12+1,__zero_reg__
	sts furtherOperations+12,__zero_reg__
	sts furtherOperations+19+1,__zero_reg__
	sts furtherOperations+19,__zero_reg__
	sts twi_error+1,__zero_reg__
	sts twi_error,__zero_reg__
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts twi_running+1,r25
	sts twi_running,r24
	movw r26,r28
	adiw r26,8
	ldi r30,lo8(furtherOperations)
	ldi r31,hi8(furtherOperations)
	ldi r24,lo8(7)
.L162:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L162
	lds r18,furtherOperations+4
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts nextTwiOperation+1,r25
	sts nextTwiOperation,r24
	andi r18,lo8(-2)
	sts twi_address,r18
	sts alreadyHandled+1,__zero_reg__
	sts alreadyHandled,__zero_reg__
	ldd r24,Y+8
	ldd r25,Y+9
	ldd r26,Y+10
	ldd r27,Y+11
	sts twi_buffer,r24
	sts twi_buffer+1,r25
	sts twi_buffer+2,r26
	sts twi_buffer+3,r27
	ldi r24,lo8(-91)
	sts 188,r24
/* epilogue start */
	adiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r28
	pop r29
	ret
	.size	twiSend, .-twiSend
	.section	.text.twiReceive,"ax",@progbits
.global	twiReceive
	.type	twiReceive, @function
twiReceive:
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 14 */
/* stack size = 16 */
.L__stack_usage = 16
	movw r30,r28
	adiw r30,1
	ldi r25,lo8(7)
	movw r26,r30
	st X+,__zero_reg__
        dec r25
	brne .-6
	std Y+1,r20
	std Y+2,r21
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	ldi r26,lo8(furtherOperations)
	ldi r27,hi8(furtherOperations)
	ldi r24,lo8(7)
.L166:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L166
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts furtherOperations+5+1,r25
	sts furtherOperations+5,r24
	sts furtherOperations+12+1,__zero_reg__
	sts furtherOperations+12,__zero_reg__
	sts furtherOperations+19+1,__zero_reg__
	sts furtherOperations+19,__zero_reg__
	sts twi_error+1,__zero_reg__
	sts twi_error,__zero_reg__
	sts twi_running+1,r25
	sts twi_running,r24
	movw r26,r28
	adiw r26,8
	ldi r30,lo8(furtherOperations)
	ldi r31,hi8(furtherOperations)
	ldi r24,lo8(7)
.L167:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L167
	lds r18,furtherOperations+4
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts nextTwiOperation+1,r25
	sts nextTwiOperation,r24
	ori r18,lo8(1)
	sts twi_address,r18
	sts alreadyHandled+1,__zero_reg__
	sts alreadyHandled,__zero_reg__
	ldd r24,Y+8
	ldd r25,Y+9
	ldd r26,Y+10
	ldd r27,Y+11
	sts twi_buffer,r24
	sts twi_buffer+1,r25
	sts twi_buffer+2,r26
	sts twi_buffer+3,r27
	ldi r24,lo8(-91)
	sts 188,r24
/* epilogue start */
	adiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r28
	pop r29
	ret
	.size	twiReceive, .-twiReceive
	.section	.text.twiSendReceive,"ax",@progbits
.global	twiSendReceive
	.type	twiSendReceive, @function
twiSendReceive:
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,21
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 21 */
/* stack size = 25 */
.L__stack_usage = 25
	movw r30,r28
	adiw r30,8
	ldi r25,lo8(14)
	movw r26,r30
	st X+,__zero_reg__
        dec r25
	brne .-6
	std Y+8,r20
	std Y+9,r21
	std Y+10,r22
	std Y+11,r23
	std Y+12,r24
	std Y+15,r16
	std Y+16,r17
	std Y+17,r18
	std Y+18,r19
	std Y+19,r24
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	std Y+14,r25
	std Y+13,r24
	ldi r26,lo8(furtherOperations)
	ldi r27,hi8(furtherOperations)
	ldi r24,lo8(7)
.L171:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L171
	ldi r26,lo8(furtherOperations+7)
	ldi r27,hi8(furtherOperations+7)
	movw r30,r28
	adiw r30,15
	ldi r24,lo8(7)
.L172:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L172
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts furtherOperations+12+1,r25
	sts furtherOperations+12,r24
	sts furtherOperations+19+1,__zero_reg__
	sts furtherOperations+19,__zero_reg__
	sts twi_error+1,__zero_reg__
	sts twi_error,__zero_reg__
	sts twi_running+1,r25
	sts twi_running,r24
	movw r26,r28
	adiw r26,1
	ldi r30,lo8(furtherOperations)
	ldi r31,hi8(furtherOperations)
	ldi r24,lo8(7)
.L173:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L173
	lds r18,furtherOperations+4
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts nextTwiOperation+1,r25
	sts nextTwiOperation,r24
	andi r18,lo8(-2)
	sts twi_address,r18
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
	ldi r24,lo8(-91)
	sts 188,r24
/* epilogue start */
	adiw r28,21
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
	.size	twiSendReceive, .-twiSendReceive
	.section	.text.twiMultipleOperations,"ax",@progbits
.global	twiMultipleOperations
	.type	twiMultipleOperations, @function
twiMultipleOperations:
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
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	brlt .+2
	rjmp .L192
	ldi r26,lo8(furtherOperations)
	ldi r27,hi8(furtherOperations)
	movw r30,r22
	ldi r18,lo8(7)
.L179:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L179
	cpi r24,2
	cpc r25,__zero_reg__
	brge .+2
	rjmp .L193
	ldi r26,lo8(furtherOperations+7)
	ldi r27,hi8(furtherOperations+7)
	movw r30,r22
	adiw r30,7
	ldi r18,lo8(7)
.L181:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L181
	cpi r24,3
	cpc r25,__zero_reg__
	brge .+2
	rjmp .L194
	ldi r26,lo8(furtherOperations+14)
	ldi r27,hi8(furtherOperations+14)
	movw r30,r22
	adiw r30,14
	ldi r24,lo8(7)
.L182:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L182
.L183:
	sts twi_error+1,__zero_reg__
	sts twi_error,__zero_reg__
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
.L185:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L185
	lds r22,furtherOperations+4
	lds r18,furtherOperations+5
	lds r19,furtherOperations+5+1
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	sts nextTwiOperation+1,r21
	sts nextTwiOperation,r20
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L186
	movw r26,r24
	ldi r30,lo8(furtherOperations+7)
	ldi r31,hi8(furtherOperations+7)
	ldi r24,lo8(7)
.L187:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L187
	lds r22,furtherOperations+11
	lds r18,furtherOperations+12
	lds r19,furtherOperations+12+1
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	sts nextTwiOperation+1,r25
	sts nextTwiOperation,r24
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L186
	ldi r24,lo8(3)
	ldi r25,hi8(3)
	sts nextTwiOperation+1,r25
	sts nextTwiOperation,r24
.L177:
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
.L186:
	cpi r18,2
	cpc r19,__zero_reg__
	breq .L202
	cpi r18,1
	cpc r19,__zero_reg__
	breq .L203
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
	ldi r24,lo8(-91)
	sts 188,r24
	rjmp .L177
.L202:
	andi r22,lo8(-2)
	sts twi_address,r22
	rjmp .L189
.L203:
	ori r22,lo8(1)
	sts twi_address,r22
	rjmp .L189
.L192:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
.L178:
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	sub r30,r24
	sbc r31,r25
	subi r30,lo8(-(furtherOperations+5))
	sbci r31,hi8(-(furtherOperations+5))
.L184:
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	adiw r24,1
	adiw r30,7
	cpi r24,3
	cpc r25,__zero_reg__
	brlt .L184
	rjmp .L183
.L193:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	rjmp .L178
.L194:
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	rjmp .L178
	.size	twiMultipleOperations, .-twiMultipleOperations
	.section	.text.WAIT_FOR_TWI,"ax",@progbits
.global	WAIT_FOR_TWI
	.type	WAIT_FOR_TWI, @function
WAIT_FOR_TWI:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L205:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L205
/* epilogue start */
	ret
	.size	WAIT_FOR_TWI, .-WAIT_FOR_TWI
	.section	.text.turn_word,"ax",@progbits
.global	turn_word
	.type	turn_word, @function
turn_word:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	st Z,r25
	std Z+1,r24
/* epilogue start */
	ret
	.size	turn_word, .-turn_word
	.section	.text.twi_rpc_oneway,"ax",@progbits
.global	twi_rpc_oneway
	.type	twi_rpc_oneway, @function
twi_rpc_oneway:
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 14 */
/* stack size = 17 */
.L__stack_usage = 17
	mov r17,r24
	movw r30,r20
	lds r26,sendBuffer
	lds r27,sendBuffer+1
	st X,r22
	movw r24,r20
	adiw r24,1
	sts sendBuffer+2+1,r25
	sts sendBuffer+2,r24
	lds r20,sendBuffer
	lds r21,sendBuffer+1
	subi r20,lo8(-(1))
	sbci r21,hi8(-(1))
	movw r24,r20
	movw r22,r18
	movw r20,r30
	call memcpy
	lds r24,sendBuffer
	lds r25,sendBuffer+1
	lds r26,sendBuffer+2
	lds r27,sendBuffer+3
	movw r20,r28
	subi r20,lo8(-(1))
	sbci r21,hi8(-(1))
	ldi r18,lo8(7)
	movw r30,r20
	st Z+,__zero_reg__
        dec r18
	brne .-6
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldi r26,lo8(furtherOperations)
	ldi r27,hi8(furtherOperations)
	movw r30,r20
	ldi r24,lo8(7)
.L210:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L210
	sts furtherOperations+4,r17
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	sts furtherOperations+5+1,r25
	sts furtherOperations+5,r24
	sts furtherOperations+12+1,__zero_reg__
	sts furtherOperations+12,__zero_reg__
	sts furtherOperations+19+1,__zero_reg__
	sts furtherOperations+19,__zero_reg__
	sts twi_error+1,__zero_reg__
	sts twi_error,__zero_reg__
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts twi_running+1,r25
	sts twi_running,r24
	movw r26,r28
	adiw r26,8
	ldi r30,lo8(furtherOperations)
	ldi r31,hi8(furtherOperations)
	ldi r24,lo8(7)
.L211:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L211
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts nextTwiOperation+1,r25
	sts nextTwiOperation,r24
	andi r17,lo8(-2)
	sts twi_address,r17
	sts alreadyHandled+1,__zero_reg__
	sts alreadyHandled,__zero_reg__
	ldd r24,Y+8
	ldd r25,Y+9
	ldd r26,Y+10
	ldd r27,Y+11
	sts twi_buffer,r24
	sts twi_buffer+1,r25
	sts twi_buffer+2,r26
	sts twi_buffer+3,r27
	ldi r24,lo8(-91)
	sts 188,r24
/* epilogue start */
	adiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r28
	pop r29
	pop r17
	ret
	.size	twi_rpc_oneway, .-twi_rpc_oneway
	.section	.text.tankIO_blinkByte,"ax",@progbits
.global	tankIO_blinkByte
	.type	tankIO_blinkByte, @function
tankIO_blinkByte:
	push r29
	push r28
	rcall .
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 5 */
/* stack size = 7 */
.L__stack_usage = 7
	std Y+1,r20
	std Y+2,r21
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(5)
	ldi r21,hi8(5)
	lds r24,tank_IO
	ldi r22,lo8(-80)
	call twi_rpc_oneway
.L215:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L215
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	tankIO_blinkByte, .-tankIO_blinkByte
	.section	.text.tankIO_flashAllLeds,"ax",@progbits
.global	tankIO_flashAllLeds
	.type	tankIO_flashAllLeds, @function
tankIO_flashAllLeds:
	push r29
	push r28
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(4)
	ldi r21,hi8(4)
	lds r24,tank_IO
	ldi r22,lo8(-81)
	call twi_rpc_oneway
.L218:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L218
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	tankIO_flashAllLeds, .-tankIO_flashAllLeds
	.section	.text.tankIO_flashLeds,"ax",@progbits
.global	tankIO_flashLeds
	.type	tankIO_flashLeds, @function
tankIO_flashLeds:
	push r29
	push r28
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+1,r20
	std Y+2,r21
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	std Y+6,r25
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(6)
	ldi r21,hi8(6)
	lds r24,tank_IO
	ldi r22,lo8(-82)
	call twi_rpc_oneway
.L221:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L221
/* epilogue start */
	adiw r28,6
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r28
	pop r29
	ret
	.size	tankIO_flashLeds, .-tankIO_flashLeds
	.section	.text.tankIO_flashLed,"ax",@progbits
.global	tankIO_flashLed
	.type	tankIO_flashLed, @function
tankIO_flashLed:
	push r29
	push r28
	rcall .
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 5 */
/* stack size = 7 */
.L__stack_usage = 7
	std Y+1,r20
	std Y+2,r21
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(5)
	ldi r21,hi8(5)
	lds r24,tank_IO
	ldi r22,lo8(-83)
	call twi_rpc_oneway
.L224:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L224
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	tankIO_flashLed, .-tankIO_flashLed
	.section	.text.tankIO_blinkAllLeds,"ax",@progbits
.global	tankIO_blinkAllLeds
	.type	tankIO_blinkAllLeds, @function
tankIO_blinkAllLeds:
	push r29
	push r28
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 5 */
.L__stack_usage = 5
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(3)
	ldi r21,hi8(3)
	lds r24,tank_IO
	ldi r22,lo8(-84)
	call twi_rpc_oneway
.L227:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L227
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	tankIO_blinkAllLeds, .-tankIO_blinkAllLeds
	.section	.text.tankIO_blinkLeds,"ax",@progbits
.global	tankIO_blinkLeds
	.type	tankIO_blinkLeds, @function
tankIO_blinkLeds:
	push r29
	push r28
	rcall .
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 5 */
/* stack size = 7 */
.L__stack_usage = 7
	std Y+1,r20
	std Y+2,r21
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(5)
	ldi r21,hi8(5)
	lds r24,tank_IO
	ldi r22,lo8(-85)
	call twi_rpc_oneway
.L230:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L230
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	tankIO_blinkLeds, .-tankIO_blinkLeds
	.section	.text.tankIO_blinkLed,"ax",@progbits
.global	tankIO_blinkLed
	.type	tankIO_blinkLed, @function
tankIO_blinkLed:
	push r29
	push r28
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(4)
	ldi r21,hi8(4)
	lds r24,tank_IO
	ldi r22,lo8(-86)
	call twi_rpc_oneway
.L233:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L233
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	tankIO_blinkLed, .-tankIO_blinkLed
	.section	.text.tankIO_setLeds,"ax",@progbits
.global	tankIO_setLeds
	.type	tankIO_setLeds, @function
tankIO_setLeds:
	push r29
	push r28
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(4)
	ldi r21,hi8(4)
	lds r24,tank_IO
	ldi r22,lo8(-89)
	call twi_rpc_oneway
.L236:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L236
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	tankIO_setLeds, .-tankIO_setLeds
	.section	.text.tankIO_disableLeds,"ax",@progbits
.global	tankIO_disableLeds
	.type	tankIO_disableLeds, @function
tankIO_disableLeds:
	push r29
	push r28
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(2)
	ldi r21,hi8(2)
	lds r24,tank_IO
	ldi r22,lo8(-87)
	call twi_rpc_oneway
.L239:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L239
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	tankIO_disableLeds, .-tankIO_disableLeds
	.section	.text.tankIO_enableLeds,"ax",@progbits
.global	tankIO_enableLeds
	.type	tankIO_enableLeds, @function
tankIO_enableLeds:
	push r29
	push r28
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(2)
	ldi r21,hi8(2)
	lds r24,tank_IO
	ldi r22,lo8(-88)
	call twi_rpc_oneway
.L242:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L242
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	tankIO_enableLeds, .-tankIO_enableLeds
	.section	.text.tankIO_setLed,"ax",@progbits
.global	tankIO_setLed
	.type	tankIO_setLed, @function
tankIO_setLed:
	push r29
	push r28
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 5 */
.L__stack_usage = 5
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(3)
	ldi r21,hi8(3)
	lds r24,tank_IO
	ldi r22,lo8(-90)
	call twi_rpc_oneway
.L245:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L245
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	tankIO_setLed, .-tankIO_setLed
	.section	.text.tankIO_disableLed,"ax",@progbits
.global	tankIO_disableLed
	.type	tankIO_disableLed, @function
tankIO_disableLed:
	push r29
	push r28
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 5 */
.L__stack_usage = 5
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(3)
	ldi r21,hi8(3)
	lds r24,tank_IO
	ldi r22,lo8(-91)
	call twi_rpc_oneway
.L248:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L248
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	tankIO_disableLed, .-tankIO_disableLed
	.section	.text.tankIO_enableLed,"ax",@progbits
.global	tankIO_enableLed
	.type	tankIO_enableLed, @function
tankIO_enableLed:
	push r29
	push r28
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 5 */
.L__stack_usage = 5
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(3)
	ldi r21,hi8(3)
	lds r24,tank_IO
	ldi r22,lo8(-92)
	call twi_rpc_oneway
.L251:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L251
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	tankIO_enableLed, .-tankIO_enableLed
	.section	.text.tankIO_reset,"ax",@progbits
.global	tankIO_reset
	.type	tankIO_reset, @function
tankIO_reset:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,tank_IO
	ldi r22,lo8(-96)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r20,r18
	call twi_rpc_oneway
.L254:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L254
/* epilogue start */
	ret
	.size	tankIO_reset, .-tankIO_reset
	.section	.text.twi_rpc_pseudo_oneway,"ax",@progbits
.global	twi_rpc_pseudo_oneway
	.type	twi_rpc_pseudo_oneway, @function
twi_rpc_pseudo_oneway:
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,21
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 21 */
/* stack size = 24 */
.L__stack_usage = 24
	mov r17,r24
	movw r30,r20
	lds r26,sendBuffer
	lds r27,sendBuffer+1
	st X,r22
	movw r24,r20
	adiw r24,1
	sts sendBuffer+2+1,r25
	sts sendBuffer+2,r24
	lds r20,sendBuffer
	lds r21,sendBuffer+1
	subi r20,lo8(-(1))
	sbci r21,hi8(-(1))
	movw r24,r20
	movw r22,r18
	movw r20,r30
	call memcpy
	lds r24,sendBuffer
	lds r25,sendBuffer+1
	lds r26,sendBuffer+2
	lds r27,sendBuffer+3
	movw r20,r28
	subi r20,lo8(-(8))
	sbci r21,hi8(-(8))
	ldi r18,lo8(14)
	movw r30,r20
	st Z+,__zero_reg__
        dec r18
	brne .-6
	std Y+8,r24
	std Y+9,r25
	std Y+10,r26
	std Y+11,r27
	std Y+12,r17
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	std Y+14,r25
	std Y+13,r24
	ldi r26,lo8(furtherOperations)
	ldi r27,hi8(furtherOperations)
	movw r30,r20
	ldi r24,lo8(7)
.L258:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L258
	sts furtherOperations+7+1,__zero_reg__
	sts furtherOperations+7,__zero_reg__
	sts furtherOperations+9+1,__zero_reg__
	sts furtherOperations+9,__zero_reg__
	sts furtherOperations+11,r17
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts furtherOperations+12+1,r25
	sts furtherOperations+12,r24
	sts furtherOperations+19+1,__zero_reg__
	sts furtherOperations+19,__zero_reg__
	sts twi_error+1,__zero_reg__
	sts twi_error,__zero_reg__
	sts twi_running+1,r25
	sts twi_running,r24
	movw r26,r28
	adiw r26,1
	ldi r30,lo8(furtherOperations)
	ldi r31,hi8(furtherOperations)
	ldi r24,lo8(7)
.L259:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L259
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts nextTwiOperation+1,r25
	sts nextTwiOperation,r24
	andi r17,lo8(-2)
	sts twi_address,r17
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
	ldi r24,lo8(-91)
	sts 188,r24
/* epilogue start */
	adiw r28,21
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r28
	pop r29
	pop r17
	ret
	.size	twi_rpc_pseudo_oneway, .-twi_rpc_pseudo_oneway
	.section	.text.bgx1_setIllumination,"ax",@progbits
.global	bgx1_setIllumination
	.type	bgx1_setIllumination, @function
bgx1_setIllumination:
	push r29
	push r28
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(2)
	ldi r21,hi8(2)
	lds r24,bgx1
	ldi r22,lo8(67)
	call twi_rpc_pseudo_oneway
.L263:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L263
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	bgx1_setIllumination, .-bgx1_setIllumination
	.section	.text.bgx1_termScroll,"ax",@progbits
.global	bgx1_termScroll
	.type	bgx1_termScroll, @function
bgx1_termScroll:
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	std Y+1,r24
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	lds r24,bgx1
	ldi r22,lo8(50)
	call twi_rpc_pseudo_oneway
.L266:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L266
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	bgx1_termScroll, .-bgx1_termScroll
	.section	.text.bgx1_termGoto_base,"ax",@progbits
.global	bgx1_termGoto_base
	.type	bgx1_termGoto_base, @function
bgx1_termGoto_base:
	push r29
	push r28
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(2)
	ldi r21,hi8(2)
	lds r24,bgx1
	ldi r22,lo8(49)
	call twi_rpc_pseudo_oneway
.L269:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L269
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	bgx1_termGoto_base, .-bgx1_termGoto_base
	.section	.text.bgx1_termClear,"ax",@progbits
.global	bgx1_termClear
	.type	bgx1_termClear, @function
bgx1_termClear:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,bgx1
	ldi r22,lo8(48)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r20,r18
	call twi_rpc_pseudo_oneway
.L272:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L272
/* epilogue start */
	ret
	.size	bgx1_termClear, .-bgx1_termClear
	.section	.text.bgx1_selectFont,"ax",@progbits
.global	bgx1_selectFont
	.type	bgx1_selectFont, @function
bgx1_selectFont:
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	std Y+1,r24
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	lds r24,bgx1
	ldi r22,lo8(21)
	call twi_rpc_pseudo_oneway
.L275:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L275
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	bgx1_selectFont, .-bgx1_selectFont
	.section	.text.bgx1_fillAll,"ax",@progbits
.global	bgx1_fillAll
	.type	bgx1_fillAll, @function
bgx1_fillAll:
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	std Y+1,r24
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	lds r24,bgx1
	ldi r22,lo8(18)
	call twi_rpc_pseudo_oneway
.L278:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L278
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	bgx1_fillAll, .-bgx1_fillAll
	.section	.text.bgx1_mode,"ax",@progbits
.global	bgx1_mode
	.type	bgx1_mode, @function
bgx1_mode:
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	std Y+1,r24
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	lds r24,bgx1
	ldi r22,lo8(17)
	call twi_rpc_pseudo_oneway
.L281:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L281
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	bgx1_mode, .-bgx1_mode
	.section	.text.bgx1_move_base,"ax",@progbits
.global	bgx1_move_base
	.type	bgx1_move_base, @function
bgx1_move_base:
	push r29
	push r28
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(2)
	ldi r21,hi8(2)
	lds r24,bgx1
	ldi r22,lo8(16)
	call twi_rpc_pseudo_oneway
.L284:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L284
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	bgx1_move_base, .-bgx1_move_base
	.section	.text.bgx1_setStatus,"ax",@progbits
.global	bgx1_setStatus
	.type	bgx1_setStatus, @function
bgx1_setStatus:
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	std Y+1,r24
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	lds r24,bgx1
	ldi r22,lo8(3)
	call twi_rpc_pseudo_oneway
.L287:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L287
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	bgx1_setStatus, .-bgx1_setStatus
	.section	.text.bgx1_reset,"ax",@progbits
.global	bgx1_reset
	.type	bgx1_reset, @function
bgx1_reset:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,bgx1
	ldi r22,lo8(0)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r20,r18
	call twi_rpc_pseudo_oneway
.L290:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L290
/* epilogue start */
	ret
	.size	bgx1_reset, .-bgx1_reset
	.section	.text.twi_rpc,"ax",@progbits
.global	twi_rpc
	.type	twi_rpc, @function
twi_rpc:
	push r13
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,21
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 21 */
/* stack size = 28 */
.L__stack_usage = 28
	mov r13,r24
	movw r30,r20
	lds r26,sendBuffer
	lds r27,sendBuffer+1
	st X,r22
	movw r24,r20
	adiw r24,1
	sts sendBuffer+2+1,r25
	sts sendBuffer+2,r24
	lds r20,sendBuffer
	lds r21,sendBuffer+1
	subi r20,lo8(-(1))
	sbci r21,hi8(-(1))
	movw r24,r20
	movw r22,r18
	movw r20,r30
	call memcpy
	lds r24,sendBuffer
	lds r25,sendBuffer+1
	lds r26,sendBuffer+2
	lds r27,sendBuffer+3
	movw r20,r28
	subi r20,lo8(-(8))
	sbci r21,hi8(-(8))
	ldi r18,lo8(14)
	movw r30,r20
	st Z+,__zero_reg__
        dec r18
	brne .-6
	std Y+8,r24
	std Y+9,r25
	std Y+10,r26
	std Y+11,r27
	std Y+15,r14
	std Y+16,r15
	std Y+17,r16
	std Y+18,r17
	std Y+12,r13
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	std Y+14,r25
	std Y+13,r24
	ldi r26,lo8(furtherOperations)
	ldi r27,hi8(furtherOperations)
	movw r30,r20
	ldi r24,lo8(7)
.L294:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L294
	ldi r26,lo8(furtherOperations+7)
	ldi r27,hi8(furtherOperations+7)
	movw r30,r28
	adiw r30,15
	ldi r24,lo8(7)
.L295:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L295
	sts furtherOperations+11,r13
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts furtherOperations+12+1,r25
	sts furtherOperations+12,r24
	sts furtherOperations+19+1,__zero_reg__
	sts furtherOperations+19,__zero_reg__
	sts twi_error+1,__zero_reg__
	sts twi_error,__zero_reg__
	sts twi_running+1,r25
	sts twi_running,r24
	movw r26,r28
	adiw r26,1
	ldi r30,lo8(furtherOperations)
	ldi r31,hi8(furtherOperations)
	ldi r24,lo8(7)
.L296:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L296
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts nextTwiOperation+1,r25
	sts nextTwiOperation,r24
	mov r24,r13
	andi r24,lo8(-2)
	sts twi_address,r24
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
	ldi r24,lo8(-91)
	sts 188,r24
/* epilogue start */
	adiw r28,21
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	ret
	.size	twi_rpc, .-twi_rpc
	.section	.text.tankIO_pressedButtons,"ax",@progbits
.global	tankIO_pressedButtons
	.type	tankIO_pressedButtons, @function
tankIO_pressedButtons:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
	lds r24,tank_IO
	ldi r22,lo8(-93)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r20,r18
	call twi_rpc
.L301:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L301
	ldd r24,Y+1
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	tankIO_pressedButtons, .-tankIO_pressedButtons
	.section	.text.tankIO_buttonStatus,"ax",@progbits
.global	tankIO_buttonStatus
	.type	tankIO_buttonStatus, @function
tankIO_buttonStatus:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
	lds r24,tank_IO
	ldi r22,lo8(-94)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r20,r18
	call twi_rpc
.L304:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L304
	ldd r24,Y+1
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	tankIO_buttonStatus, .-tankIO_buttonStatus
	.section	.text.tankIO_isInitialized,"ax",@progbits
.global	tankIO_isInitialized
	.type	tankIO_isInitialized, @function
tankIO_isInitialized:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
	lds r24,tank_IO
	ldi r22,lo8(-95)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r20,r18
	call twi_rpc
.L307:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L307
	ldd r24,Y+1
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	tankIO_isInitialized, .-tankIO_isInitialized
	.section	.text.bgx1_syncInterface,"ax",@progbits
.global	bgx1_syncInterface
	.type	bgx1_syncInterface, @function
bgx1_syncInterface:
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
/* stack size = 8 */
.L__stack_usage = 8
	std Y+2,r24
	movw r18,r28
	subi r18,lo8(-(2))
	sbci r19,hi8(-(2))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
	lds r24,bgx1
	ldi r22,lo8(66)
	call twi_rpc
.L310:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L310
	ldd r24,Y+1
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	bgx1_syncInterface, .-bgx1_syncInterface
	.section	.text.bgx1_getAnalog_base,"ax",@progbits
.global	bgx1_getAnalog_base
	.type	bgx1_getAnalog_base, @function
bgx1_getAnalog_base:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 9 */
.L__stack_usage = 9
	std Y+3,r24
	movw r18,r28
	subi r18,lo8(-(3))
	sbci r19,hi8(-(3))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
	lds r24,bgx1
	ldi r22,lo8(65)
	call twi_rpc
.L313:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L313
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	bgx1_getAnalog_base, .-bgx1_getAnalog_base
	.section	.text.bgx1_syncPort_base,"ax",@progbits
.global	bgx1_syncPort_base
	.type	bgx1_syncPort_base, @function
bgx1_syncPort_base:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 9 */
.L__stack_usage = 9
	std Y+3,r25
	std Y+2,r24
	movw r18,r28
	subi r18,lo8(-(2))
	sbci r19,hi8(-(2))
	ldi r20,lo8(2)
	ldi r21,hi8(2)
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
	lds r24,bgx1
	ldi r22,lo8(64)
	call twi_rpc
.L316:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L316
	ldd r24,Y+1
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	bgx1_syncPort_base, .-bgx1_syncPort_base
	.section	.text.bgx1_termPrint_base,"ax",@progbits
.global	bgx1_termPrint_base
	.type	bgx1_termPrint_base, @function
bgx1_termPrint_base:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r18,r24
	movw r20,r22
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
	lds r24,bgx1
	ldi r22,lo8(51)
	call twi_rpc
.L319:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L319
	ldd r24,Y+1
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	bgx1_termPrint_base, .-bgx1_termPrint_base
	.section	.text.bgx1_lineTo_base,"ax",@progbits
.global	bgx1_lineTo_base
	.type	bgx1_lineTo_base, @function
bgx1_lineTo_base:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+4,r25
	std Y+3,r24
	movw r18,r28
	subi r18,lo8(-(3))
	sbci r19,hi8(-(3))
	ldi r20,lo8(2)
	ldi r21,hi8(2)
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
	lds r24,bgx1
	ldi r22,lo8(27)
	call twi_rpc
.L322:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L322
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	bgx1_lineTo_base, .-bgx1_lineTo_base
	.section	.text.bgx1_embeddedImage,"ax",@progbits
.global	bgx1_embeddedImage
	.type	bgx1_embeddedImage, @function
bgx1_embeddedImage:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 9 */
.L__stack_usage = 9
	std Y+3,r24
	movw r18,r28
	subi r18,lo8(-(3))
	sbci r19,hi8(-(3))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
	lds r24,bgx1
	ldi r22,lo8(26)
	call twi_rpc
.L325:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L325
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	bgx1_embeddedImage, .-bgx1_embeddedImage
	.section	.text.bgx1_drawBitmap_base,"ax",@progbits
.global	bgx1_drawBitmap_base
	.type	bgx1_drawBitmap_base, @function
bgx1_drawBitmap_base:
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
/* stack size = 8 */
.L__stack_usage = 8
	movw r18,r24
	movw r20,r22
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
	lds r24,bgx1
	ldi r22,lo8(25)
	call twi_rpc
.L328:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L328
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	bgx1_drawBitmap_base, .-bgx1_drawBitmap_base
	.section	.text.bgx1_box_base,"ax",@progbits
.global	bgx1_box_base
	.type	bgx1_box_base, @function
bgx1_box_base:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+4,r25
	std Y+3,r24
	movw r18,r28
	subi r18,lo8(-(3))
	sbci r19,hi8(-(3))
	ldi r20,lo8(2)
	ldi r21,hi8(2)
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
	lds r24,bgx1
	ldi r22,lo8(24)
	call twi_rpc
.L331:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L331
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	bgx1_box_base, .-bgx1_box_base
	.section	.text.bgx1_vLine,"ax",@progbits
.global	bgx1_vLine
	.type	bgx1_vLine, @function
bgx1_vLine:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 9 */
.L__stack_usage = 9
	std Y+3,r24
	movw r18,r28
	subi r18,lo8(-(3))
	sbci r19,hi8(-(3))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
	lds r24,bgx1
	ldi r22,lo8(23)
	call twi_rpc
.L334:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L334
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	bgx1_vLine, .-bgx1_vLine
	.section	.text.bgx1_hLine,"ax",@progbits
.global	bgx1_hLine
	.type	bgx1_hLine, @function
bgx1_hLine:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 9 */
.L__stack_usage = 9
	std Y+3,r24
	movw r18,r28
	subi r18,lo8(-(3))
	sbci r19,hi8(-(3))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
	lds r24,bgx1
	ldi r22,lo8(22)
	call twi_rpc
.L337:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L337
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	bgx1_hLine, .-bgx1_hLine
	.section	.text.bgx1_textWidth_base,"ax",@progbits
.global	bgx1_textWidth_base
	.type	bgx1_textWidth_base, @function
bgx1_textWidth_base:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r18,r24
	movw r20,r22
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
	lds r24,bgx1
	ldi r22,lo8(20)
	call twi_rpc
.L340:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L340
	ldd r24,Y+1
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	bgx1_textWidth_base, .-bgx1_textWidth_base
	.section	.text.bgx1_print_base,"ax",@progbits
.global	bgx1_print_base
	.type	bgx1_print_base, @function
bgx1_print_base:
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
/* stack size = 8 */
.L__stack_usage = 8
	movw r18,r24
	movw r20,r22
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
	lds r24,bgx1
	ldi r22,lo8(19)
	call twi_rpc
.L343:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L343
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	bgx1_print_base, .-bgx1_print_base
	.section	.text.bgx1_getStatus,"ax",@progbits
.global	bgx1_getStatus
	.type	bgx1_getStatus, @function
bgx1_getStatus:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
	lds r24,bgx1
	ldi r22,lo8(2)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r20,r18
	call twi_rpc
.L346:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L346
	ldd r24,Y+1
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	bgx1_getStatus, .-bgx1_getStatus
	.section	.text.bgx1_getVersion_base,"ax",@progbits
.global	bgx1_getVersion_base
	.type	bgx1_getVersion_base, @function
bgx1_getVersion_base:
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
/* stack size = 8 */
.L__stack_usage = 8
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
	lds r24,bgx1
	ldi r22,lo8(1)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r20,r18
	call twi_rpc
.L349:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L349
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	bgx1_getVersion_base, .-bgx1_getVersion_base
	.section	.text.tankIO_wait,"ax",@progbits
.global	tankIO_wait
	.type	tankIO_wait, @function
tankIO_wait:
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
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 17 */
.L__stack_usage = 17
	movw r4,r28
	sec
	adc r4,__zero_reg__
	adc r5,__zero_reg__
.L353:
	clr r6
	clr r7
	clr r8
	clr r9
	movw r10,r4
	ldi r22,lo8(1)
	mov r12,r22
	mov r13,__zero_reg__
	lds r24,tank_IO
	ldi r22,lo8(-95)
	movw r20,r8
	movw r18,r6
	movw r16,r12
	movw r14,r10
	call twi_rpc
.L352:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,twi_running
	lds r25,twi_running+1
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	tst r24
	brne .L352
	 ldi r24,lo8(79999)
    ldi r25,hi8(79999)
    ldi r26,hlo8(79999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	rjmp .L353
	.size	tankIO_wait, .-tankIO_wait
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
.global	PortA
	.data
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
.global	LeftMotorBase
	.type	LeftMotorBase, @object
	.size	LeftMotorBase, 2
LeftMotorBase:
	.word	LeftMotorBase_
.global	RightMotorBase
	.type	RightMotorBase, @object
	.size	RightMotorBase, 2
RightMotorBase:
	.word	RightMotorBase_
.global	LeftMotor
	.type	LeftMotor, @object
	.size	LeftMotor, 2
LeftMotor:
	.word	LeftMotor_
.global	RightMotor
	.type	RightMotor, @object
	.size	RightMotor, 2
RightMotor:
	.word	RightMotor_
.global	bgx1
	.type	bgx1, @object
	.size	bgx1, 1
bgx1:
	.byte	22
.global	tank_IO
	.type	tank_IO, @object
	.size	tank_IO, 1
tank_IO:
	.byte	44
.global	motor_A_running
.global	motor_A_running
	.section .bss
	.type	motor_A_running, @object
	.size	motor_A_running, 2
motor_A_running:
	.skip 2,0
.global	motor_B_running
.global	motor_B_running
	.type	motor_B_running, @object
	.size	motor_B_running, 2
motor_B_running:
	.skip 2,0
.global	TWIBroadcast
.global	TWIBroadcast
	.type	TWIBroadcast, @object
	.size	TWIBroadcast, 1
TWIBroadcast:
	.skip 1,0
.global	sendBuffer
	.data
	.type	sendBuffer, @object
	.size	sendBuffer, 4
sendBuffer:
	.word	sendBufferData
	.word	255
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
	.comm LeftMotorBase_,11,1
	.comm RightMotorBase_,11,1
	.comm LeftMotor_,16,1
	.comm RightMotor_,16,1
	.comm twi_running,2,1
	.comm twi_error,2,1
	.comm twi_address,1,1
	.comm alreadyHandled,2,1
	.comm twi_buffer,4,1
	.comm furtherOperations,21,1
	.comm nextTwiOperation,2,1
	.comm sendBufferData,255,1
	.type	C.33.4111, @object
	.size	C.33.4111, 7
C.33.4111:
	.byte	4
	.word	144
	.word	145
	.word	113
	.type	C.32.4110, @object
	.size	C.32.4110, 7
C.32.4110:
	.byte	2
	.word	176
	.word	177
	.word	112
	.type	C.31.4109, @object
	.size	C.31.4109, 7
C.31.4109:
	.byte	4
	.word	128
	.word	129
	.word	111
	.type	C.30.4108, @object
	.size	C.30.4108, 7
C.30.4108:
	.byte	0
	.word	68
	.word	69
	.word	110
	.type	C.37.4115, @object
	.size	C.37.4115, 6
C.37.4115:
	.word	43
	.word	41
	.word	42
	.type	C.36.4114, @object
	.size	C.36.4114, 6
C.36.4114:
	.word	40
	.word	38
	.word	39
	.type	C.35.4113, @object
	.size	C.35.4113, 6
C.35.4113:
	.word	37
	.word	35
	.word	36
	.type	C.34.4112, @object
	.size	C.34.4112, 6
C.34.4112:
	.word	34
	.word	32
	.word	33
.global __do_copy_data
.global __do_clear_bss
