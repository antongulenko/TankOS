	.file	"motpid.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.motpid_reset,"ax",@progbits
.global	motpid_reset
	.type	motpid_reset, @function
motpid_reset:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts motpid_dyndata_left+1,__zero_reg__
	sts motpid_dyndata_left,__zero_reg__
	sts motpid_dyndata_left+2+1,__zero_reg__
	sts motpid_dyndata_left+2,__zero_reg__
	sts motpid_dyndata_left+4+1,__zero_reg__
	sts motpid_dyndata_left+4,__zero_reg__
	sts motpid_dyndata_right+1,__zero_reg__
	sts motpid_dyndata_right,__zero_reg__
	sts motpid_dyndata_right+2+1,__zero_reg__
	sts motpid_dyndata_right+2,__zero_reg__
	sts motpid_dyndata_right+4+1,__zero_reg__
	sts motpid_dyndata_right+4,__zero_reg__
/* epilogue start */
	ret
	.size	motpid_reset, .-motpid_reset
	.section	.text.motpid_change_mode,"ax",@progbits
.global	motpid_change_mode
	.type	motpid_change_mode, @function
motpid_change_mode:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r25,motpid_mode
	cp r25,r24
	breq .L2
	sts motpid_dyndata_left+1,__zero_reg__
	sts motpid_dyndata_left,__zero_reg__
	sts motpid_dyndata_left+2+1,__zero_reg__
	sts motpid_dyndata_left+2,__zero_reg__
	sts motpid_dyndata_left+4+1,__zero_reg__
	sts motpid_dyndata_left+4,__zero_reg__
	sts motpid_dyndata_right+1,__zero_reg__
	sts motpid_dyndata_right,__zero_reg__
	sts motpid_dyndata_right+2+1,__zero_reg__
	sts motpid_dyndata_right+2,__zero_reg__
	sts motpid_dyndata_right+4+1,__zero_reg__
	sts motpid_dyndata_right+4,__zero_reg__
	sts motpid_mode,r24
.L2:
	ret
	.size	motpid_change_mode, .-motpid_change_mode
	.section	.text.motpid_left_timer_int,"ax",@progbits
.global	motpid_left_timer_int
	.type	motpid_left_timer_int, @function
motpid_left_timer_int:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r18,odometry_pid_left
	ldi r24,lo8(50)
	muls r18,r24
	movw r18,r0
	clr r1
	lds r20,motpid_left_speed
	lds r21,motpid_left_speed+1
	movw r24,r20
	lsl r24
	rol r25
	add r24,r20
	adc r25,r21
	add r18,r24
	adc r19,r25
	sbrc r19,7
	rjmp .L20
.L6:
	asr r19
	ror r18
	asr r19
	ror r18
	sts motpid_left_speed+1,r19
	sts motpid_left_speed,r18
	lds r20,motpid_left_speed2
	lds r21,motpid_left_speed2+1
	movw r24,r20
	lsl r24
	rol r25
	add r24,r20
	adc r25,r21
	add r24,r18
	adc r25,r19
	sbrc r25,7
	rjmp .L21
.L7:
	asr r25
	ror r24
	asr r25
	ror r24
	sts motpid_left_speed2+1,r25
	sts motpid_left_speed2,r24
	lds r24,motpid_mode
	tst r24
	brne .+2
	rjmp .L8
	lds r20,motpid_left_value
	lds r21,motpid_left_value+1
	cpi r24,lo8(4)
	brne .+2
	rjmp .L9
.L19:
	lds r30,motpid_dyndata_left+2
	lds r31,motpid_dyndata_left+2+1
	lds r22,motpid_dyndata_left+4
	lds r23,motpid_dyndata_left+4+1
	movw r24,r30
	lsl r24
	rol r25
	lds r26,motpid_dyndata_left
	lds r27,motpid_dyndata_left+1
	sub r24,r26
	sbc r25,r27
	ldi r26,hi8(16384)
	cpi r22,lo8(16384)
	cpc r23,r26
	brge .+2
	rjmp .L22
	ldi r22,lo8(16384)
	ldi r23,hi8(16384)
