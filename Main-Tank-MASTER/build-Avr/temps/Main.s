	.file	"Main.c"
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
.global	ana_callback
	.type	ana_callback, @function
ana_callback:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts ana_result,r24
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts ana_res_ready+1,r25
	sts ana_res_ready,r24
/* epilogue start */
	ret
	.size	ana_callback, .-ana_callback
.global	ana_read
	.type	ana_read, @function
ana_read:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts ana_res_ready+1,__zero_reg__
	sts ana_res_ready,__zero_reg__
	ldi r22,lo8(gs(ana_callback))
	ldi r23,hi8(gs(ana_callback))
	call analogRead
	sbiw r24,0
	breq .L5
.L6:
	lds r24,ana_res_ready
	lds r25,ana_res_ready+1
	sbiw r24,0
	breq .L6
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ret
.L5:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	ret
	.size	ana_read, .-ana_read
	.section	.text.startup,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,LeftMotorBase
	lds r25,LeftMotorBase+1
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	call setSpeedForward
	lds r28,RightMotorBase
	lds r29,RightMotorBase+1
	lds r16,Analog0
	lds r17,Analog0+1
.L13:
	movw r24,r16
	call ana_read
	sbiw r24,0
	breq .L13
	lds r23,ana_result
	movw r24,r28
	ldi r22,lo8(0)
	call setSpeedForward
	rjmp .L13
	.size	main, .-main
.global	ana_res_ready
.global	ana_res_ready
	.section .bss
	.type	ana_res_ready, @object
	.size	ana_res_ready, 2
ana_res_ready:
	.skip 2,0
.global	ana_result
.global	ana_result
	.type	ana_result, @object
	.size	ana_result, 1
ana_result:
	.skip 1,0
