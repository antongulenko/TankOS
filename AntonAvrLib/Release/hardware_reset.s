	.file	"hardware_reset.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.HARDWARE_RESET,"ax",@progbits
.global	HARDWARE_RESET
	.type	HARDWARE_RESET, @function
HARDWARE_RESET:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  12 "../kernel/hardware_reset.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	in r24,84-32
	andi r24,lo8(8)
	out 84-32,r24
	ldi r24,lo8(16)
	sts 96,r24
	ldi r24,lo8(8)
	sts 96,r24
.L2:
	rjmp .L2
	.size	HARDWARE_RESET, .-HARDWARE_RESET