.L14:
	movw r26,r24
	sub r26,r18
	sbc r27,r19
	movw r24,r26
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	sub r24,r26
	sbc r25,r27
	movw r26,r20
	sub r26,r18
	sbc r27,r19
	movw r20,r26
	lsl r20
	rol r21
	add r20,r26
	adc r21,r27
	lsl r20
	rol r21
	add r24,r20
	adc r25,r21
	movw r26,r30
	sub r26,r18
	sbc r27,r19
	movw r20,r26
	lsl r20
	rol r21
	lsl r20
	rol r21
	add r20,r26
	adc r21,r27
	add r24,r20
	adc r25,r21
	add r24,r22
	adc r25,r23
	sts motpid_dyndata_left+4+1,r25
	sts motpid_dyndata_left+4,r24
	sts motpid_dyndata_left+1,r31
	sts motpid_dyndata_left,r30
	sts motpid_dyndata_left+2+1,r19
	sts motpid_dyndata_left+2,r18
	sbrc r25,7
	rjmp .L23
.L15:
	asr r25
	ror r24
	asr r25
	ror r24
	asr r25
	ror r24
	asr r25
	ror r24
	call motpwm_setLeft
.L8:
	sts odometry_pid_left,__zero_reg__
/* epilogue start */
	ret
.L22:
	ldi r26,hi8(-16383)
	cpi r22,lo8(-16383)
	cpc r23,r26
	brlt .+2
	rjmp .L14
	ldi r22,lo8(-16384)
	ldi r23,hi8(-16384)
	rjmp .L14
.L20:
	subi r18,lo8(-(3))
	sbci r19,hi8(-(3))
	rjmp .L6
.L21:
	adiw r24,3
	rjmp .L7
.L9:
	lds r22,odometry_left
	lds r23,odometry_left+1
	lds r24,motpid_position_speed
	lds r25,motpid_position_speed+1
	sub r20,r22
	sbc r21,r23
	cp r24,r20
	cpc r25,r21
	brge .L11
	movw r20,r24
.L11:
	com r25
	neg r24
	sbci r25,lo8(-1)
	cp r20,r24
	cpc r21,r25
	brge .L12
	movw r20,r24
.L12:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .+2
	rjmp .L19
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	rjmp .L14
.L23:
	adiw r24,15
	rjmp .L15
	.size	motpid_left_timer_int, .-motpid_left_timer_int
	.section	.text.motpid_right_timer_int,"ax",@progbits
.global	motpid_right_timer_int
	.type	motpid_right_timer_int, @function
motpid_right_timer_int:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r18,odometry_pid_right
	ldi r24,lo8(50)
	muls r18,r24
	movw r18,r0
	clr r1
	lds r20,motpid_right_speed
	lds r21,motpid_right_speed+1
	movw r24,r20
	lsl r24
	rol r25
	add r24,r20
	adc r25,r21
	add r18,r24
	adc r19,r25
	sbrc r19,7
	rjmp .L39
.L25:
	asr r19
	ror r18
	asr r19
	ror r18
	sts motpid_right_speed+1,r19
	sts motpid_right_speed,r18
	lds r20,motpid_right_speed2
	lds r21,motpid_right_speed2+1
	movw r24,r20
	lsl r24
	rol r25
	add r24,r20
	adc r25,r21
	add r24,r18
	adc r25,r19
	sbrc r25,7
	rjmp .L40
.L26:
	asr r25
	ror r24
	asr r25
	ror r24
	sts motpid_right_speed2+1,r25
	sts motpid_right_speed2,r24
	lds r24,motpid_mode
	tst r24
	brne .+2
	rjmp .L27
	lds r20,motpid_right_value
	lds r21,motpid_right_value+1
	cpi r24,lo8(4)
	brne .+2
	rjmp .L28
.L38:
	lds r30,motpid_dyndata_right+2
	lds r31,motpid_dyndata_right+2+1
	lds r22,motpid_dyndata_right+4
	lds r23,motpid_dyndata_right+4+1
	movw r24,r30
	lsl r24
	rol r25
	lds r26,motpid_dyndata_right
	lds r27,motpid_dyndata_right+1
	sub r24,r26
	sbc r25,r27
	ldi r26,hi8(16384)
	cpi r22,lo8(16384)
	cpc r23,r26
	brge .+2
	rjmp .L41
	ldi r22,lo8(16384)
	ldi r23,hi8(16384)
