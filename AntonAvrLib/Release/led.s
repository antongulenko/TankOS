	.file	"led.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.enableLed,"ax",@progbits
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
	.section	.text.disableLed,"ax",@progbits
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
	.section	.text.setLed,"ax",@progbits
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
	.section	.text.setLeds,"ax",@progbits
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
	movw r10,r24
	movw r12,r22
	movw r26,r24
	adiw r26,2
	ld r18,X
	sbiw r26,2
	ldi r19,lo8(0)
	movw r16,r18
	subi r16,lo8(-(-1))
	sbci r17,hi8(-(-1))
	ldi r27,hi8(-1)
	cpi r16,lo8(-1)
	cpc r17,r27
	breq .L4
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
	movw r14,r16
	lsl r14
	rol r15
.L6:
	movw r26,r10
	ld r30,X+
	ld r31,X
	add r30,r14
	adc r31,r15
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
	subi r16,lo8(-(-1))
	sbci r17,hi8(-(-1))
	ldi r30,lo8(-2)
	ldi r31,hi8(-2)
	add r14,r30
	adc r15,r31
	ldi r31,hi8(-1)
	cpi r16,lo8(-1)
	cpc r17,r31
	brne .L6
.L4:
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
	.section	.text.enableLeds,"ax",@progbits
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
	movw r16,r24
	movw r26,r24
	adiw r26,2
	ld r14,X
	sbiw r26,2
	clr r15
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L9
	ldi r28,lo8(0)
	ldi r29,hi8(0)
.L11:
	movw r24,r28
	lsl r24
	rol r25
	movw r26,r16
	ld r30,X+
	ld r31,X
	add r30,r24
	adc r31,r25
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call writePin
	adiw r28,1
	cp r28,r14
	cpc r29,r15
	brlt .L11
.L9:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	enableLeds, .-enableLeds
	.section	.text.disableLeds,"ax",@progbits
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
	movw r16,r24
	movw r26,r24
	adiw r26,2
	ld r14,X
	sbiw r26,2
	clr r15
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L13
	ldi r28,lo8(0)
	ldi r29,hi8(0)
.L15:
	movw r24,r28
	lsl r24
	rol r25
	movw r26,r16
	ld r30,X+
	ld r31,X
	add r30,r24
	adc r31,r25
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call writePin
	adiw r28,1
	cp r28,r14
	cpc r29,r15
	brlt .L15
.L13:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	disableLeds, .-disableLeds
	.section	.text.blinkLeds,"ax",@progbits
.global	blinkLeds
	.type	blinkLeds, @function
blinkLeds:
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
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
/* stack size = 16 */
.L__stack_usage = 16
	movw r12,r24
	movw r10,r22
	mov r8,r20
	tst r20
	brne .+2
	rjmp .L17
	clr r9
	ldi r30,lo8(16)
	mov r6,r30
	mov r7,__zero_reg__
	ldi r23,lo8(1)
	mov r4,r23
	mov r5,__zero_reg__
.L23:
	movw r26,r12
	adiw r26,2
	ld r16,X
	sbiw r26,2
	mov r24,r16
	ldi r25,lo8(0)
	movw r28,r24
	sbiw r28,1
	ldi r27,hi8(-1)
	cpi r28,lo8(-1)
	cpc r29,r27
	breq .L19
	movw r16,r6
	sub r16,r24
	sbc r17,r25
	movw r30,r4
	rjmp 2f
1:	lsl r30
	rol r31
2:	dec r16
	brpl 1b
	movw r16,r30
	movw r14,r28
	lsl r14
	rol r15
.L20:
	movw r26,r12
	ld r30,X+
	ld r31,X
	add r30,r14
	adc r31,r15
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r22,r16
	and r22,r10
	and r23,r11
	ld r24,Z
	ldd r25,Z+1
	call writePin
	lsl r16
	rol r17
	sbiw r28,1
	ldi r30,lo8(-2)
	ldi r31,hi8(-2)
	add r14,r30
	adc r15,r31
	ldi r31,hi8(-1)
	cpi r28,lo8(-1)
	cpc r29,r31
	brne .L20
	movw r26,r12
	adiw r26,2
	ld r16,X
	sbiw r26,2
