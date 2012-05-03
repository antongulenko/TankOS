	.file	"Main.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.aa,"ax",@progbits
.global	aa
	.type	aa, @function
aa:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	lds r24,a
	lds r25,a+1
	add r24,r28
	adc r25,r29
	sts a+1,r25
	sts a,r24
	call main
	lds r18,a
	lds r19,a+1
	add r18,r28
	adc r19,r29
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	aa, .-aa
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,a
	lds r25,a+1
	call aa
	ldi r24,lo8(0)
	ldi r25,hi8(0)
/* epilogue start */
	ret
	.size	main, .-main
.global	a
	.data
	.type	a, @object
	.size	a, 2
a:
	.word	1
.global __do_copy_data