.L33:
	movw r26,r24
	sub r26,r18
	sbc r27,r19
	movw r24,r26
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	sub r24,r26
	sbc r25,r27
	movw r26,r20
	sub r26,r18
	sbc r27,r19
	movw r20,r26
	lsl r20
	rol r21
	add r20,r26
	adc r21,r27
	lsl r20
	rol r21
	add r24,r20
	adc r25,r21
	movw r26,r30
	sub r26,r18
	sbc r27,r19
	movw r20,r26
	lsl r20
	rol r21
	lsl r20
	rol r21
	add r20,r26
	adc r21,r27
	add r24,r20
	adc r25,r21
	add r24,r22
	adc r25,r23
	sts motpid_dyndata_right+4+1,r25
	sts motpid_dyndata_right+4,r24
	sts motpid_dyndata_right+1,r31
	sts motpid_dyndata_right,r30
	sts motpid_dyndata_right+2+1,r19
	sts motpid_dyndata_right+2,r18
	sbrc r25,7
	rjmp .L42
.L34:
	asr r25
	ror r24
	asr r25
	ror r24
	asr r25
	ror r24
	asr r25
	ror r24
	call motpwm_setRight
.L27:
	sts odometry_pid_right,__zero_reg__
/* epilogue start */
	ret
.L41:
	ldi r26,hi8(-16383)
	cpi r22,lo8(-16383)
	cpc r23,r26
	brlt .+2
	rjmp .L33
	ldi r22,lo8(-16384)
	ldi r23,hi8(-16384)
	rjmp .L33
.L39:
	subi r18,lo8(-(3))
	sbci r19,hi8(-(3))
	rjmp .L25
.L40:
	adiw r24,3
	rjmp .L26
.L28:
	lds r22,odometry_right
	lds r23,odometry_right+1
	lds r24,motpid_position_speed
	lds r25,motpid_position_speed+1
	sub r20,r22
	sbc r21,r23
	cp r24,r20
	cpc r25,r21
	brge .L30
	movw r20,r24
.L30:
	com r25
	neg r24
	sbci r25,lo8(-1)
	cp r20,r24
	cpc r21,r25
	brge .L31
	movw r20,r24
.L31:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .+2
	rjmp .L38
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	rjmp .L33
.L42:
	adiw r24,15
	rjmp .L34
	.size	motpid_right_timer_int, .-motpid_right_timer_int
	.section	.text.__vector_15,"ax",@progbits
.global	__vector_15
	.type	__vector_15, @function
__vector_15:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	lds r25,counter.1377
	mov r24,r25
	subi r24,lo8(-(1))
	sts counter.1377,r24
	lds r18,running.1378
	tst r18
	brne .L43
	ldi r18,lo8(1)
	sts running.1378,r18
	cpi r24,lo8(15)
	brsh .L47
	lds r24,motpid_cnt
	subi r24,lo8(-(1))
	sts motpid_cnt,r24
	cpi r24,lo8(-109)
	brsh .L48
.L46:
	sts running.1378,__zero_reg__
.L43:
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
.L48:
	call motpid_left_timer_int
	call motpid_right_timer_int
	sts motpid_cnt,__zero_reg__
	rjmp .L46
.L47:
	subi r25,lo8(-(-14))
	sts counter.1377,r25
	ldi r24,lo8(1)
	ldi r22,lo8(22)
	ldi r23,hi8(22)
	call clock_inc_irq
	lds r24,motpid_cnt
	subi r24,lo8(-(1))
	sts motpid_cnt,r24
	cpi r24,lo8(-109)
	brlo .L46
	rjmp .L48
	.size	__vector_15, .-__vector_15
	.section	.text.motpid_init,"ax",@progbits
.global	motpid_init
	.type	motpid_init, @function
motpid_init:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,nibobee_initialization
	sbrc r24,1
	rjmp .L50
	call motpwm_init
.L50:
	lds r24,111
	ori r24,lo8(1)
	sts 111,r24
	sts motpid_dyndata_left+1,__zero_reg__
	sts motpid_dyndata_left,__zero_reg__
	sts motpid_dyndata_left+2+1,__zero_reg__
	sts motpid_dyndata_left+2,__zero_reg__
	sts motpid_dyndata_left+4+1,__zero_reg__
	sts motpid_dyndata_left+4,__zero_reg__
	sts motpid_dyndata_right+1,__zero_reg__
	sts motpid_dyndata_right,__zero_reg__
	sts motpid_dyndata_right+2+1,__zero_reg__
	sts motpid_dyndata_right+2,__zero_reg__
	sts motpid_dyndata_right+4+1,__zero_reg__
	sts motpid_dyndata_right+4,__zero_reg__
	sts motpid_mode,__zero_reg__
