	.file	"twi_bgx1.c"
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
.global	bgx1_print
	.type	bgx1_print, @function
bgx1_print:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ld __tmp_reg__,X+
	tst __tmp_reg__
	brne .-6
	movw r22,r26
	subi r22,lo8(-(-1))
	sbci r23,hi8(-(-1))
	sub r22,r24
	sbc r23,r25
	call bgx1_print_base
/* epilogue start */
	ret
	.size	bgx1_print, .-bgx1_print
.global	bgx1_textWidth
	.type	bgx1_textWidth, @function
bgx1_textWidth:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ld __tmp_reg__,X+
	tst __tmp_reg__
	brne .-6
	movw r22,r26
	subi r22,lo8(-(-1))
	sbci r23,hi8(-(-1))
	sub r22,r24
	sbc r23,r25
	call bgx1_textWidth_base
/* epilogue start */
	ret
	.size	bgx1_textWidth, .-bgx1_textWidth
.global	bgx1_termPrint
	.type	bgx1_termPrint, @function
bgx1_termPrint:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ld __tmp_reg__,X+
	tst __tmp_reg__
	brne .-6
	movw r22,r26
	subi r22,lo8(-(-1))
	sbci r23,hi8(-(-1))
	sub r22,r24
	sbc r23,r25
	call bgx1_termPrint_base
/* epilogue start */
	ret
	.size	bgx1_termPrint, .-bgx1_termPrint
.global	bgx1_drawTile
	.type	bgx1_drawTile, @function
bgx1_drawTile:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r19,r24
	mov r18,r22
	movw r30,r20
	in r12,__SP_L__
	in r13,__SP_H__
	ldi r25,lo8(0)
	sbiw r24,1
	ldi r22,lo8(8)
	ldi r23,hi8(8)
	call __divmodhi4
	subi r22,lo8(-(1))
	sbci r23,hi8(-(1))
	mul r18,r22
	mov r20,r0
	clr r1
	mov r24,r20
	subi r24,lo8(-(2))
	mov r14,r24
	clr r15
	in r24,__SP_L__
	in r25,__SP_H__
	sub r24,r14
	sbc r25,r15
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	in r16,__SP_L__
	in r17,__SP_H__
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
	in r26,__SP_L__
	in r27,__SP_H__
	adiw r26,1
	st X,r19
	movw r26,r16
	adiw r26,1
	st X,r18
	adiw r24,3
	movw r22,r30
	ldi r21,lo8(0)
	call memcpy
	movw r24,r16
	movw r22,r14
	call bgx1_drawBitmap_base
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r13
	out __SREG__,__tmp_reg__
	out __SP_L__,r12
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	bgx1_drawTile, .-bgx1_drawTile
.global	bgx1_print_P
	.type	bgx1_print_P, @function
bgx1_print_P:
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r10,r24
	in r12,__SP_L__
	in r13,__SP_H__
	call __strlen_P
	mov r16,r24
	ldi r17,lo8(0)
	in r24,__SP_L__
	in r25,__SP_H__
	sub r24,r16
	sbc r25,r17
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	in r14,__SP_L__
	in r15,__SP_H__
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	movw r24,r14
	movw r22,r10
	movw r20,r16
	call memcpy_P
	movw r24,r14
	movw r22,r16
	call bgx1_print_base
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r13
	out __SREG__,__tmp_reg__
	out __SP_L__,r12
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	bgx1_print_P, .-bgx1_print_P
.global	bgx1_textWidth_P
	.type	bgx1_textWidth_P, @function
bgx1_textWidth_P:
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r10,r24
	in r12,__SP_L__
	in r13,__SP_H__
	call __strlen_P
	mov r16,r24
	ldi r17,lo8(0)
	in r24,__SP_L__
	in r25,__SP_H__
	sub r24,r16
	sbc r25,r17
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	in r14,__SP_L__
	in r15,__SP_H__
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	movw r24,r14
	movw r22,r10
	movw r20,r16
	call memcpy_P
	movw r24,r14
	movw r22,r16
	call bgx1_textWidth_base
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r13
	out __SREG__,__tmp_reg__
	out __SP_L__,r12
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	bgx1_textWidth_P, .-bgx1_textWidth_P
.global	bgx1_termPrint_P
	.type	bgx1_termPrint_P, @function
