	.file	"twi_raw.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.twiSend,"ax",@progbits
.global	twiSend
	.type	twiSend, @function
twiSend:
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 7 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r30,r28
	adiw r30,1
	ldi r25,lo8(7)
	movw r26,r30
	st X+,__zero_reg__
        dec r25
	brne .-6
	std Y+1,r20
	std Y+2,r21
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	ldi r26,lo8(furtherOperations)
	ldi r27,hi8(furtherOperations)
	ldi r24,lo8(7)
.L2:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L2
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	sts furtherOperations+5+1,r25
	sts furtherOperations+5,r24
	sts furtherOperations+12+1,__zero_reg__
	sts furtherOperations+12,__zero_reg__
	sts furtherOperations+19+1,__zero_reg__
	sts furtherOperations+19,__zero_reg__
	call twi_start_master_operation
/* epilogue start */
	adiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r28
	pop r29
	ret
	.size	twiSend, .-twiSend
	.section	.text.twiReceive,"ax",@progbits
.global	twiReceive
	.type	twiReceive, @function
twiReceive:
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 7 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r30,r28
	adiw r30,1
	ldi r25,lo8(7)
	movw r26,r30
	st X+,__zero_reg__
        dec r25
	brne .-6
	std Y+1,r20
	std Y+2,r21
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	ldi r26,lo8(furtherOperations)
	ldi r27,hi8(furtherOperations)
	ldi r24,lo8(7)
.L6:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L6
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts furtherOperations+5+1,r25
	sts furtherOperations+5,r24
	sts furtherOperations+12+1,__zero_reg__
	sts furtherOperations+12,__zero_reg__
	sts furtherOperations+19+1,__zero_reg__
	sts furtherOperations+19,__zero_reg__
	call twi_start_master_operation
/* epilogue start */
	adiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r28
	pop r29
	ret
	.size	twiReceive, .-twiReceive
	.section	.text.twiSendReceive,"ax",@progbits
.global	twiSendReceive
	.type	twiSendReceive, @function
twiSendReceive:
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 14 */
/* stack size = 18 */
.L__stack_usage = 18
	movw r30,r28
	adiw r30,1
	ldi r25,lo8(14)
	movw r26,r30
	st X+,__zero_reg__
        dec r25
	brne .-6
	std Y+1,r20
	std Y+2,r21
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	std Y+8,r16
	std Y+9,r17
	std Y+10,r18
	std Y+11,r19
	std Y+12,r24
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	std Y+7,r25
	std Y+6,r24
	ldi r26,lo8(furtherOperations)
	ldi r27,hi8(furtherOperations)
	ldi r24,lo8(7)
.L9:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L9
	ldi r26,lo8(furtherOperations+7)
	ldi r27,hi8(furtherOperations+7)
	movw r30,r28
	adiw r30,8
	ldi r24,lo8(7)
.L10:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L10
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts furtherOperations+12+1,r25
	sts furtherOperations+12,r24
	sts furtherOperations+19+1,__zero_reg__
	sts furtherOperations+19,__zero_reg__
	call twi_start_master_operation
/* epilogue start */
	adiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r28
	pop r29
	pop r17
	pop r16
	ret
	.size	twiSendReceive, .-twiSendReceive
	.section	.text.twiMultipleOperations,"ax",@progbits
.global	twiMultipleOperations
	.type	twiMultipleOperations, @function
twiMultipleOperations:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	brge .L21
	ldi r26,lo8(furtherOperations)
	ldi r27,hi8(furtherOperations)
	movw r30,r22
	ldi r18,lo8(7)
.L15:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L15
	cpi r24,2
	cpc r25,__zero_reg__
	brlt .L22
	ldi r26,lo8(furtherOperations+7)
	ldi r27,hi8(furtherOperations+7)
	movw r30,r22
	adiw r30,7
	ldi r18,lo8(7)
.L17:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L17
	cpi r24,3
	cpc r25,__zero_reg__
	brlt .L23
	ldi r26,lo8(furtherOperations+14)
	ldi r27,hi8(furtherOperations+14)
	movw r30,r22
	adiw r30,14
	ldi r24,lo8(7)
.L18:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L18
	call twi_start_master_operation
/* epilogue start */
	ret
.L21:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
.L14:
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	sub r30,r24
	sbc r31,r25
	subi r30,lo8(-(furtherOperations+5))
	sbci r31,hi8(-(furtherOperations+5))
.L20:
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	adiw r24,1
	adiw r30,7
	cpi r24,3
	cpc r25,__zero_reg__
	brlt .L20
	call twi_start_master_operation
/* epilogue start */
	ret
.L22:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	rjmp .L14
.L23:
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	rjmp .L14
	.size	twiMultipleOperations, .-twiMultipleOperations
.global	TWIBroadcast
.global	TWIBroadcast
	.section .bss
	.type	TWIBroadcast, @object
	.size	TWIBroadcast, 1
TWIBroadcast:
	.skip 1,0
.global __do_clear_bss
