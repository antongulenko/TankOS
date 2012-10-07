	.file	"button.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.buttonStatus,"ax",@progbits
.global	buttonStatus
	.type	buttonStatus, @function
buttonStatus:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldd r24,Y+1
	ldd r25,Y+2
	call readPin
	movw r18,r24
	ld r24,Y
	sbrs r24,0
	rjmp .L2
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L5
.L3:
	movw r18,r24
.L2:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
.L5:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	rjmp .L3
	.size	buttonStatus, .-buttonStatus