/* epilogue start */
	ret
	.size	motpid_init, .-motpid_init
	.section	.text.motpid_release,"ax",@progbits
.global	motpid_release
	.type	motpid_release, @function
motpid_release:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,motpid_mode
	tst r24
	breq .L51
	sts motpid_dyndata_left+1,__zero_reg__
	sts motpid_dyndata_left,__zero_reg__
	sts motpid_dyndata_left+2+1,__zero_reg__
	sts motpid_dyndata_left+2,__zero_reg__
	sts motpid_dyndata_left+4+1,__zero_reg__
	sts motpid_dyndata_left+4,__zero_reg__
	sts motpid_dyndata_right+1,__zero_reg__
	sts motpid_dyndata_right,__zero_reg__
	sts motpid_dyndata_right+2+1,__zero_reg__
	sts motpid_dyndata_right+2,__zero_reg__
	sts motpid_dyndata_right+4+1,__zero_reg__
	sts motpid_dyndata_right+4,__zero_reg__
	sts motpid_mode,__zero_reg__
.L51:
	ret
	.size	motpid_release, .-motpid_release
	.section	.text.motpid_stop,"ax",@progbits
.global	motpid_stop
	.type	motpid_stop, @function
motpid_stop:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	tst r24
	breq .L54
	lds r24,motpid_mode
	tst r24
	breq .L55
	sts motpid_dyndata_left+1,__zero_reg__
	sts motpid_dyndata_left,__zero_reg__
	sts motpid_dyndata_left+2+1,__zero_reg__
	sts motpid_dyndata_left+2,__zero_reg__
	sts motpid_dyndata_left+4+1,__zero_reg__
	sts motpid_dyndata_left+4,__zero_reg__
	sts motpid_dyndata_right+1,__zero_reg__
	sts motpid_dyndata_right,__zero_reg__
	sts motpid_dyndata_right+2+1,__zero_reg__
	sts motpid_dyndata_right+2,__zero_reg__
	sts motpid_dyndata_right+4+1,__zero_reg__
	sts motpid_dyndata_right+4,__zero_reg__
	sts motpid_mode,__zero_reg__
.L55:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call motpwm_setRight
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call motpwm_setLeft
	ret
.L54:
	lds r24,motpid_mode
	cpi r24,lo8(3)
	breq .L57
	sts motpid_dyndata_left+1,__zero_reg__
	sts motpid_dyndata_left,__zero_reg__
	sts motpid_dyndata_left+2+1,__zero_reg__
	sts motpid_dyndata_left+2,__zero_reg__
	sts motpid_dyndata_left+4+1,__zero_reg__
	sts motpid_dyndata_left+4,__zero_reg__
	sts motpid_dyndata_right+1,__zero_reg__
	sts motpid_dyndata_right,__zero_reg__
	sts motpid_dyndata_right+2+1,__zero_reg__
	sts motpid_dyndata_right+2,__zero_reg__
	sts motpid_dyndata_right+4+1,__zero_reg__
	sts motpid_dyndata_right+4,__zero_reg__
	ldi r24,lo8(3)
	sts motpid_mode,r24
.L57:
	sts motpid_left_value+1,__zero_reg__
	sts motpid_left_value,__zero_reg__
	sts motpid_right_value+1,__zero_reg__
	sts motpid_right_value,__zero_reg__
	ret
	.size	motpid_stop, .-motpid_stop
	.section	.text.motpid_setSpeed,"ax",@progbits
.global	motpid_setSpeed
	.type	motpid_setSpeed, @function
motpid_setSpeed:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r18,motpid_mode
	cpi r18,lo8(3)
	breq .L59
	sts motpid_dyndata_left+1,__zero_reg__
	sts motpid_dyndata_left,__zero_reg__
	sts motpid_dyndata_left+2+1,__zero_reg__
	sts motpid_dyndata_left+2,__zero_reg__
	sts motpid_dyndata_left+4+1,__zero_reg__
	sts motpid_dyndata_left+4,__zero_reg__
	sts motpid_dyndata_right+1,__zero_reg__
	sts motpid_dyndata_right,__zero_reg__
	sts motpid_dyndata_right+2+1,__zero_reg__
	sts motpid_dyndata_right+2,__zero_reg__
	sts motpid_dyndata_right+4+1,__zero_reg__
	sts motpid_dyndata_right+4,__zero_reg__
	ldi r18,lo8(3)
	sts motpid_mode,r18
