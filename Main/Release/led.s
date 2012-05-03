	.file	"led.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.leds_set,"ax",@progbits
.global	leds_set
	.type	leds_set, @function
leds_set:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	mov r17,r22
	mov r28,r24
	ldi r29,lo8(0)
	movw r24,r28
	sbrs r24,0
	rjmp .L2
	ldi r24,lo8(1)
	call led_set
.L2:
	movw r24,r28
	andi r24,lo8(3)
	andi r25,hi8(3)
	sbiw r24,0
	breq .L3
	ldi r24,lo8(3)
	mov r22,r17
	call led_set
.L3:
	sbrs r28,1
	rjmp .L1
	ldi r24,lo8(2)
	mov r22,r17
	call led_set
.L1:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
	.size	leds_set, .-leds_set
	.section	.text.led_blink,"ax",@progbits
.global	led_blink
	.type	led_blink, @function
led_blink:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r15,r24
	movw r6,r20
	movw r8,r22
	movw r10,r16
	movw r12,r18
	ldi r17,lo8(0)
	rjmp .L6
.L7:
	mov r24,r15
	ldi r22,lo8(1)
	call led_set
	movw r24,r8
	movw r22,r6
	call __fixunssfsi
	movw r26,r24
	movw r24,r22
	call delay
	mov r24,r15
	ldi r22,lo8(0)
	call led_set
	movw r24,r12
	movw r22,r10
	call __fixunssfsi
	movw r26,r24
	movw r24,r22
	call delay
	subi r17,lo8(-(1))
.L6:
	cp r17,r14
	brlo .L7
/* epilogue start */
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
	.size	led_blink, .-led_blink
	.section	.text.leds_blink,"ax",@progbits
.global	leds_blink
	.type	leds_blink, @function
leds_blink:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r15,r24
	movw r6,r20
	movw r8,r22
	movw r10,r16
	movw r12,r18
	ldi r17,lo8(0)
	rjmp .L9
.L10:
	mov r24,r15
	ldi r22,lo8(1)
	call leds_set
	movw r24,r8
	movw r22,r6
	call __fixunssfsi
	movw r26,r24
	movw r24,r22
	call delay
	mov r24,r15
	ldi r22,lo8(0)
	call leds_set
	movw r24,r12
	movw r22,r10
	call __fixunssfsi
	movw r26,r24
	movw r24,r22
	call delay
	subi r17,lo8(-(1))
.L9:
	cp r17,r14
	brlo .L10
/* epilogue start */
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
	.size	leds_blink, .-leds_blink
