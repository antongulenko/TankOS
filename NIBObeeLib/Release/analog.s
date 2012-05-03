	.file	"analog.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.analog_init,"ax",@progbits
.global	analog_init
	.type	analog_init, @function
analog_init:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,nibobee_initialization
	ori r24,lo8(1)
	sts nibobee_initialization,r24
	ldi r24,lo8(-17)
	sts 122,r24
	sbi 36-32,4
/* epilogue start */
	ret
	.size	analog_init, .-analog_init
	.section	.text.analog_getValue,"ax",@progbits
.global	analog_getValue
	.type	analog_getValue, @function
analog_getValue:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r18,__SREG__
/* #APP */
 ;  50 "c:\program files (x86)\atmel\avr studio 5.0\avr toolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	mov r30,r24
	ldi r31,lo8(0)
	lsl r30
	rol r31
	subi r30,lo8(-(analog_samples))
	sbci r31,hi8(-(analog_samples))
	ld r24,Z
	ldd r25,Z+1
	out __SREG__,r18
/* epilogue start */
	ret
	.size	analog_getValue, .-analog_getValue
	.section	.text.analog_irq_hook,"ax",@progbits
	.weak	analog_irq_hook
	.type	analog_irq_hook, @function
analog_irq_hook:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	analog_irq_hook, .-analog_irq_hook
	.section	.text.__vector_24,"ax",@progbits
.global	__vector_24
	.type	__vector_24, @function
__vector_24:
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
	lds r18,analog_pos
	lds r24,120
	lds r25,120+1
	cpi r18,lo8(5)
	brne .+2
	rjmp .L11
	cpi r18,lo8(6)
	brlo .L39
	cpi r18,lo8(8)
	brne .+2
	rjmp .L14
	cpi r18,lo8(9)
	brlo .+2
	rjmp .L19
	cpi r18,lo8(6)
	brne .+2
	rjmp .L12
	cpi r18,lo8(7)
	brne .+2
	rjmp .L40
.L5:
	subi r18,lo8(-(1))
	sts analog_pos,r18
	cpi r18,lo8(11)
	brlo .L21
	sts analog_pos,__zero_reg__
.L22:
	ldi r24,lo8(65)
	sts 124,r24
	lds r24,analog_pos
.L36:
	tst r24
	brne .L4
	call analog_irq_hook
.L4:
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
.L39:
	cpi r18,lo8(2)
	brne .+2
	rjmp .L8
	cpi r18,lo8(3)
	brlo .L41
	cpi r18,lo8(3)
	brne .+2
	rjmp .L9
	cpi r18,lo8(4)
	brne .L5
	sts analog_samples+10+1,r25
	sts analog_samples+10,r24
.L20:
	subi r18,lo8(-(1))
	sts analog_pos,r18
.L21:
	cpi r18,lo8(5)
	brne .+2
	rjmp .L31
	cpi r18,lo8(6)
	brsh .L33
	cpi r18,lo8(2)
	brne .+2
	rjmp .L24
	cpi r18,lo8(3)
	brsh .L34
	cpi r18,lo8(1)
	brne .L22
	ldi r24,lo8(66)
	sts 124,r24
	lds r24,analog_pos
	rjmp .L36
.L19:
	cpi r18,lo8(9)
	brne .+2
	rjmp .L15
	cpi r18,lo8(10)
	breq .+2
	rjmp .L5
	sts analog_samples+20+1,r25
	sts analog_samples+20,r24
	sbi 37-32,4
	rjmp .L5
.L41:
	tst r18
	brne .+2
	rjmp .L6
	cpi r18,lo8(1)
	breq .+2
	rjmp .L5
	sts analog_samples+2+1,r25
	sts analog_samples+2,r24
	rjmp .L20
.L33:
	cpi r18,lo8(8)
	breq .L30
	cpi r18,lo8(9)
	brsh .L35
	cpi r18,lo8(6)
	breq .L28
	cpi r18,lo8(7)
	breq .+2
	rjmp .L22
.L29:
	ldi r24,lo8(69)
	sts 124,r24
	lds r24,analog_pos
	rjmp .L36
.L28:
	ldi r24,lo8(94)
	sts 124,r24
	lds r24,analog_pos
	rjmp .L36
.L34:
	cpi r18,lo8(3)
	breq .L29
	cpi r18,lo8(4)
	breq .+2
	rjmp .L22
.L30:
	ldi r24,lo8(70)
	sts 124,r24
	lds r24,analog_pos
	rjmp .L36
.L35:
	cpi r18,lo8(9)
	brne .L42
.L31:
	ldi r24,lo8(71)
	sts 124,r24
	lds r24,analog_pos
	rjmp .L36
.L24:
	ldi r24,lo8(67)
	sts 124,r24
	lds r24,analog_pos
	rjmp .L36
.L9:
	sts analog_samples+6+1,r25
	sts analog_samples+6,r24
	rjmp .L20
.L14:
	sts analog_samples+16+1,r25
	sts analog_samples+16,r24
	rjmp .L20
.L40:
	sts analog_samples+8+1,r25
	sts analog_samples+8,r24
	rjmp .L20
.L12:
	sts analog_samples+14+1,r25
	sts analog_samples+14,r24
	cbi 37-32,4
	rjmp .L5
.L6:
	sts analog_samples+1,r25
	sts analog_samples,r24
	rjmp .L20
.L15:
	sts analog_samples+18+1,r25
	sts analog_samples+18,r24
	rjmp .L20
.L8:
	sts analog_samples+4+1,r25
	sts analog_samples+4,r24
	rjmp .L20
.L11:
	sts analog_samples+12+1,r25
	sts analog_samples+12,r24
	rjmp .L20
.L42:
	cpi r18,lo8(10)
	breq .+2
	rjmp .L22
	ldi r24,lo8(64)
	sts 124,r24
	lds r24,analog_pos
	rjmp .L36
	.size	__vector_24, .-__vector_24
	.comm analog_samples,22,1
	.comm analog_pos,1,1
.global __do_clear_bss
