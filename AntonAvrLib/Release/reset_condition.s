	.file	"reset_condition.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.resetStatusBitmask,"ax",@progbits
.global	resetStatusBitmask
	.type	resetStatusBitmask, @function
resetStatusBitmask:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call getResetStatus
	sbrs r24,0
	rjmp .L6
	ldi r18,lo8(-24576)
	ldi r19,hi8(-24576)
	ldi r30,lo8(-8192)
	ldi r31,hi8(-8192)
	ldi r22,lo8(-16384)
	ldi r23,hi8(-16384)
	ldi r20,lo8(-32768)
	ldi r21,hi8(-32768)
.L2:
	sbrs r24,3
	rjmp .L3
	movw r18,r30
	movw r20,r22
.L3:
	sbrc r24,2
	rjmp .L5
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L9
	ldi r18,lo8(4096)
	ldi r19,hi8(4096)
.L5:
	movw r24,r18
/* epilogue start */
	ret
.L6:
	ldi r18,lo8(8192)
	ldi r19,hi8(8192)
	ldi r30,lo8(24576)
	ldi r31,hi8(24576)
	ldi r22,lo8(16384)
	ldi r23,hi8(16384)
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	rjmp .L2
.L9:
	movw r18,r20
	rjmp .L5
	.size	resetStatusBitmask, .-resetStatusBitmask
	.section	.text.blink_reset_condition,"ax",@progbits
.global	blink_reset_condition
	.type	blink_reset_condition, @function
blink_reset_condition:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	call disableLeds
	call getResetStatus
	sbrs r24,0
	rjmp .L15
	ldi r22,lo8(-24576)
	ldi r23,hi8(-24576)
	ldi r30,lo8(-8192)
	ldi r31,hi8(-8192)
	ldi r20,lo8(-16384)
	ldi r21,hi8(-16384)
	ldi r18,lo8(-32768)
	ldi r19,hi8(-32768)
.L11:
	sbrs r24,3
	rjmp .L12
	movw r22,r30
	movw r18,r20
.L12:
	sbrc r24,2
	rjmp .L14
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L17
	ldi r22,lo8(4096)
	ldi r23,hi8(4096)
.L14:
	movw r24,r28
	ldi r20,lo8(4)
	call blinkLeds
/* epilogue start */
	pop r29
	pop r28
	ret
.L15:
	ldi r22,lo8(8192)
	ldi r23,hi8(8192)
	ldi r30,lo8(24576)
	ldi r31,hi8(24576)
	ldi r20,lo8(16384)
	ldi r21,hi8(16384)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	rjmp .L11
.L17:
	movw r22,r18
	rjmp .L14
	.size	blink_reset_condition, .-blink_reset_condition
