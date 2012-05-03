	.file	"led.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.led_init,"ax",@progbits
.global	led_init
	.type	led_init, @function
led_init:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,36-32
	ori r24,lo8(15)
	out 36-32,r24
/* epilogue start */
	ret
	.size	led_init, .-led_init
	.section	.text.led_set,"ax",@progbits
.global	led_set
	.type	led_set, @function
led_set:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	tst r22
	breq .L3
	cpi r24,lo8(1)
	breq .L6
	cpi r24,lo8(1)
	brlo .L5
	cpi r24,lo8(2)
	breq .L7
	cpi r24,lo8(3)
	breq .L14
.L2:
	ret
.L3:
	cpi r24,lo8(1)
	breq .L10
	cpi r24,lo8(1)
	brlo .L9
	cpi r24,lo8(2)
	breq .L11
	cpi r24,lo8(3)
	brne .L2
	cbi 37-32,3
	ret
.L5:
	sbi 37-32,0
	ret
.L9:
	cbi 37-32,0
	ret
.L6:
	sbi 37-32,1
	ret
.L10:
	cbi 37-32,1
	ret
.L14:
	sbi 37-32,3
	ret
.L7:
	sbi 37-32,2
	ret
.L11:
	cbi 37-32,2
	ret
	.size	led_set, .-led_set