bgx1_termPrint_P:
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r10,r24
	in r12,__SP_L__
	in r13,__SP_H__
	call __strlen_P
	mov r16,r24
	ldi r17,lo8(0)
	in r24,__SP_L__
	in r25,__SP_H__
	sub r24,r16
	sbc r25,r17
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	in r14,__SP_L__
	in r15,__SP_H__
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	movw r24,r14
	movw r22,r10
	movw r20,r16
	call memcpy_P
	movw r24,r14
	movw r22,r16
	call bgx1_termPrint_base
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r13
	out __SREG__,__tmp_reg__
	out __SP_L__,r12
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	bgx1_termPrint_P, .-bgx1_termPrint_P
.global	bgx1_drawTile_P
	.type	bgx1_drawTile_P, @function
bgx1_drawTile_P:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r18,r24
	mov r19,r22
	movw r30,r20
	in r12,__SP_L__
	in r13,__SP_H__
	ldi r25,lo8(0)
	sbiw r24,1
	ldi r22,lo8(8)
	ldi r23,hi8(8)
	call __divmodhi4
	subi r22,lo8(-(1))
	sbci r23,hi8(-(1))
	mul r19,r22
	mov r20,r0
	clr r1
	mov r24,r20
	subi r24,lo8(-(2))
	mov r14,r24
	clr r15
	in r24,__SP_L__
	in r25,__SP_H__
	sub r24,r14
	sbc r25,r15
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	in r16,__SP_L__
	in r17,__SP_H__
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
	in r26,__SP_L__
	in r27,__SP_H__
	adiw r26,1
	st X,r18
	movw r26,r16
	adiw r26,1
	st X,r19
	adiw r24,3
	movw r22,r30
	ldi r21,lo8(0)
	call memcpy_P
	movw r24,r16
	movw r22,r14
	call bgx1_drawBitmap_base
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r13
	out __SREG__,__tmp_reg__
	out __SP_L__,r12
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	bgx1_drawTile_P, .-bgx1_drawTile_P
.global	bgx1_getVersion
	.type	bgx1_getVersion, @function
bgx1_getVersion:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	call bgx1_getVersion_base
	std Y+2,r25
	std Y+1,r24
	movw r24,r28
	adiw r24,1
	call turn_word
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	bgx1_getVersion, .-bgx1_getVersion
.global	bgx1_getAnalog
	.type	bgx1_getAnalog, @function
bgx1_getAnalog:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	call bgx1_getAnalog_base
	std Y+2,r25
	std Y+1,r24
	movw r24,r28
	adiw r24,1
	call turn_word
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	bgx1_getAnalog, .-bgx1_getAnalog
.global	bgx1_move
	.type	bgx1_move, @function
bgx1_move:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r25,r22
	call bgx1_move_base
/* epilogue start */
	ret
	.size	bgx1_move, .-bgx1_move
.global	bgx1_box
	.type	bgx1_box, @function
bgx1_box:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r25,r22
	call bgx1_box_base
/* epilogue start */
	ret
	.size	bgx1_box, .-bgx1_box
.global	bgx1_lineTo
	.type	bgx1_lineTo, @function
bgx1_lineTo:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r25,r22
	call bgx1_lineTo_base
/* epilogue start */
	ret
	.size	bgx1_lineTo, .-bgx1_lineTo
.global	bgx1_termGoto
	.type	bgx1_termGoto, @function
bgx1_termGoto:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r25,r22
	call bgx1_termGoto_base
/* epilogue start */
	ret
	.size	bgx1_termGoto, .-bgx1_termGoto
