	.file	"delay.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.delay,"ax",@progbits
.global	delay
	.type	delay, @function
delay:
	rjmp .L6
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L4:
	 ldi r30,lo8(4999)
    ldi r31,hi8(4999)
    1:sbiw r30,1
    brne 1b
	rjmp .
	nop
	sbiw r24,1
.L6:
	sbiw r24,0
	brne .L4
	ret
	.size	delay, .-delay
