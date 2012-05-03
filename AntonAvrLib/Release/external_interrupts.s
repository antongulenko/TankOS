	.file	"external_interrupts.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.enablePinChangeInterrupt,"ax",@progbits
.global	enablePinChangeInterrupt
	.type	enablePinChangeInterrupt, @function
enablePinChangeInterrupt:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(32)
	brsh .L1
	mov r21,r24
	lsr r21
	lsr r21
	lsr r21
	mov r30,r21
	ldi r31,lo8(0)
	lsl r30
	rol r31
	subi r30,lo8(-(maskRegisters))
	sbci r31,hi8(-(maskRegisters))
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r20,Z
	andi r24,lo8(7)
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	movw r22,r18
	rjmp 2f
1:	lsl r22
	rol r23
2:	dec r24
	brpl 1b
	or r20,r22
	st Z,r20
	lds r24,104
	rjmp 2f
1:	lsl r18
	rol r19
2:	dec r21
	brpl 1b
	or r24,r18
	sts 104,r24
.L1:
	ret
	.size	enablePinChangeInterrupt, .-enablePinChangeInterrupt
	.section	.text.disblePinChangeInterrupt,"ax",@progbits
.global	disblePinChangeInterrupt
	.type	disblePinChangeInterrupt, @function
disblePinChangeInterrupt:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(32)
	brsh .L4
	mov r30,r24
	lsr r30
	lsr r30
	lsr r30
	ldi r31,lo8(0)
	lsl r30
	rol r31
	subi r30,lo8(-(maskRegisters))
	sbci r31,hi8(-(maskRegisters))
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r25,Z
	andi r24,lo8(7)
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	rjmp 2f
1:	lsl r18
	rol r19
2:	dec r24
	brpl 1b
	com r18
	and r18,r25
	st Z,r18
.L4:
	ret
	.size	disblePinChangeInterrupt, .-disblePinChangeInterrupt
.global	maskRegisters
	.data
	.type	maskRegisters, @object
	.size	maskRegisters, 8
maskRegisters:
	.word	107
	.word	108
	.word	109
	.word	115
.global __do_copy_data
