	.file	"scheduler.c"
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
.global	schedule_next
	.type	schedule_next, @function
schedule_next:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call schedule
	sbiw r24,0
	breq .L1
	call switchProcess
.L1:
	ret
	.size	schedule_next, .-schedule_next
