	.file	"analog_ext.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.trigger_samplings,"ax",@progbits
.global	trigger_samplings
	.type	trigger_samplings, @function
trigger_samplings:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r30,lo8(122)
	ldi r31,hi8(122)
	ld r24,Z
	ori r24,lo8(-128)
	st Z,r24
/* epilogue start */
	ret
	.size	trigger_samplings, .-trigger_samplings
	.section	.text.analog_irq_hook,"ax",@progbits
.global	analog_irq_hook
	.type	analog_irq_hook, @function
analog_irq_hook:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r30,lo8(122)
	ldi r31,hi8(122)
	ld r24,Z
	andi r24,lo8(127)
	st Z,r24
/* epilogue start */
	ret
	.size	analog_irq_hook, .-analog_irq_hook
