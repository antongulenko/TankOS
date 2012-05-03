	.file	"sens_ext.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.sens_init_ext,"ax",@progbits
.global	sens_init_ext
	.type	sens_init_ext, @function
sens_init_ext:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call sens_init
	ldi r30,lo8(109)
	ldi r31,hi8(109)
	ld r24,Z
	ori r24,lo8(-16)
	st Z,r24
	ldi r30,lo8(104)
	ldi r31,hi8(104)
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
/* epilogue start */
	ret
	.size	sens_init_ext, .-sens_init_ext
	.section	.text.__sensor_changed,"ax",@progbits
	.weak	__sensor_changed
	.type	__sensor_changed, @function
__sensor_changed:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	__sensor_changed, .-__sensor_changed
	.section	.text.__vector_6,"ax",@progbits
.global	__vector_6
	.type	__vector_6, @function
__vector_6:
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
	in r19,38-32
	in r24,38-32
	in r18,38-32
	in r25,38-32
	andi r24,lo8(32)
	andi r19,lo8(16)
	or r24,r19
	andi r18,lo8(64)
	or r24,r18
	andi r25,lo8(-128)
	or r24,r25
	call __sensor_changed
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
	.size	__vector_6, .-__vector_6
