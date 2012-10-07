	.file	"LedOperations.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.led_operation_tick,"ax",@progbits
.global	led_operation_tick
	.type	led_operation_tick, @function
led_operation_tick:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,running
	lds r25,running+1
	sbiw r24,0
	brne .L4
	ret
.L4:
	lds r18,leds_left
	lds r19,leds_left+1
	movw r24,r18
	lsl r24
	mov r24,r25
	rol r24
	sbc r25,r25
	neg r25
	lsl r18
	rol r19
	or r24,r18
	or r25,r19
	sts leds_left+1,r25
	sts leds_left,r24
	lds r18,leds_middle
	lds r19,leds_middle+1
	movw r24,r18
	lsl r24
	mov r24,r25
	rol r24
	sbc r25,r25
	neg r25
	lsl r18
	rol r19
	or r24,r18
	or r25,r19
	sts leds_middle+1,r25
	sts leds_middle,r24
	lds r24,leds_right
	lds r25,leds_right+1
	movw r18,r24
	lsl r18
	mov r18,r19
	rol r18
	sbc r19,r19
	neg r19
	lsl r24
	rol r25
	or r18,r24
	or r19,r25
	sts leds_right+1,r19
	sts leds_right,r18
	lds r24,RedLeds
	lds r25,RedLeds+1
	ldi r22,lo8(0)
	mov r23,r18
	call setLeds
	lds r23,leds_middle
	lds r24,MiddleLeds
	lds r25,MiddleLeds+1
	ldi r22,lo8(0)
	call setLeds
	lds r23,leds_left
	lds r24,WhiteLeds
	lds r25,WhiteLeds+1
	ldi r22,lo8(0)
	call setLeds
	ret
	.size	led_operation_tick, .-led_operation_tick
	.section	.text.led_operation_off,"ax",@progbits
.global	led_operation_off
	.type	led_operation_off, @function
led_operation_off:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts running+1,__zero_reg__
	sts running,__zero_reg__
/* epilogue start */
	ret
	.size	led_operation_off, .-led_operation_off
	.section	.text.led_operation_1,"ax",@progbits
.global	led_operation_1
	.type	led_operation_1, @function
led_operation_1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(3)
	ldi r25,hi8(3)
	sts leds_right+1,r25
	sts leds_right,r24
	ldi r18,lo8(6)
	ldi r19,hi8(6)
	sts leds_middle+1,r19
	sts leds_middle,r18
	sts leds_left+1,r25
	sts leds_left,r24
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts running+1,r25
	sts running,r24
/* epilogue start */
	ret
	.size	led_operation_1, .-led_operation_1
.global	running
	.data
	.type	running, @object
	.size	running, 2
running:
	.word	1
	.comm leds_left,2,1
	.comm leds_middle,2,1
	.comm leds_right,2,1
.global __do_copy_data
.global __do_clear_bss