.L19:
	 ldi r24,lo8(799999)
    ldi r25,hi8(799999)
    ldi r26,hlo8(799999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r17,lo8(0)
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L21
	ldi r28,lo8(0)
	ldi r29,hi8(0)
.L22:
	movw r24,r28
	lsl r24
	rol r25
	movw r26,r12
	ld r30,X+
	ld r31,X
	add r30,r24
	adc r31,r25
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call writePin
	adiw r28,1
	cp r28,r16
	cpc r29,r17
	brlt .L22
.L21:
	 ldi r24,lo8(799999)
    ldi r25,hi8(799999)
    ldi r26,hlo8(799999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	inc r9
	cp r9,r8
	brsh .+2
	rjmp .L23
.L17:
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
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	blinkLeds, .-blinkLeds
	.section	.text.blinkAllLeds,"ax",@progbits
.global	blinkAllLeds
	.type	blinkAllLeds, @function
blinkAllLeds:
	push r6
	push r7
	push r8
	push r9
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
/* stack size = 14 */
.L__stack_usage = 14
	movw r12,r24
	mov r10,r22
	tst r22
	brne .+2
	rjmp .L27
	clr r11
	ldi r16,lo8(16)
	mov r8,r16
	mov r9,__zero_reg__
	ldi r17,lo8(1)
	mov r6,r17
	mov r7,__zero_reg__
.L33:
	movw r26,r12
	adiw r26,2
	ld r16,X
	sbiw r26,2
	mov r24,r16
	ldi r25,lo8(0)
	movw r28,r24
	sbiw r28,1
	ldi r27,hi8(-1)
	cpi r28,lo8(-1)
	cpc r29,r27
	breq .L29
	movw r16,r8
	sub r16,r24
	sbc r17,r25
	movw r30,r6
	rjmp 2f
1:	lsl r30
	rol r31
2:	dec r16
	brpl 1b
	movw r16,r30
	movw r14,r28
	lsl r14
	rol r15
.L30:
	movw r26,r12
	ld r30,X+
	ld r31,X
	add r30,r14
	adc r31,r15
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r24,Z
	ldd r25,Z+1
	movw r22,r16
	call writePin
	lsl r16
	rol r17
	sbiw r28,1
	ldi r30,lo8(-2)
	ldi r31,hi8(-2)
	add r14,r30
	adc r15,r31
	ldi r31,hi8(-1)
	cpi r28,lo8(-1)
	cpc r29,r31
	brne .L30
	movw r26,r12
	adiw r26,2
	ld r16,X
	sbiw r26,2
.L29:
	 ldi r24,lo8(799999)
    ldi r25,hi8(799999)
    ldi r26,hlo8(799999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r17,lo8(0)
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L31
	ldi r28,lo8(0)
	ldi r29,hi8(0)
.L32:
	movw r24,r28
	lsl r24
	rol r25
	movw r26,r12
	ld r30,X+
	ld r31,X
	add r30,r24
	adc r31,r25
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call writePin
	adiw r28,1
	cp r28,r16
	cpc r29,r17
	brlt .L32
.L31:
	 ldi r24,lo8(799999)
    ldi r25,hi8(799999)
    ldi r26,hlo8(799999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	inc r11
	cp r11,r10
	brsh .+2
	rjmp .L33
.L27:
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
	pop r9
	pop r8
	pop r7
	pop r6
	ret
	.size	blinkAllLeds, .-blinkAllLeds
	.section	.text.blinkLed,"ax",@progbits
.global	blinkLed
	.type	blinkLed, @function
blinkLed:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	mov r16,r22
	tst r22
	breq .L37
	ldi r17,lo8(0)
.L39:
	ld r24,Y
	ldd r25,Y+1
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call writePin
	 ldi r24,lo8(799999)
    ldi r25,hi8(799999)
    ldi r26,hlo8(799999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ld r24,Y
	ldd r25,Y+1
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call writePin
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
	cp r17,r16
	brlo .L39
.L37:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	blinkLed, .-blinkLed
	.section	.text.flashLed,"ax",@progbits
.global	flashLed
	.type	flashLed, @function
flashLed:
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
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call writePin
	sbiw r28,0
	breq .L42
.L44:
	 ldi r24,lo8(4999)
    ldi r25,hi8(4999)
    1:sbiw r24,1
    brne 1b
	rjmp .
	nop
	sbiw r28,1
	brne .L44
.L42:
	movw r30,r16
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call writePin
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	flashLed, .-flashLed
	.section	.text.flashLeds,"ax",@progbits
.global	flashLeds
	.type	flashLeds, @function
flashLeds:
	push r8
	push r9
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
/* stack size = 12 */
.L__stack_usage = 12
	movw r10,r24
	movw r8,r22
	movw r14,r20
	movw r26,r24
	adiw r26,2
	ld r24,X
	sbiw r26,2
	mov r18,r24
	ldi r19,lo8(0)
	movw r16,r18
	subi r16,lo8(-(-1))
	sbci r17,hi8(-(-1))
	ldi r27,hi8(-1)
	cpi r16,lo8(-1)
	cpc r17,r27
	breq .L57
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
	movw r12,r16
	lsl r12
	rol r13
.L48:
	movw r26,r10
	ld r30,X+
	ld r31,X
	add r30,r12
	adc r31,r13
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r22,r28
	and r22,r8
	and r23,r9
	ld r24,Z
	ldd r25,Z+1
	call writePin
	lsl r28
	rol r29
	subi r16,lo8(-(-1))
	sbci r17,hi8(-(-1))
	ldi r30,lo8(-2)
	ldi r31,hi8(-2)
	add r12,r30
	adc r13,r31
	ldi r31,hi8(-1)
	cpi r16,lo8(-1)
	cpc r17,r31
	brne .L48
	movw r26,r10
	adiw r26,2
	ld r24,X
	sbiw r26,2
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L58
.L53:
	 ldi r30,lo8(4999)
    ldi r31,hi8(4999)
    1:sbiw r30,1
    brne 1b
	rjmp .
	nop
	sec
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.L57:
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L53
.L58:
	mov r16,r24
	ldi r17,lo8(0)
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L46
	ldi r28,lo8(0)
	ldi r29,hi8(0)
.L52:
	movw r24,r28
	lsl r24
	rol r25
	movw r26,r10
	ld r30,X+
	ld r31,X
	add r30,r24
	adc r31,r25
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call writePin
	adiw r28,1
	cp r28,r16
	cpc r29,r17
	brlt .L52
.L46:
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
	pop r9
	pop r8
	ret
	.size	flashLeds, .-flashLeds
	.section	.text.flashAllLeds,"ax",@progbits
.global	flashAllLeds
	.type	flashAllLeds, @function
flashAllLeds:
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
	movw r10,r24
	movw r14,r22
	movw r26,r24
	adiw r26,2
	ld r16,X
	sbiw r26,2
	mov r18,r16
	ldi r19,lo8(0)
	movw r28,r18
	sbiw r28,1
	ldi r27,hi8(-1)
	cpi r28,lo8(-1)
	cpc r29,r27
	breq .L70
	ldi r24,lo8(16)
	ldi r25,hi8(16)
	sub r24,r18
	sbc r25,r19
	ldi r16,lo8(1)
	ldi r17,hi8(1)
	rjmp 2f
1:	lsl r16
	rol r17
2:	dec r24
	brpl 1b
	movw r12,r28
	lsl r12
	rol r13
.L61:
	movw r26,r10
	ld r30,X+
	ld r31,X
	add r30,r12
	adc r31,r13
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r24,Z
	ldd r25,Z+1
	movw r22,r16
	call writePin
	lsl r16
	rol r17
	sbiw r28,1
	ldi r30,lo8(-2)
	ldi r31,hi8(-2)
	add r12,r30
	adc r13,r31
	ldi r31,hi8(-1)
	cpi r28,lo8(-1)
	cpc r29,r31
	brne .L61
	movw r26,r10
	adiw r26,2
	ld r16,X
	sbiw r26,2
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L71
.L66:
	 ldi r30,lo8(4999)
    ldi r31,hi8(4999)
    1:sbiw r30,1
    brne 1b
	rjmp .
	nop
	sec
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.L70:
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L66
.L71:
	ldi r17,lo8(0)
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L59
	ldi r28,lo8(0)
	ldi r29,hi8(0)
.L65:
	movw r24,r28
	lsl r24
	rol r25
	movw r26,r10
	ld r30,X+
	ld r31,X
	add r30,r24
	adc r31,r25
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call writePin
	adiw r28,1
	cp r28,r16
	cpc r29,r17
	brlt .L65
.L59:
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
	.size	flashAllLeds, .-flashAllLeds
	.section	.text.blinkByte,"ax",@progbits
.global	blinkByte
	.type	blinkByte, @function
blinkByte:
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	push r9
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
/* stack size = 17 */
.L__stack_usage = 17
	movw r12,r24
	movw r6,r22
	mov r9,r20
	movw r26,r22
	adiw r26,2
	ld r20,X
	sbiw r26,2
	mov r18,r20
	ldi r19,lo8(0)
	movw r16,r18
	subi r16,lo8(-(-1))
	sbci r17,hi8(-(-1))
	ldi r27,hi8(-1)
	cpi r16,lo8(-1)
	cpc r17,r27
	breq .L73
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
	movw r14,r16
	lsl r14
	rol r15
.L74:
	movw r26,r6
	ld r30,X+
	ld r31,X
	add r30,r14
	adc r31,r15
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r24,Z
	ldd r25,Z+1
	movw r22,r28
	call writePin
	lsl r28
	rol r29
	subi r16,lo8(-(-1))
	sbci r17,hi8(-(-1))
	ldi r30,lo8(-2)
	ldi r31,hi8(-2)
	add r14,r30
	adc r15,r31
	ldi r31,hi8(-1)
	cpi r16,lo8(-1)
	cpc r17,r31
	brne .L74
	movw r26,r6
	adiw r26,2
	ld r20,X
	sbiw r26,2
.L73:
	ldi r24,lo8(1500)
	ldi r25,hi8(1500)
.L75:
	 ldi r30,lo8(4999)
    ldi r31,hi8(4999)
    1:sbiw r30,1
    brne 1b
	rjmp .
	nop
	sbiw r24,1
	brne .L75
	mov r16,r20
	ldi r17,lo8(0)
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L76
	ldi r28,lo8(0)
	ldi r29,hi8(0)
.L77:
	movw r24,r28
	lsl r24
	rol r25
	movw r26,r6
	ld r30,X+
	ld r31,X
	add r30,r24
	adc r31,r25
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call writePin
	adiw r28,1
	cp r28,r16
	cpc r29,r17
	brlt .L77
.L76:
	mov r11,r9
	clr r10
	ldi r26,lo8(3)
	mov r9,r26
	movw r30,r12
	ldd r18,Z+2
	ldi r31,lo8(16)
	mov r4,r31
	mov r5,__zero_reg__
	ldi r30,lo8(1)
	mov r2,r30
	mov r3,__zero_reg__
.L82:
	mov r24,r18
	ldi r25,lo8(0)
	movw r28,r24
	sbiw r28,1
	ldi r31,hi8(-1)
	cpi r28,lo8(-1)
	cpc r29,r31
	breq .L78
	movw r16,r4
	sub r16,r24
	sbc r17,r25
	movw r24,r2
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r16
	brpl 1b
	movw r16,r24
	movw r14,r28
	lsl r14
	rol r15
.L79:
	movw r26,r12
	ld r30,X+
	ld r31,X
	add r30,r14
	adc r31,r15
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r22,r16
	and r22,r10
	and r23,r11
	ld r24,Z
	ldd r25,Z+1
	call writePin
	lsl r16
	rol r17
	sbiw r28,1
	ldi r30,lo8(-2)
	ldi r31,hi8(-2)
	add r14,r30
	adc r15,r31
	ldi r31,hi8(-1)
	cpi r28,lo8(-1)
	cpc r29,r31
	brne .L79
	movw r26,r12
	adiw r26,2
	ld r18,X
	sbiw r26,2
.L78:
	 ldi r24,lo8(799999)
    ldi r25,hi8(799999)
    ldi r26,hlo8(799999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	mov r16,r18
	ldi r17,lo8(0)
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L80
	ldi r28,lo8(0)
	ldi r29,hi8(0)
.L81:
	movw r24,r28
	lsl r24
	rol r25
	movw r26,r12
	ld r30,X+
	ld r31,X
	add r30,r24
	adc r31,r25
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call writePin
	adiw r28,1
	cp r28,r16
	cpc r29,r17
	brlt .L81
	movw r30,r12
	ldd r18,Z+2
.L80:
	 ldi r24,lo8(799999)
    ldi r25,hi8(799999)
    ldi r26,hlo8(799999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	dec r9
	breq .+2
	rjmp .L82
	cpi r18,lo8(8)
	brlo .L106
.L72:
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
	pop r9
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
.L106:
	rjmp 2f
1:	lsl r10
	rol r11
2:	dec r18
	brpl 1b
	movw r26,r6
	adiw r26,2
	ld r20,X
	sbiw r26,2
	mov r18,r20
	ldi r19,lo8(0)
	movw r14,r18
	sec
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldi r27,lo8(-1)
	cp r14,r27
	ldi r27,hi8(-1)
	cpc r15,r27
	breq .L84
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
	movw r16,r14
	lsl r16
	rol r17
.L85:
	movw r26,r6
	ld r30,X+
	ld r31,X
	add r30,r16
	adc r31,r17
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r24,Z
	ldd r25,Z+1
	movw r22,r28
	call writePin
	lsl r28
	rol r29
	sec
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	subi r16,lo8(-(-2))
	sbci r17,hi8(-(-2))
	ldi r27,lo8(-1)
	cp r14,r27
	ldi r27,hi8(-1)
	cpc r15,r27
	brne .L85
	movw r30,r6
	ldd r20,Z+2
.L84:
	ldi r24,lo8(700)
	ldi r25,hi8(700)
.L86:
	 ldi r26,lo8(4999)
    ldi r27,hi8(4999)
    1:sbiw r26,1
    brne 1b
	rjmp .
	nop
	sbiw r24,1
	brne .L86
	mov r16,r20
	ldi r17,lo8(0)
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L87
	ldi r28,lo8(0)
	ldi r29,hi8(0)
.L88:
	movw r24,r28
	lsl r24
	rol r25
	movw r26,r6
	ld r30,X+
	ld r31,X
	add r30,r24
	adc r31,r25
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call writePin
	adiw r28,1
	cp r28,r16
	cpc r29,r17
	brlt .L88
.L87:
	ldi r26,lo8(3)
	mov r9,r26
	ldi r31,lo8(16)
	mov r6,r31
	mov r7,__zero_reg__
	ldi r30,lo8(1)
	mov r4,r30
	mov r5,__zero_reg__
.L93:
	movw r30,r12
	ldd r18,Z+2
	mov r24,r18
	ldi r25,lo8(0)
	movw r28,r24
	sbiw r28,1
	ldi r31,hi8(-1)
	cpi r28,lo8(-1)
	cpc r29,r31
	breq .L89
	movw r16,r6
	sub r16,r24
	sbc r17,r25
	movw r24,r4
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r16
	brpl 1b
	movw r16,r24
	movw r14,r28
	lsl r14
	rol r15
.L90:
	movw r26,r12
	ld r30,X+
	ld r31,X
	add r30,r14
	adc r31,r15
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r22,r16
	and r22,r10
	and r23,r11
	ld r24,Z
	ldd r25,Z+1
	call writePin
	lsl r16
	rol r17
	sbiw r28,1
	ldi r30,lo8(-2)
	ldi r31,hi8(-2)
	add r14,r30
	adc r15,r31
	ldi r31,hi8(-1)
	cpi r28,lo8(-1)
	cpc r29,r31
	brne .L90
	movw r26,r12
	adiw r26,2
	ld r18,X
	sbiw r26,2
.L89:
	 ldi r24,lo8(799999)
    ldi r25,hi8(799999)
    ldi r26,hlo8(799999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	mov r16,r18
	ldi r17,lo8(0)
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L91
	ldi r28,lo8(0)
	ldi r29,hi8(0)
.L92:
	movw r24,r28
	lsl r24
	rol r25
	movw r26,r12
	ld r30,X+
	ld r31,X
	add r30,r24
	adc r31,r25
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call writePin
	adiw r28,1
	cp r28,r16
	cpc r29,r17
	brlt .L92
.L91:
	 ldi r24,lo8(799999)
    ldi r25,hi8(799999)
    ldi r26,hlo8(799999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	dec r9
	breq .+2
	rjmp .L93
	rjmp .L72
	.size	blinkByte, .-blinkByte
