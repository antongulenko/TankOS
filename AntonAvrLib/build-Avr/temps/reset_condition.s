	.file	"reset_condition.c"
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
.global	resetStatusBitmask
	.type	resetStatusBitmask, @function
resetStatusBitmask:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call getResetStatus
	mov r18,r24
	sbrs r24,0
	rjmp .L6
	ldi r24,lo8(-32768)
	ldi r25,hi8(-32768)
	rjmp .L2
.L6:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
.L2:
	sbrc r18,3
	ori r25,hi8(16384)
.L3:
	sbrc r18,2
	ori r25,hi8(8192)
.L4:
	sbiw r24,0
	brne .L5
	ldi r24,lo8(4096)
	ldi r25,hi8(4096)
.L5:
	ret
	.size	resetStatusBitmask, .-resetStatusBitmask
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
	call resetStatusBitmask
	movw r22,r24
	movw r24,r28
	ldi r20,lo8(4)
	call blinkLeds
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	blink_reset_condition, .-blink_reset_condition
.global	blink_reset_condition_byte
	.type	blink_reset_condition_byte, @function
blink_reset_condition_byte:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r16,r24
	movw r28,r22
	call disableLeds
	movw r24,r28
	call disableLeds
	call getResetStatus
	mov r20,r24
	movw r24,r16
	movw r22,r28
	call blinkByte
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	blink_reset_condition_byte, .-blink_reset_condition_byte