.L59:
	sts motpid_left_value+1,r25
	sts motpid_left_value,r24
	sts motpid_right_value+1,r23
	sts motpid_right_value,r22
/* epilogue start */
	ret
	.size	motpid_setSpeed, .-motpid_setSpeed
	.section	.text.motpid_setTarget,"ax",@progbits
.global	motpid_setTarget
	.type	motpid_setTarget, @function
motpid_setTarget:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r18,motpid_mode
	cpi r18,lo8(4)
	breq .L61
	sts motpid_dyndata_left+1,__zero_reg__
	sts motpid_dyndata_left,__zero_reg__
	sts motpid_dyndata_left+2+1,__zero_reg__
	sts motpid_dyndata_left+2,__zero_reg__
	sts motpid_dyndata_left+4+1,__zero_reg__
	sts motpid_dyndata_left+4,__zero_reg__
	sts motpid_dyndata_right+1,__zero_reg__
	sts motpid_dyndata_right,__zero_reg__
	sts motpid_dyndata_right+2+1,__zero_reg__
	sts motpid_dyndata_right+2,__zero_reg__
	sts motpid_dyndata_right+4+1,__zero_reg__
	sts motpid_dyndata_right+4,__zero_reg__
	ldi r18,lo8(4)
	sts motpid_mode,r18
.L61:
	sts motpid_position_speed+1,r21
	sts motpid_position_speed,r20
	sts motpid_left_value+1,r25
	sts motpid_left_value,r24
	sts motpid_right_value+1,r23
	sts motpid_right_value,r22
/* epilogue start */
	ret
	.size	motpid_setTarget, .-motpid_setTarget
	.section	.text.motpid_setTargetRel,"ax",@progbits
.global	motpid_setTargetRel
	.type	motpid_setTargetRel, @function
motpid_setTargetRel:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r18,motpid_mode
	cpi r18,lo8(4)
	breq .L63
	sts motpid_dyndata_left+1,__zero_reg__
	sts motpid_dyndata_left,__zero_reg__
	sts motpid_dyndata_left+2+1,__zero_reg__
	sts motpid_dyndata_left+2,__zero_reg__
	sts motpid_dyndata_left+4+1,__zero_reg__
	sts motpid_dyndata_left+4,__zero_reg__
	sts motpid_dyndata_right+1,__zero_reg__
	sts motpid_dyndata_right,__zero_reg__
	sts motpid_dyndata_right+2+1,__zero_reg__
	sts motpid_dyndata_right+2,__zero_reg__
	sts motpid_dyndata_right+4+1,__zero_reg__
	sts motpid_dyndata_right+4,__zero_reg__
	ldi r18,lo8(4)
	sts motpid_mode,r18
.L63:
	sts motpid_position_speed+1,r21
	sts motpid_position_speed,r20
	lds r18,odometry_left
	lds r19,odometry_left+1
	add r18,r24
	adc r19,r25
	sts motpid_left_value+1,r19
	sts motpid_left_value,r18
	lds r24,odometry_right
	lds r25,odometry_right+1
	add r24,r22
	adc r25,r23
	sts motpid_right_value+1,r25
	sts motpid_right_value,r24
/* epilogue start */
	ret
	.size	motpid_setTargetRel, .-motpid_setTargetRel
.global	motpid_position_speed
	.data
	.type	motpid_position_speed, @object
	.size	motpid_position_speed, 2
motpid_position_speed:
	.word	20
	.comm motpid_cnt,1,1
	.comm motpid_left_speed,2,1
	.comm motpid_right_speed,2,1
	.comm motpid_left_speed2,2,1
	.comm motpid_right_speed2,2,1
	.comm motpid_left_value,2,1
	.comm motpid_right_value,2,1
	.comm motpid_left_cnt,1,1
	.comm motpid_right_cnt,1,1
	.comm motpid_mode,1,1
	.lcomm running.1378,1
	.lcomm counter.1377,1
	.lcomm motpid_dyndata_right,6
	.lcomm motpid_dyndata_left,6
.global __do_copy_data
.global __do_clear_bss
