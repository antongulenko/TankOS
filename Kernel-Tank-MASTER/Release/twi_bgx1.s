	.file	"twi_bgx1.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.bgx1_print,"ax",@progbits
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
	.section	.text.bgx1_textWidth,"ax",@progbits
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
	.section	.text.bgx1_termPrint,"ax",@progbits
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
	.section	.text.bgx1_drawTile,"ax",@progbits
.global	bgx1_drawTile
	.type	bgx1_drawTile, @function
bgx1_drawTile:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r25,r22
	mov r22,r20
	in r12,__SP_L__
	in r13,__SP_H__
	mov r30,r24
	ldi r31,lo8(0)
	movw r18,r30
	subi r18,lo8(-(-1))
	sbci r19,hi8(-(-1))
	sbrc r19,7
	rjmp .L8
.L5:
	asr r19
	ror r18
	asr r19
	ror r18
	asr r19
	ror r18
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	mul r25,r18
	mov r20,r0
	clr r1
	mov r18,r20
	subi r18,lo8(-(2))
	mov r14,r18
	clr r15
	in r18,__SP_L__
	in r19,__SP_H__
	sub r18,r14
	sbc r19,r15
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r19
	out __SREG__,__tmp_reg__
	out __SP_L__,r18
	in r16,__SP_L__
	in r17,__SP_H__
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
	in r30,__SP_L__
	in r31,__SP_H__
	std Z+1,r24
	movw r30,r16
	std Z+1,r25
	subi r18,lo8(-(3))
	sbci r19,hi8(-(3))
	movw r24,r18
	mov r23,r21
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
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L8:
	movw r18,r30
	subi r18,lo8(-(6))
	sbci r19,hi8(-(6))
	rjmp .L5
	.size	bgx1_drawTile, .-bgx1_drawTile
	.section	.text.bgx1_print_P,"ax",@progbits
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
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r14,r24
	in r10,__SP_L__
	in r11,__SP_H__
	call strlen_P
	mov r12,r24
	clr r13
	in r24,__SP_L__
	in r25,__SP_H__
	sub r24,r12
	sbc r25,r13
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	in r16,__SP_L__
	in r17,__SP_H__
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
	movw r24,r16
	movw r22,r14
	movw r20,r12
	call memcpy_P
	movw r24,r16
	movw r22,r12
	call bgx1_print_base
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r11
	out __SREG__,__tmp_reg__
	out __SP_L__,r10
/* epilogue start */
	pop r28
	pop r29
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
	.section	.text.bgx1_textWidth_P,"ax",@progbits
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
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r14,r24
	in r10,__SP_L__
	in r11,__SP_H__
	call strlen_P
	mov r12,r24
	clr r13
	in r24,__SP_L__
	in r25,__SP_H__
	sub r24,r12
	sbc r25,r13
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	in r16,__SP_L__
	in r17,__SP_H__
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
	movw r24,r16
	movw r22,r14
	movw r20,r12
	call memcpy_P
	movw r24,r16
	movw r22,r12
	call bgx1_textWidth_base
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r11
	out __SREG__,__tmp_reg__
	out __SP_L__,r10
/* epilogue start */
	pop r28
	pop r29
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
	.section	.text.bgx1_termPrint_P,"ax",@progbits
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
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r14,r24
	in r10,__SP_L__
	in r11,__SP_H__
	call strlen_P
	mov r12,r24
	clr r13
	in r24,__SP_L__
	in r25,__SP_H__
	sub r24,r12
	sbc r25,r13
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	in r16,__SP_L__
	in r17,__SP_H__
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
	movw r24,r16
	movw r22,r14
	movw r20,r12
	call memcpy_P
	movw r24,r16
	movw r22,r12
	call bgx1_termPrint_base
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r11
	out __SREG__,__tmp_reg__
	out __SP_L__,r10
/* epilogue start */
	pop r28
	pop r29
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
	.section	.text.bgx1_drawTile_P,"ax",@progbits
.global	bgx1_drawTile_P
	.type	bgx1_drawTile_P, @function
bgx1_drawTile_P:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r18,r20
	in r12,__SP_L__
	in r13,__SP_H__
	mov r30,r24
	ldi r31,lo8(0)
	movw r20,r30
	subi r20,lo8(-(-1))
	sbci r21,hi8(-(-1))
	sbrc r21,7
	rjmp .L14
.L13:
	asr r21
	ror r20
	asr r21
	ror r20
	asr r21
	ror r20
	subi r20,lo8(-(1))
	sbci r21,hi8(-(1))
	mul r22,r20
	mov r20,r0
	clr r1
	mov r25,r20
	subi r25,lo8(-(2))
	mov r14,r25
	clr r15
	in r30,__SP_L__
	in r31,__SP_H__
	sub r30,r14
	sbc r31,r15
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r31
	out __SREG__,__tmp_reg__
	out __SP_L__,r30
	in r16,__SP_L__
	in r17,__SP_H__
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
	std Z+1,r24
	movw r30,r16
	std Z+1,r22
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,3
	movw r22,r18
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
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L14:
	movw r20,r30
	subi r20,lo8(-(6))
	sbci r21,hi8(-(6))
	rjmp .L13
	.size	bgx1_drawTile_P, .-bgx1_drawTile_P
	.section	.text.bgx1_getVersion,"ax",@progbits
