	.file	"led.c"
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
.global	enableLed
	.type	enableLed, @function
enableLed:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call writePin
/* epilogue start */
	ret
	.size	enableLed, .-enableLed
.global	disableLed
	.type	disableLed, @function
disableLed:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call writePin
/* epilogue start */
	ret
	.size	disableLed, .-disableLed
.global	setLed
	.type	setLed, @function
setLed:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	call writePin
/* epilogue start */
	ret
	.size	setLed, .-setLed
.global	setLeds
	.type	setLeds, @function
setLeds:
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r14,r24
	movw r12,r22
	movw r26,r24
	adiw r26,2
	ld r18,X
	sbiw r26,2
	ldi r19,lo8(0)
	ldi r24,lo8(16)
	ldi r25,hi8(16)
	sub r24,r18
	sbc r25,r19
	ldi r28,lo8(1)
	ldi r29,hi8(1)
	rjmp 2f
1:	lsl r28
	rol r29
2:	dec r24
	brpl 1b
	ldi r16,lo8(0)
	ldi r17,hi8(0)
	movw r10,r18
	rjmp .L5
.L6:
	lsl r24
	rol r25
	movw r26,r14
	ld r30,X+
	ld r31,X
	add r30,r24
	adc r31,r25
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r22,r28
	and r22,r12
	and r23,r13
	ld r24,Z
	ldd r25,Z+1
	call writePin
	lsl r28
	rol r29
.L5:
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
	movw r24,r10
	sub r24,r16
	sbc r25,r17
	ldi r27,hi8(-1)
	cpi r24,lo8(-1)
	cpc r25,r27
	brne .L6
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	setLeds, .-setLeds
.global	enableLeds
	.type	enableLeds, @function
enableLeds:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r14,r24
	movw r26,r24
	adiw r26,2
	ld r28,X
	sbiw r26,2
	ldi r29,lo8(0)
	ldi r16,lo8(0)
	ldi r17,hi8(0)
	rjmp .L8
.L9:
	movw r24,r16
	lsl r24
	rol r25
	movw r26,r14
	ld r30,X+
	ld r31,X
	add r30,r24
	adc r31,r25
	ld r24,Z
	ldd r25,Z+1
	call enableLed
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
.L8:
	cp r16,r28
	cpc r17,r29
	brlt .L9
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	enableLeds, .-enableLeds
.global	disableLeds
	.type	disableLeds, @function
disableLeds:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r14,r24
	movw r26,r24
	adiw r26,2
	ld r28,X
	sbiw r26,2
	ldi r29,lo8(0)
	ldi r16,lo8(0)
	ldi r17,hi8(0)
	rjmp .L11
.L12:
	movw r24,r16
	lsl r24
	rol r25
	movw r26,r14
	ld r30,X+
	ld r31,X
	add r30,r24
	adc r31,r25
	ld r24,Z
	ldd r25,Z+1
	call disableLed
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
.L11:
	cp r16,r28
	cpc r17,r29
	brlt .L12
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	disableLeds, .-disableLeds
.global	blinkLeds
	.type	blinkLeds, @function
blinkLeds:
	push r12
	push r13
	push r15
	push r16
	push r17
	push r28
	push r29
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r12,r24
	movw r16,r22
	clr r15
	rjmp .L14
.L15:
	movw r24,r12
	movw r22,r16
	std Y+1,r20
	call setLeds
	 ldi r24,lo8(799999)
    ldi r25,hi8(799999)
    ldi r26,hlo8(799999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	movw r24,r12
	call disableLeds
	 ldi r24,lo8(799999)
    ldi r25,hi8(799999)
    ldi r26,hlo8(799999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	inc r15
	ldd r20,Y+1
.L14:
	cp r15,r20
	brne .L15
/* epilogue start */
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r13
	pop r12
	ret
	.size	blinkLeds, .-blinkLeds
.global	blinkAllLeds
	.type	blinkAllLeds, @function
blinkAllLeds:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r20,r22
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	call blinkLeds
/* epilogue start */
	ret
	.size	blinkAllLeds, .-blinkAllLeds
.global	blinkLed
	.type	blinkLed, @function
blinkLed:
	push r14
	push r15
	push r17
	push r28
	push r29
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r14,r24
	ldi r17,lo8(0)
	rjmp .L18
.L19:
	movw r24,r14
	std Y+1,r22
	call enableLed
	 ldi r24,lo8(799999)
    ldi r25,hi8(799999)
    ldi r26,hlo8(799999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	movw r24,r14
	call disableLed
	 ldi r24,lo8(799999)
    ldi r25,hi8(799999)
    ldi r26,hlo8(799999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	subi r17,lo8(-(1))
	ldd r22,Y+1
.L18:
	cp r17,r22
	brne .L19
/* epilogue start */
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	ret
	.size	blinkLed, .-blinkLed
.global	flashLed
	.type	flashLed, @function
flashLed:
	push r16
	push r17
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r16,r24
	std Y+1,r22
	std Y+2,r23
	call enableLed
	ldd r22,Y+1
	mov r24,r22
	ldd r23,Y+2
	mov r25,r23
	rjmp .L21
.L22:
	 ldi r30,lo8(4999)
    ldi r31,hi8(4999)
    1:sbiw r30,1
    brne 1b
	rjmp .
	nop
	sbiw r24,1
.L21:
	sbiw r24,0
	brne .L22
	movw r24,r16
	call disableLed
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	flashLed, .-flashLed
.global	flashLeds
	.type	flashLeds, @function
flashLeds:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r16,r24
	movw r28,r20
	call setLeds
	rjmp .L24
.L25:
	 ldi r24,lo8(4999)
    ldi r25,hi8(4999)
    1:sbiw r24,1
    brne 1b
	rjmp .
	nop
	sbiw r28,1
.L24:
	sbiw r28,0
	brne .L25
	movw r24,r16
	call disableLeds
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	flashLeds, .-flashLeds
.global	flashAllLeds
	.type	flashAllLeds, @function
flashAllLeds:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r20,r22
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	call flashLeds
/* epilogue start */
	ret
	.size	flashAllLeds, .-flashAllLeds
.global	blinkByte
	.type	blinkByte, @function
blinkByte:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r14,r24
	movw r12,r22
	movw r24,r22
	ldi r22,lo8(1500)
	ldi r23,hi8(1500)
	std Y+1,r20
	call flashAllLeds
	ldd r20,Y+1
	mov r17,r20
	ldi r16,lo8(0)
	movw r24,r14
	movw r22,r16
	ldi r20,lo8(3)
	call blinkLeds
	movw r30,r14
	ldd r18,Z+2
	cpi r18,lo8(8)
	brsh .L27
	rjmp 2f
1:	lsl r16
	rol r17
2:	dec r18
	brpl 1b
	movw r24,r12
	ldi r22,lo8(700)
	ldi r23,hi8(700)
	call flashAllLeds
	movw r24,r14
	movw r22,r16
	ldi r20,lo8(3)
	call blinkLeds
.L27:
/* epilogue start */
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	blinkByte, .-blinkByte
