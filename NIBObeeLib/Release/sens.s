	.file	"sens.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.sens_init,"ax",@progbits
.global	sens_init
	.type	sens_init, @function
sens_init:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,40-32
	ori r24,lo8(-16)
	out 40-32,r24
/* epilogue start */
	ret
	.size	sens_init, .-sens_init
	.section	.text.sens_getLeft,"ax",@progbits
.global	sens_getLeft
	.type	sens_getLeft, @function
sens_getLeft:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r25,38-32
	andi r25,lo8(48)
	cpi r25,lo8(16)
	breq .L5
	ldi r24,lo8(1)
	cpi r25,lo8(32)
	breq .L3
	ldi r24,lo8(0)
	ret
.L5:
	ldi r24,lo8(-1)
.L3:
	ret
	.size	sens_getLeft, .-sens_getLeft
	.section	.text.sens_getRight,"ax",@progbits
.global	sens_getRight
	.type	sens_getRight, @function
sens_getRight:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r25,38-32
	andi r25,lo8(-64)
	cpi r25,lo8(64)
	breq .L10
	ldi r24,lo8(1)
	cpi r25,lo8(-128)
	breq .L8
	ldi r24,lo8(0)
	ret
.L10:
	ldi r24,lo8(-1)
.L8:
	ret
	.size	sens_getRight, .-sens_getRight
