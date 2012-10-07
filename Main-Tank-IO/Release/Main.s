	.file	"Main.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.run_leds,"ax",@progbits
.global	run_leds
	.type	run_leds, @function
run_leds:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	lds r16,AllLeds
	lds r17,AllLeds+1
	ldi r28,lo8(0)
	ldi r29,hi8(0)
.L2:
	movw r24,r28
	lsl r24
	rol r25
	movw r26,r16
	ld r30,X+
	ld r31,X
	add r30,r24
	adc r31,r25
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(200)
	ldi r23,hi8(200)
	call flashLed
	movw r24,r28
	adiw r24,1
	movw r30,r16
	ldd r22,Z+2
	ldi r23,lo8(0)
	call __divmodhi4
	movw r28,r24
	rjmp .L2
	.size	run_leds, .-run_leds
	.section	.text.leds_special,"ax",@progbits
.global	leds_special
	.type	leds_special, @function
leds_special:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call led_operation_1
.L5:
	 ldi r24,lo8(1199999)
    ldi r25,hi8(1199999)
    ldi r26,hlo8(1199999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	call led_operation_tick
	rjmp .L5
	.size	leds_special, .-leds_special
	.section	.text.test_buttons,"ax",@progbits
.global	test_buttons
	.type	test_buttons, @function
test_buttons:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	lds r28,AllLeds
	lds r29,AllLeds+1
.L7:
	call buttonStatusMask
	mov r23,r24
	movw r24,r28
	ldi r22,lo8(0)
	call setLeds
	rjmp .L7
	.size	test_buttons, .-test_buttons
	.section	.text.all_leds,"ax",@progbits
.global	all_leds
	.type	all_leds, @function
all_leds:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,AllLeds
	lds r25,AllLeds+1
	call enableLeds
/* epilogue start */
	ret
	.size	all_leds, .-all_leds
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
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
/* stack size = 9 */
.L__stack_usage = 9
	in r24,39-32
	ori r24,lo8(3)
	out 39-32,r24
	lds r14,Button1
	lds r15,Button1+1
	lds r16,Button2
	lds r17,Button2+1
	lds r28,WhiteLeds
	lds r29,WhiteLeds+1
	lds r12,RedLeds
	lds r13,RedLeds+1
	in r11,40-32
	movw r24,r14
	call buttonStatus
	sbiw r24,0
	breq .L10
.L15:
	ldi r24,lo8(1)
	or r11,r24
	movw r24,r28
	call enableLeds
	movw r24,r16
	call buttonStatus
	sbiw r24,0
	breq .L12
.L16:
	ldi r24,lo8(2)
	or r11,r24
	movw r24,r12
	call enableLeds
	out 40-32,r11
.L17:
	in r11,40-32
	movw r24,r14
	call buttonStatus
	sbiw r24,0
	brne .L15
.L10:
	ldi r24,lo8(-2)
	and r11,r24
	movw r24,r28
	call disableLeds
	movw r24,r16
	call buttonStatus
	sbiw r24,0
	brne .L16
.L12:
	ldi r24,lo8(-3)
	and r11,r24
	movw r24,r12
	call disableLeds
	out 40-32,r11
	rjmp .L17
	.size	main, .-main
	.section	.text.test_communication_raw,"ax",@progbits
.global	test_communication_raw
	.type	test_communication_raw, @function
test_communication_raw:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(-1)
	out 42-32,r24
	out 36-32,r24
	out 39-32,__zero_reg__
	out 43-32,r24
	out 37-32,r24
	ldi r19,lo8(-1)
.L24:
	in r18,38-32
	mov r24,r18
	ldi r25,lo8(0)
	andi r24,lo8(2)
	andi r25,hi8(2)
	sbrs r18,0
	rjmp .L20
.L25:
	out 37-32,r19
	sbiw r24,0
	breq .L22
.L26:
	out 43-32,r19
	in r18,38-32
	mov r24,r18
	ldi r25,lo8(0)
	andi r24,lo8(2)
	andi r25,hi8(2)
	sbrc r18,0
	rjmp .L25
.L20:
	out 37-32,__zero_reg__
	sbiw r24,0
	brne .L26
.L22:
	out 43-32,__zero_reg__
	rjmp .L24
	.size	test_communication_raw, .-test_communication_raw
	.section	.text.test_communication_raw_steer_motors,"ax",@progbits
.global	test_communication_raw_steer_motors
	.type	test_communication_raw_steer_motors, @function
test_communication_raw_steer_motors:
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
/* stack size = 9 */
.L__stack_usage = 9
	in r24,39-32
	ori r24,lo8(3)
	out 39-32,r24
	lds r14,Button1
	lds r15,Button1+1
	lds r16,Button2
	lds r17,Button2+1
	lds r28,WhiteLeds
	lds r29,WhiteLeds+1
	lds r12,RedLeds
	lds r13,RedLeds+1
	in r11,40-32
	movw r24,r14
	call buttonStatus
	sbiw r24,0
	breq .L28
.L33:
	ldi r24,lo8(1)
	or r11,r24
	movw r24,r28
	call enableLeds
	movw r24,r16
	call buttonStatus
	sbiw r24,0
	breq .L30
.L34:
	ldi r24,lo8(2)
	or r11,r24
	movw r24,r12
	call enableLeds
	out 40-32,r11
.L35:
	in r11,40-32
	movw r24,r14
	call buttonStatus
	sbiw r24,0
	brne .L33
.L28:
	ldi r24,lo8(-2)
	and r11,r24
	movw r24,r28
	call disableLeds
	movw r24,r16
	call buttonStatus
	sbiw r24,0
	brne .L34
.L30:
	ldi r24,lo8(-3)
	and r11,r24
	movw r24,r12
	call disableLeds
	out 40-32,r11
	rjmp .L35
	.size	test_communication_raw_steer_motors, .-test_communication_raw_steer_motors