.global	bgx1_getVersion
	.type	bgx1_getVersion, @function
bgx1_getVersion:
	push r29
	push r28
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
	pop r28
	pop r29
	ret
	.size	bgx1_getVersion, .-bgx1_getVersion
	.section	.text.bgx1_getAnalog,"ax",@progbits
.global	bgx1_getAnalog
	.type	bgx1_getAnalog, @function
bgx1_getAnalog:
	push r29
	push r28
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
	pop r28
	pop r29
	ret
	.size	bgx1_getAnalog, .-bgx1_getAnalog
	.section	.text.bgx1_move,"ax",@progbits
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
	.section	.text.bgx1_box,"ax",@progbits
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
	.section	.text.bgx1_lineTo,"ax",@progbits
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
	.section	.text.bgx1_termGoto,"ax",@progbits
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
	.section	.text.bgx1_syncPort,"ax",@progbits
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
	.section	.text.bgx1_initialized,"ax",@progbits
.global	bgx1_initialized
	.type	bgx1_initialized, @function
bgx1_initialized:
	push r29
	push r28
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
	ldd r20,Y+1
	ldd r21,Y+2
	lds r24,twi_error
	lds r25,twi_error+1
	sbiw r24,0
	brne .L25
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	ldi r24,hi8(259)
	cpi r20,lo8(259)
	cpc r21,r24
	breq .L23
.L25:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
.L23:
	movw r24,r18
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	bgx1_initialized, .-bgx1_initialized
	.section	.text.bgx1_drawBitmap,"ax",@progbits
.global	bgx1_drawBitmap
	.type	bgx1_drawBitmap, @function
bgx1_drawBitmap:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	mov r14,r24
	mov r15,r22
	mov r30,r21
	mov r18,r24
	ldi r19,lo8(0)
	movw r24,r18
	sbiw r24,1
	sbrc r25,7
	rjmp .L33
.L27:
	asr r25
	ror r24
	asr r25
	ror r24
	asr r25
	ror r24
	mov r13,r24
	inc r13
	mov r16,r13
	ldi r17,lo8(0)
	ldi r24,lo8(18)
	ldi r25,hi8(18)
	movw r22,r16
	call __divmodhi4
	mov r12,r22
	tst r15
	breq .L31
	mov r10,r20
	movw r28,r10
	movw r10,r28
	mov r11,r30
	movw r28,r10
.L30:
	mov r11,r15
	cp r12,r15
	brsh .L29
	mov r11,r12
.L29:
	mov r24,r14
	mov r22,r11
	movw r20,r28
	call bgx1_drawTile
	mov r20,r11
	ldi r21,lo8(0)
	mul r20,r16
	movw r18,r0
	mul r20,r17
	add r19,r0
	mul r21,r16
	add r19,r0
	clr r1
	add r28,r18
	adc r29,r19
	sub r15,r11
	brne .L34
.L28:
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
.L34:
	subi r24,lo8(-(2))
	sub r24,r13
	call bgx1_move_base
	rjmp .L30
.L33:
	movw r24,r18
	adiw r24,6
	rjmp .L27
.L31:
	ldi r25,lo8(0)
	ldi r24,lo8(0)
	rjmp .L28
	.size	bgx1_drawBitmap, .-bgx1_drawBitmap
	.section	.text.bgx1_drawBitmap_P,"ax",@progbits
.global	bgx1_drawBitmap_P
	.type	bgx1_drawBitmap_P, @function
bgx1_drawBitmap_P:
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
	mov r14,r24
	mov r15,r22
	movw r28,r20
	mov r18,r24
	ldi r19,lo8(0)
	movw r24,r18
	sbiw r24,1
	sbrc r25,7
	rjmp .L43
.L36:
	asr r25
	ror r24
	asr r25
	ror r24
	asr r25
	ror r24
	mov r13,r24
	inc r13
	mov r16,r13
	ldi r17,lo8(0)
	ldi r24,lo8(18)
	ldi r25,hi8(18)
	movw r22,r16
	call __divmodhi4
	mov r11,r22
	tst r15
	breq .L40
.L42:
	mov r12,r15
	cp r11,r15
	brsh .L38
	mov r12,r11
.L38:
	mov r24,r14
	mov r22,r12
	movw r20,r28
	call bgx1_drawTile_P
	mov r20,r12
	ldi r21,lo8(0)
	mul r20,r16
	movw r18,r0
	mul r20,r17
	add r19,r0
	mul r21,r16
	add r19,r0
	clr r1
	add r28,r18
	adc r29,r19
	sub r15,r12
	brne .L44
.L37:
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
	ret
.L44:
	subi r24,lo8(-(2))
	sub r24,r13
	call bgx1_move_base
	rjmp .L42
.L43:
	movw r24,r18
	adiw r24,6
	rjmp .L36
.L40:
	ldi r25,lo8(0)
	ldi r24,lo8(0)
	rjmp .L37
	.size	bgx1_drawBitmap_P, .-bgx1_drawBitmap_P