.global	bgx1_syncPort
	.type	bgx1_syncPort, @function
bgx1_syncPort:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r25,r22
	call bgx1_syncPort_base
/* epilogue start */
	ret
	.size	bgx1_syncPort, .-bgx1_syncPort
.global	bgx1_initialized
	.type	bgx1_initialized, @function
bgx1_initialized:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call bgx1_getVersion
	lds r18,twi_error
	lds r19,twi_error+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L20
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	ldi r20,hi8(259)
	cpi r24,lo8(259)
	cpc r25,r20
	breq .L19
	ldi r18,lo8(0)
	ldi r19,hi8(0)
.L19:
	movw r24,r18
	ret
.L20:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	ret
	.size	bgx1_initialized, .-bgx1_initialized
.global	bgx1_drawBitmap
	.type	bgx1_drawBitmap, @function
bgx1_drawBitmap:
	push r10
	push r11
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 11 */
.L__stack_usage = 11
	mov r13,r24
	mov r17,r22
	mov r18,r21
	ldi r25,lo8(0)
	sbiw r24,1
	ldi r22,lo8(8)
	ldi r23,hi8(8)
	call __divmodhi4
	mov r16,r22
	subi r16,lo8(-(1))
	mov r22,r16
	ldi r24,lo8(18)
	ldi r25,hi8(18)
	ldi r23,lo8(0)
	call __divmodhi4
	mov r14,r22
	mov r10,r20
	mov r11,r18
	ldi r25,lo8(0)
	ldi r20,lo8(0)
	rjmp .L28
.L25:
	mov r15,r17
	cp r14,r17
	brsh .L23
	mov r15,r14
.L23:
	mov r24,r13
	mov r22,r15
	movw r20,r10
	call bgx1_drawTile
	mov r20,r24
	mov r24,r15
	mul r16,r24
	movw r18,r0
	clr r1
	add r10,r18
	adc r11,r19
	sub r17,r15
	breq .L28
	mov r24,r20
	subi r24,lo8(-(2))
	sub r24,r16
	mov r22,r25
	std Y+1,r20
	std Y+2,r25
	call bgx1_move
	ldd r25,Y+2
	ldd r20,Y+1
.L28:
	tst r17
	brne .L25
	mov r24,r20
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r11
	pop r10
	ret
	.size	bgx1_drawBitmap, .-bgx1_drawBitmap
.global	bgx1_drawBitmap_P
	.type	bgx1_drawBitmap_P, @function
bgx1_drawBitmap_P:
	push r10
	push r11
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 11 */
.L__stack_usage = 11
	mov r13,r24
	mov r17,r22
	movw r10,r20
	ldi r25,lo8(0)
	sbiw r24,1
	ldi r22,lo8(8)
	ldi r23,hi8(8)
	call __divmodhi4
	mov r16,r22
	subi r16,lo8(-(1))
	mov r22,r16
	ldi r24,lo8(18)
	ldi r25,hi8(18)
	ldi r23,lo8(0)
	call __divmodhi4
	mov r14,r22
	ldi r25,lo8(0)
	ldi r20,lo8(0)
	rjmp .L36
.L33:
	mov r15,r17
	cp r14,r17
	brsh .L31
	mov r15,r14
.L31:
	mov r24,r13
	mov r22,r15
	movw r20,r10
	call bgx1_drawTile_P
	mov r20,r24
	mov r24,r15
	mul r16,r24
	movw r18,r0
	clr r1
	add r10,r18
	adc r11,r19
	sub r17,r15
	breq .L36
	mov r24,r20
	subi r24,lo8(-(2))
	sub r24,r16
	mov r22,r25
	std Y+1,r20
	std Y+2,r25
	call bgx1_move
	ldd r25,Y+2
	ldd r20,Y+1
.L36:
	tst r17
	brne .L33
	mov r24,r20
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r11
	pop r10
	ret
	.size	bgx1_drawBitmap_P, .-bgx1_drawBitmap_P
