	.file	"initialization.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.init8,"ax",@progbits
.global	configure_hardware
	.type	configure_hardware, @function
configure_hardware:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,84-32
	sts __current_reset_status,r24
	out 84-32,__zero_reg__
	call led_init
	ldi r24,lo8(3)
	ldi r22,lo8(0)
	call leds_set
	call sens_init_ext
	call analog_init
	call odometry_init
	call motpwm_init
	call motpwm_stop
	in r24,80-32
	ori r24,lo8(-128)
	out 80-32,r24
	ldi r30,lo8(100)
	ldi r31,hi8(100)
	ld r24,Z
	ori r24,lo8(-10)
	st Z,r24
	ldi r30,lo8(96)
	ldi r31,hi8(96)
	ldi r24,lo8(16)
	st Z,r24
	ld r24,Z
	ori r24,lo8(5)
	st Z,r24
/* epilogue start */
	.size	configure_hardware, .-configure_hardware
	.section	.text.blink_reset_condition,"ax",@progbits
.global	blink_reset_condition
	.type	blink_reset_condition, @function
blink_reset_condition:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r16,r24
	lds r24,__current_reset_status
	mov r20,r24
	andi r20,lo8(1)
	sbrc r24,3
	ori r20,lo8(2)
.L3:
	sbrs r24,2
	rjmp .L4
	ori r20,lo8(4)
.L6:
	ldi r24,lo8(3)
	ldi r22,lo8(0)
	std Y+1,r20
	call leds_set
	movw r22,r16
	subi r22,lo8(-(50))
	sbci r23,hi8(-(50))
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call __floatunsisf
	movw r12,r22
	movw r14,r24
	movw r22,r16
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call __floatunsisf
	movw r16,r22
	movw r18,r24
	ldd r20,Y+1
	mov r24,r20
	movw r22,r14
	movw r20,r12
	ldi r25,lo8(4)
	mov r14,r25
	call leds_blink
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L4:
	tst r20
	brne .L6
	ldi r20,lo8(8)
	rjmp .L6
	.size	blink_reset_condition, .-blink_reset_condition
.global	__current_reset_status
.global	__current_reset_status
	.section .bss
	.type	__current_reset_status, @object
	.size	__current_reset_status, 1
__current_reset_status:
	.skip 1,0
.global __do_clear_bss
