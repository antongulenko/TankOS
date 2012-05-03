	.file	"motpwm.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.motpwm_init,"ax",@progbits
.global	motpwm_init
	.type	motpwm_init, @function
motpwm_init:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,nibobee_initialization
	ori r24,lo8(2)
	sts nibobee_initialization,r24
	in r24,43-32
	ori r24,lo8(-16)
	out 43-32,r24
	in r24,42-32
	ori r24,lo8(-16)
	out 42-32,r24
	ldi r24,lo8(-14)
	sts 128,r24
	ldi r24,lo8(1)
	sts 129,r24
	ldi r30,lo8(111)
	ldi r31,hi8(111)
	ld r24,Z
	st Z,r24
/* epilogue start */
	ret
	.size	motpwm_init, .-motpwm_init
	.section	.text.motpwm_stop,"ax",@progbits
.global	motpwm_stop
	.type	motpwm_stop, @function
motpwm_stop:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,__SREG__
/* #APP */
 ;  50 "c:\program files (x86)\atmel\avr studio 5.0\avr toolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	sts motpwm_motor_l+1,__zero_reg__
	sts motpwm_motor_l,__zero_reg__
	sts motpwm_motor_r+1,__zero_reg__
	sts motpwm_motor_r,__zero_reg__
	sts 136+1,__zero_reg__
	sts 136,__zero_reg__
	sts 138+1,__zero_reg__
	sts 138,__zero_reg__
	out __SREG__,r24
/* epilogue start */
	ret
	.size	motpwm_stop, .-motpwm_stop
	.section	.text.motpwm_setLeft,"ax",@progbits
.global	motpwm_setLeft
	.type	motpwm_setLeft, @function
motpwm_setLeft:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	sbrc r19,7
	rjmp .L15
.L4:
	movw r24,r18
	asr r25
	ror r24
	ldi r18,hi8(512)
	cpi r24,lo8(512)
	cpc r25,r18
	brge .L10
	ldi r18,hi8(-511)
	cpi r24,lo8(-511)
	cpc r25,r18
	brge .L16
	ldi r24,lo8(511)
	ldi r25,hi8(511)
.L6:
	sts motpwm_motor_l+1,r25
	sts motpwm_motor_l,r24
	sbis 43-32,6
	rjmp .L12
	lds r24,motpwm_flags
	andi r24,lo8(2)
	rjmp .L13
.L10:
	ldi r24,lo8(511)
	ldi r25,hi8(511)
.L5:
	sts motpwm_motor_l+1,r25
	sts motpwm_motor_l,r24
	sbic 43-32,6
	rjmp .L12
	lds r24,motpwm_flags
	ori r24,lo8(1)
.L13:
	sts motpwm_flags,r24
	sts 136+1,__zero_reg__
	sts 136,__zero_reg__
	lds r24,111
	ori r24,lo8(2)
	sts 111,r24
	ret
.L12:
	sts 136+1,r25
	sts 136,r24
	ret
.L15:
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	rjmp .L4
.L16:
	sbrs r25,7
	rjmp .L5
	com r25
	neg r24
	sbci r25,lo8(-1)
	rjmp .L6
	.size	motpwm_setLeft, .-motpwm_setLeft
	.section	.text.motpwm_setRight,"ax",@progbits
.global	motpwm_setRight
	.type	motpwm_setRight, @function
motpwm_setRight:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	sbrc r19,7
	rjmp .L27
.L18:
	movw r24,r18
	asr r25
	ror r24
	ldi r18,hi8(512)
	cpi r24,lo8(512)
	cpc r25,r18
	brge .L24
	ldi r18,hi8(-511)
	cpi r24,lo8(-511)
	cpc r25,r18
	brge .L28
	ldi r24,lo8(511)
	ldi r25,hi8(511)
.L20:
	sts motpwm_motor_r+1,r25
	sts motpwm_motor_r,r24
	sbic 43-32,7
	rjmp .L23
	lds r24,motpwm_flags
	ori r24,lo8(2)
.L26:
	sts motpwm_flags,r24
	sts 138+1,__zero_reg__
	sts 138,__zero_reg__
	lds r24,111
	ori r24,lo8(4)
	sts 111,r24
	ret
.L24:
	ldi r24,lo8(511)
	ldi r25,hi8(511)
.L19:
	sts motpwm_motor_r+1,r25
	sts motpwm_motor_r,r24
	sbic 43-32,7
	rjmp .L29
.L23:
	sts 138+1,r25
	sts 138,r24
	ret
.L27:
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	rjmp .L18
.L29:
	lds r24,motpwm_flags
	andi r24,lo8(1)
	rjmp .L26
.L28:
	sbrs r25,7
	rjmp .L19
	com r25
	neg r24
	sbci r25,lo8(-1)
	rjmp .L20
	.size	motpwm_setRight, .-motpwm_setRight
	.section	.text.__vector_13,"ax",@progbits
.global	__vector_13
	.type	__vector_13, @function
__vector_13:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r24
	push r25
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	sbis 41-32,5
	rjmp .L30
	in r24,43-32
	andi r24,lo8(-65)
	lds r25,motpwm_flags
	sbrc r25,0
	rjmp .L34
	ldi r25,lo8(0)
.L32:
	or r24,r25
	out 43-32,r24
	lds r24,motpwm_motor_l
	lds r25,motpwm_motor_l+1
	sts 136+1,r25
	sts 136,r24
	lds r24,111
	andi r24,lo8(-3)
	sts 111,r24
.L30:
/* epilogue start */
	pop r25
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
.L34:
	ldi r25,lo8(64)
	rjmp .L32
	.size	__vector_13, .-__vector_13
	.section	.text.__vector_14,"ax",@progbits
.global	__vector_14
	.type	__vector_14, @function
__vector_14:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r24
	push r25
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	sbis 41-32,4
	rjmp .L35
	in r24,43-32
	andi r24,lo8(127)
	lds r25,motpwm_flags
	sbrc r25,1
	rjmp .L39
	ldi r25,lo8(0)
.L37:
	or r24,r25
	out 43-32,r24
	lds r24,motpwm_motor_r
	lds r25,motpwm_motor_r+1
	sts 138+1,r25
	sts 138,r24
	lds r24,111
	andi r24,lo8(-5)
	sts 111,r24
.L35:
/* epilogue start */
	pop r25
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
.L39:
	ldi r25,lo8(-128)
	rjmp .L37
	.size	__vector_14, .-__vector_14
	.comm motpwm_motor_l,2,1
	.comm motpwm_motor_r,2,1
	.comm motpwm_flags,1,1
.global __do_clear_bss
