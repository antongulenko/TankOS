	.file	"clock.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.init_clock,"ax",@progbits
.global	init_clock
	.type	init_clock, @function
init_clock:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts 144,__zero_reg__
	ldi r24,lo8(10)
	sts 145,r24
	sts 130,__zero_reg__
	in r24,__SREG__
/* #APP */
 ;  50 "c:\program files (x86)\atmel\avr studio 5.0\avr toolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldi r25,lo8(9)
	sts 153,r25
	ldi r25,lo8(-60)
	sts 152,r25
	out __SREG__,r24
	ldi r24,lo8(2)
	sts 113,r24
/* epilogue start */
	ret
	.size	init_clock, .-init_clock
	.section	.text.__vector_16,"ax",@progbits
.global	__vector_16
	.type	__vector_16, @function
__vector_16:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r24
	push r25
	push r26
	push r27
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
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
/* epilogue start */
	pop r27
	pop r26
	pop r25
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_16, .-__vector_16
.global	milliseconds_running
.global	milliseconds_running
	.section .bss
	.type	milliseconds_running, @object
	.size	milliseconds_running, 4
milliseconds_running:
	.skip 4,0
.global __do_clear_bss
