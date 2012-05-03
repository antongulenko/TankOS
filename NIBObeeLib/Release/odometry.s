	.file	"odometry.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.odometry_init,"ax",@progbits
.global	odometry_init
	.type	odometry_init, @function
odometry_init:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r30,lo8(105)
	ldi r31,hi8(105)
	ld r24,Z
	ori r24,lo8(15)
	st Z,r24
	in r24,61-32
	ori r24,lo8(3)
	out 61-32,r24
	sbi 43-32,6
	cbi 43-32,7
/* epilogue start */
	ret
	.size	odometry_init, .-odometry_init
	.section	.text.odometry_reset,"ax",@progbits
.global	odometry_reset
	.type	odometry_reset, @function
odometry_reset:
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
	sts odometry_left+1,__zero_reg__
	sts odometry_left,__zero_reg__
	sts odometry_right+1,__zero_reg__
	sts odometry_right,__zero_reg__
	out __SREG__,r24
/* epilogue start */
	ret
	.size	odometry_reset, .-odometry_reset
	.section	.text.odometry_getLeft,"ax",@progbits
.global	odometry_getLeft
	.type	odometry_getLeft, @function
odometry_getLeft:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r25,__SREG__
/* #APP */
 ;  50 "c:\program files (x86)\atmel\avr studio 5.0\avr toolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r18,odometry_left
	lds r19,odometry_left+1
	tst r24
	breq .L4
	sts odometry_left+1,__zero_reg__
	sts odometry_left,__zero_reg__
.L4:
	out __SREG__,r25
	movw r24,r18
/* epilogue start */
	ret
	.size	odometry_getLeft, .-odometry_getLeft
	.section	.text.odometry_getRight,"ax",@progbits
.global	odometry_getRight
	.type	odometry_getRight, @function
odometry_getRight:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r25,__SREG__
/* #APP */
 ;  50 "c:\program files (x86)\atmel\avr studio 5.0\avr toolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r18,odometry_right
	lds r19,odometry_right+1
	tst r24
	breq .L7
	sts odometry_right+1,__zero_reg__
	sts odometry_right,__zero_reg__
.L7:
	out __SREG__,r25
	movw r24,r18
/* epilogue start */
	ret
	.size	odometry_getRight, .-odometry_getRight
	.section	.text.__vector_1,"ax",@progbits
.global	__vector_1
	.type	__vector_1, @function
__vector_1:
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
	sbic 43-32,6
	rjmp .L11
	lds r24,odometry_pid_left
	subi r24,lo8(-(-1))
	sts odometry_pid_left,r24
	lds r24,odometry_left
	lds r25,odometry_left+1
	sbiw r24,1
	sts odometry_left+1,r25
	sts odometry_left,r24
/* epilogue start */
	pop r25
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
.L11:
	lds r24,odometry_pid_left
	subi r24,lo8(-(1))
	sts odometry_pid_left,r24
	lds r24,odometry_left
	lds r25,odometry_left+1
	adiw r24,1
	sts odometry_left+1,r25
	sts odometry_left,r24
/* epilogue start */
	pop r25
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_1, .-__vector_1
	.section	.text.__vector_2,"ax",@progbits
.global	__vector_2
	.type	__vector_2, @function
__vector_2:
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
	sbic 43-32,7
	rjmp .L15
	lds r24,odometry_pid_right
	subi r24,lo8(-(1))
	sts odometry_pid_right,r24
	lds r24,odometry_right
	lds r25,odometry_right+1
	adiw r24,1
	sts odometry_right+1,r25
	sts odometry_right,r24
/* epilogue start */
	pop r25
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
.L15:
	lds r24,odometry_pid_right
	subi r24,lo8(-(-1))
	sts odometry_pid_right,r24
	lds r24,odometry_right
	lds r25,odometry_right+1
	sbiw r24,1
	sts odometry_right+1,r25
	sts odometry_right,r24
/* epilogue start */
	pop r25
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_2, .-__vector_2
	.comm odometry_pid_left,1,1
	.comm odometry_pid_right,1,1
	.comm odometry_left,2,1
	.comm odometry_right,2,1
.global __do_clear_bss
