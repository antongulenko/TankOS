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
	movw r12,r24
	movw r14,r22
	movw r26,r24
	adiw r26,2
	ld r10,X
	sbiw r26,2
	clr r11
	cp r10,__zero_reg__
	cpc r11,__zero_reg__
	breq .L4
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	ldi r16,lo8(1)
	ldi r17,hi8(1)
.L6:
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
	movw r22,r16
	and r22,r14
	and r23,r15
	ld r24,Z
	ldd r25,Z+1
	call writePin
	lsl r16
	rol r17
	adiw r28,1
	cp r28,r10
	cpc r29,r11
	brlt .L6
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
	movw r14,r24
	movw r10,r22
	mov r8,r20
	tst r20
	brne .+2
	rjmp .L17
	clr r9
.L23:
	movw r26,r14
	adiw r26,2
	ld r16,X
	sbiw r26,2
	mov r12,r16
	clr r13
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L19
	ldi r16,lo8(1)
	ldi r17,hi8(1)
	ldi r28,lo8(0)
	ldi r29,hi8(0)
.L20:
	movw r24,r28
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
	movw r22,r16
	and r22,r10
	and r23,r11
	ld r24,Z
	ldd r25,Z+1
	call writePin
	lsl r16
	rol r17
	adiw r28,1
	cp r28,r12
	cpc r29,r13
	brlt .L20
	movw r30,r14
	ldd r16,Z+2
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
	movw r26,r14
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
	ret
	.size	blinkLeds, .-blinkLeds
	.section	.text.blinkAllLeds,"ax",@progbits
.global	blinkAllLeds
	.type	blinkAllLeds, @function
blinkAllLeds:
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
	mov r10,r22
	tst r22
	brne .+2
	rjmp .L27
	clr r11
.L33:
	movw r26,r14
	adiw r26,2
	ld r16,X
	sbiw r26,2
	mov r12,r16
	clr r13
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L29
	ldi r16,lo8(1)
	ldi r17,hi8(1)
	ldi r28,lo8(0)
	ldi r29,hi8(0)
.L30:
	movw r24,r28
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
	ld r24,Z
	ldd r25,Z+1
	movw r22,r16
	call writePin
	lsl r16
	rol r17
	adiw r28,1
	cp r28,r12
	cpc r29,r13
	brlt .L30
	movw r30,r14
	ldd r16,Z+2
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
	movw r26,r14
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
	ret
	.size	blinkAllLeds, .-blinkAllLeds
