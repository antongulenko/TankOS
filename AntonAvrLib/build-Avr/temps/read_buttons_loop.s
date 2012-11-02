	.file	"read_buttons_loop.c"
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
.global	read_buttons_loop
	.type	read_buttons_loop, @function
read_buttons_loop:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r6,r24
	movw r10,r22
	ldi r25,lo8(0)
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call calloc
	movw r8,r24
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	clr r7
	rjmp .L10
.L8:
	movw r12,r28
	lsl r12
	rol r13
	movw r30,r10
	add r30,r12
	adc r31,r13
	ld r16,Z
	ldd r17,Z+1
	movw r24,r16
	call buttonStatus
	movw r14,r24
	add r12,r8
	adc r13,r9
	movw r30,r12
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	brne .L5
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L7
	movw r24,r16
	call button_pressed
	rjmp .L7
.L5:
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L7
	movw r24,r16
	call button_released
.L7:
	movw r30,r12
	std Z+1,r15
	st Z,r14
	adiw r28,1
.L10:
	cp r28,r6
	cpc r29,r7
	brlt .L8
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	rjmp .L10
	.size	read_buttons_loop, .-read_buttons_loop
