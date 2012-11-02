	.file	"button.c"
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
	ld r18,Y
	sbrs r18,0
	rjmp .L2
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	sbiw r24,0
	breq .L3
	ldi r18,lo8(0)
	ldi r19,hi8(0)
.L3:
	movw r24,r18
.L2:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	buttonStatus, .-buttonStatus
