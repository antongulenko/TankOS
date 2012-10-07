	.file	"read_buttons_loop.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.button_pressed,"ax",@progbits
	.weak	button_pressed
	.type	button_pressed, @function
button_pressed:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	button_pressed, .-button_pressed
	.section	.text.button_released,"ax",@progbits
	.weak	button_released
	.type	button_released, @function
button_released:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	button_released, .-button_released
	.section	.text.read_buttons_loop,"ax",@progbits
.global	read_buttons_loop
	.type	read_buttons_loop, @function
read_buttons_loop:
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
	mov r16,r24
	movw r8,r22
	ldi r25,lo8(0)
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call calloc
	movw r6,r24
	ldi r17,lo8(0)
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	rjmp .L9
.L11:
	ldi r28,lo8(0)
	ldi r29,hi8(0)
.L9:
	cp r28,r16
	cpc r29,r17
	brge .L11
	movw r14,r28
	lsl r14
	rol r15
	movw r30,r8
	add r30,r14
	adc r31,r15
	ld r10,Z
	ldd r11,Z+1
	movw r24,r10
	call buttonStatus
	movw r12,r24
	add r14,r6
	adc r15,r7
	movw r30,r14
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	brne .L5
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	brne .L12
.L6:
	movw r30,r14
	std Z+1,r13
	st Z,r12
	adiw r28,1
	rjmp .L9
.L5:
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	brne .L6
	movw r24,r10
	call button_released
	rjmp .L6
.L12:
	movw r24,r10
	call button_pressed
	rjmp .L6
	.size	read_buttons_loop, .-read_buttons_loop
