	.file	"bgx1.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.bgx1_init,"ax",@progbits
.global	bgx1_init
	.type	bgx1_init, @function
bgx1_init:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	lds r24,nibobee_initialization
	sbrs r24,2
	rjmp .L7
.L2:
	ldi r24,lo8(22)
	sts i2c_buf,r24
	ldi r24,lo8(1)
	sts i2c_buf+1,r24
	ldi r24,lo8(2)
	sts i2c_tx_size,r24
	ldi r24,lo8(3)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
	lds r16,i2c_buf+1
	lds r17,i2c_buf+2
	call i2c_status
	cpi r24,lo8(2)
	breq .L8
.L5:
	ldi r24,lo8(0)
.L3:
/* epilogue start */
	pop r17
	pop r16
	ret
.L8:
	mov r25,r16
	ldi r24,lo8(0)
	movw r18,r24
	add r18,r17
	adc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r19,lo8(1)
	brne .L5
	rjmp .L3
.L7:
	call i2c_init
	rjmp .L2
	.size	bgx1_init, .-bgx1_init
	.section	.text.bgx1_reset,"ax",@progbits
.global	bgx1_reset
	.type	bgx1_reset, @function
bgx1_reset:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(22)
	sts i2c_buf,r24
	sts i2c_buf+1,__zero_reg__
	ldi r24,lo8(2)
	sts i2c_tx_size,r24
	ldi r24,lo8(1)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
/* epilogue start */
	ret
	.size	bgx1_reset, .-bgx1_reset
	.section	.text.bgx1_getVersion,"ax",@progbits
.global	bgx1_getVersion
	.type	bgx1_getVersion, @function
bgx1_getVersion:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(22)
	sts i2c_buf,r24
	ldi r24,lo8(1)
	sts i2c_buf+1,r24
	ldi r24,lo8(2)
	sts i2c_tx_size,r24
	ldi r24,lo8(3)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
	lds r19,i2c_buf+1
	ldi r18,lo8(0)
	lds r24,i2c_buf+2
	add r18,r24
	adc r19,__zero_reg__
	movw r24,r18
/* epilogue start */
	ret
	.size	bgx1_getVersion, .-bgx1_getVersion
	.section	.text.bgx1_getStatus,"ax",@progbits
.global	bgx1_getStatus
	.type	bgx1_getStatus, @function
bgx1_getStatus:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(22)
	sts i2c_buf,r24
	ldi r24,lo8(2)
	sts i2c_buf+1,r24
	sts i2c_tx_size,r24
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
	lds r24,i2c_buf+1
/* epilogue start */
	ret
	.size	bgx1_getStatus, .-bgx1_getStatus
	.section	.text.bgx1_setStatus,"ax",@progbits
.global	bgx1_setStatus
	.type	bgx1_setStatus, @function
bgx1_setStatus:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,lo8(22)
	sts i2c_buf,r25
	ldi r25,lo8(3)
	sts i2c_buf+1,r25
	sts i2c_buf+2,r24
	sts i2c_tx_size,r25
	ldi r24,lo8(1)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
/* epilogue start */
	ret
	.size	bgx1_setStatus, .-bgx1_setStatus
	.section	.text.bgx1_move,"ax",@progbits
.global	bgx1_move
	.type	bgx1_move, @function
bgx1_move:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,lo8(22)
	sts i2c_buf,r25
	ldi r25,lo8(16)
	sts i2c_buf+1,r25
	sts i2c_buf+2,r24
	sts i2c_buf+3,r22
	ldi r24,lo8(4)
	sts i2c_tx_size,r24
	ldi r24,lo8(1)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
/* epilogue start */
	ret
	.size	bgx1_move, .-bgx1_move
	.section	.text.bgx1_mode,"ax",@progbits
.global	bgx1_mode
	.type	bgx1_mode, @function
bgx1_mode:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,lo8(22)
	sts i2c_buf,r25
	ldi r25,lo8(17)
	sts i2c_buf+1,r25
	sts i2c_buf+2,r24
	ldi r24,lo8(3)
	sts i2c_tx_size,r24
	ldi r24,lo8(1)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
/* epilogue start */
	ret
	.size	bgx1_mode, .-bgx1_mode
	.section	.text.bgx1_fillAll,"ax",@progbits
.global	bgx1_fillAll
	.type	bgx1_fillAll, @function
bgx1_fillAll:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,lo8(22)
	sts i2c_buf,r25
	ldi r25,lo8(18)
	sts i2c_buf+1,r25
	sts i2c_buf+2,r24
	ldi r24,lo8(3)
	sts i2c_tx_size,r24
	ldi r24,lo8(1)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
/* epilogue start */
	ret
	.size	bgx1_fillAll, .-bgx1_fillAll
	.section	.text.bgx1_print,"ax",@progbits
.global	bgx1_print
	.type	bgx1_print, @function
bgx1_print:
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	movw r22,r24
	ldi r24,lo8(22)
	sts i2c_buf,r24
	ldi r24,lo8(19)
	sts i2c_buf+1,r24
	movw r26,r22
	ld __tmp_reg__,X+
	tst __tmp_reg__
	brne .-6
	movw r20,r26
	subi r20,lo8(-(-1))
	sbci r21,hi8(-(-1))
	sub r20,r22
	sbc r21,r23
	mov r17,r20
	ldi r18,lo8(i2c_buf+2)
	ldi r19,hi8(i2c_buf+2)
	movw r24,r18
	ldi r21,lo8(0)
	call memcpy
	subi r17,lo8(-(2))
	sts i2c_tx_size,r17
	ldi r24,lo8(3)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
	call i2c_status
	cpi r24,lo8(2)
	brne .L16
	lds r24,i2c_buf+1
	sts bgx1_x,r24
	lds r24,i2c_buf+2
	sts bgx1_y,r24
.L16:
/* epilogue start */
	pop r17
	ret
	.size	bgx1_print, .-bgx1_print
	.section	.text.bgx1_print_P,"ax",@progbits
.global	bgx1_print_P
	.type	bgx1_print_P, @function
bgx1_print_P:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
	ldi r24,lo8(22)
	sts i2c_buf,r24
	ldi r24,lo8(19)
	sts i2c_buf+1,r24
	movw r24,r28
	call strlen_P
	mov r17,r24
	ldi r24,lo8(i2c_buf+2)
	ldi r25,hi8(i2c_buf+2)
	movw r22,r28
	mov r20,r17
	ldi r21,lo8(0)
	call memcpy_P
	subi r17,lo8(-(2))
	sts i2c_tx_size,r17
	ldi r24,lo8(3)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
	call i2c_status
	cpi r24,lo8(2)
	brne .L19
	lds r24,i2c_buf+1
	sts bgx1_x,r24
	lds r24,i2c_buf+2
	sts bgx1_y,r24
.L19:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
	.size	bgx1_print_P, .-bgx1_print_P
	.section	.text.bgx1_textWidth,"ax",@progbits
.global	bgx1_textWidth
	.type	bgx1_textWidth, @function
bgx1_textWidth:
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	movw r22,r24
	ldi r24,lo8(22)
	sts i2c_buf,r24
	ldi r24,lo8(20)
	sts i2c_buf+1,r24
	movw r26,r22
	ld __tmp_reg__,X+
	tst __tmp_reg__
	brne .-6
	movw r20,r26
	subi r20,lo8(-(-1))
	sbci r21,hi8(-(-1))
	sub r20,r22
	sbc r21,r23
	mov r17,r20
	ldi r18,lo8(i2c_buf+2)
	ldi r19,hi8(i2c_buf+2)
	movw r24,r18
	ldi r21,lo8(0)
	call memcpy
	subi r17,lo8(-(2))
	sts i2c_tx_size,r17
	ldi r24,lo8(2)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
	lds r24,i2c_buf+1
/* epilogue start */
	pop r17
	ret
	.size	bgx1_textWidth, .-bgx1_textWidth
	.section	.text.bgx1_textWidth_P,"ax",@progbits
.global	bgx1_textWidth_P
	.type	bgx1_textWidth_P, @function
bgx1_textWidth_P:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
	ldi r24,lo8(22)
	sts i2c_buf,r24
	ldi r24,lo8(20)
	sts i2c_buf+1,r24
	movw r24,r28
	call strlen_P
	mov r17,r24
	ldi r24,lo8(i2c_buf+2)
	ldi r25,hi8(i2c_buf+2)
	movw r22,r28
	mov r20,r17
	ldi r21,lo8(0)
	call memcpy_P
	subi r17,lo8(-(2))
	sts i2c_tx_size,r17
	ldi r24,lo8(2)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
	lds r24,i2c_buf+1
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
	.size	bgx1_textWidth_P, .-bgx1_textWidth_P
	.section	.text.bgx1_selectFont,"ax",@progbits
.global	bgx1_selectFont
	.type	bgx1_selectFont, @function
bgx1_selectFont:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,lo8(22)
	sts i2c_buf,r25
	ldi r25,lo8(21)
	sts i2c_buf+1,r25
	sts i2c_buf+2,r24
	ldi r24,lo8(3)
	sts i2c_tx_size,r24
	ldi r24,lo8(1)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
/* epilogue start */
	ret
	.size	bgx1_selectFont, .-bgx1_selectFont
	.section	.text.bgx1_hLine,"ax",@progbits
.global	bgx1_hLine
	.type	bgx1_hLine, @function
bgx1_hLine:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,lo8(22)
	sts i2c_buf,r25
	sts i2c_buf+1,r25
	sts i2c_buf+2,r24
	ldi r24,lo8(3)
	sts i2c_tx_size,r24
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
	call i2c_status
	cpi r24,lo8(2)
	breq .L27
	ret
.L27:
	lds r24,i2c_buf+1
	sts bgx1_x,r24
	lds r24,i2c_buf+2
	sts bgx1_y,r24
	ret
	.size	bgx1_hLine, .-bgx1_hLine
	.section	.text.bgx1_vLine,"ax",@progbits
.global	bgx1_vLine
	.type	bgx1_vLine, @function
bgx1_vLine:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,lo8(22)
	sts i2c_buf,r25
	ldi r25,lo8(23)
	sts i2c_buf+1,r25
	sts i2c_buf+2,r24
	ldi r24,lo8(3)
	sts i2c_tx_size,r24
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
	call i2c_status
	cpi r24,lo8(2)
	breq .L30
	ret
.L30:
	lds r24,i2c_buf+1
	sts bgx1_x,r24
	lds r24,i2c_buf+2
	sts bgx1_y,r24
	ret
	.size	bgx1_vLine, .-bgx1_vLine
	.section	.text.bgx1_box,"ax",@progbits
.global	bgx1_box
	.type	bgx1_box, @function
bgx1_box:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,lo8(22)
	sts i2c_buf,r25
	ldi r25,lo8(24)
	sts i2c_buf+1,r25
	sts i2c_buf+2,r24
	sts i2c_buf+3,r22
	ldi r24,lo8(4)
	sts i2c_tx_size,r24
	ldi r24,lo8(3)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
	call i2c_status
	cpi r24,lo8(2)
	breq .L33
	ret
.L33:
	lds r24,i2c_buf+1
	sts bgx1_x,r24
	lds r24,i2c_buf+2
	sts bgx1_y,r24
	ret
	.size	bgx1_box, .-bgx1_box
	.section	.text.bgx1_drawBitmap,"ax",@progbits
.global	bgx1_drawBitmap
	.type	bgx1_drawBitmap, @function
bgx1_drawBitmap:
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
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
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 22 */
.L__stack_usage = 22
	mov r11,r24
	mov r16,r22
	mov r30,r21
	ldi r25,lo8(0)
	movw r18,r24
	subi r18,lo8(-(-1))
	sbci r19,hi8(-(-1))
	sbrc r19,7
	rjmp .L43
.L35:
	asr r19
	ror r18
	asr r19
	ror r18
	asr r19
	ror r18
	mov r24,r18
	subi r24,lo8(-(1))
	mov r8,r24
	clr r9
	std Y+2,r9
	std Y+1,r8
	ldi r24,lo8(18)
	ldi r25,hi8(18)
	movw r22,r8
	call __divmodhi4
	mov r13,r22
	lds r10,bgx1_y
	lds r12,bgx1_x
	tst r16
	brne .+2
	rjmp .L34
	mov r7,r18
	inc r7
	mov r21,r30
	std Y+4,r21
	std Y+3,r20
	ldi r20,lo8(22)
	mov r14,r20
	ldi r19,lo8(16)
	mov r6,r19
	ldi r18,lo8(4)
	mov r5,r18
	clr r4
	inc r4
	ldi r25,lo8(25)
	mov r3,r25
	ldi r24,lo8(3)
	mov r2,r24
	rjmp .L41
.L40:
	tst r16
	brne .+2
	rjmp .L34
.L41:
	sts i2c_buf,r14
	sts i2c_buf+1,r6
	sts i2c_buf+2,r10
	sts i2c_buf+3,r12
	sts i2c_tx_size,r5
	sts i2c_rx_size,r4
	call i2c_start_transmission
	call i2c_wait_transmission
	mov r17,r16
	cp r13,r16
	brsh .L37
	mov r17,r13
.L37:
	sts i2c_buf,r14
	sts i2c_buf+1,r3
	sts i2c_buf+2,r11
	sts i2c_buf+3,r17
	mul r17,r7
	mov r15,r0
	clr r1
	ldi r18,lo8(i2c_buf+4)
	ldi r19,hi8(i2c_buf+4)
	movw r24,r18
	ldd r22,Y+3
	ldd r23,Y+4
	mov r20,r15
	ldi r21,lo8(0)
	call memcpy
	mov r24,r15
	subi r24,lo8(-(4))
	sts i2c_tx_size,r24
	sts i2c_rx_size,r2
	call i2c_start_transmission
	call i2c_wait_transmission
	call i2c_status
	cpi r24,lo8(2)
	brne .L39
	lds r24,i2c_buf+1
	sts bgx1_x,r24
	lds r24,i2c_buf+2
	sts bgx1_y,r24
.L39:
	tst r17
	brne .+2
	rjmp .L40
	mov r24,r17
	subi r24,lo8(-(-1))
	ldi r25,lo8(0)
	adiw r24,1
	ldd r20,Y+1
	ldd r21,Y+2
	mul r24,r20
	movw r18,r0
	mul r24,r21
	add r19,r0
	mul r25,r20
	add r19,r0
	clr r1
	ldd r22,Y+3
	ldd r23,Y+4
	add r22,r18
	adc r23,r19
	std Y+4,r23
	std Y+3,r22
	sub r16,r17
	add r12,r17
	tst r16
	breq .+2
	rjmp .L41
.L34:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
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
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
.L43:
	movw r18,r24
	subi r18,lo8(-(6))
	sbci r19,hi8(-(6))
	rjmp .L35
	.size	bgx1_drawBitmap, .-bgx1_drawBitmap
	.section	.text.bgx1_drawBitmap_P,"ax",@progbits
.global	bgx1_drawBitmap_P
	.type	bgx1_drawBitmap_P, @function
bgx1_drawBitmap_P:
	push r6
	push r7
	push r9
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
/* stack size = 13 */
.L__stack_usage = 13
	mov r13,r24
	mov r16,r22
	mov r30,r21
	ldi r25,lo8(0)
	movw r18,r24
	subi r18,lo8(-(-1))
	sbci r19,hi8(-(-1))
	sbrc r19,7
	rjmp .L52
.L45:
	asr r19
	ror r18
	asr r19
	ror r18
	asr r19
	ror r18
	mov r6,r18
	inc r6
	clr r7
	ldi r24,lo8(18)
	ldi r25,hi8(18)
	movw r22,r6
	call __divmodhi4
	mov r14,r22
	tst r16
	brne .+2
	rjmp .L44
	mov r12,r18
	inc r12
	mov r10,r20
	movw r28,r10
	movw r10,r28
	mov r11,r30
	movw r28,r10
	ldi r30,lo8(22)
	mov r11,r30
	ldi r23,lo8(25)
	mov r10,r23
	ldi r22,lo8(3)
	mov r9,r22
	rjmp .L50
.L49:
	tst r16
	breq .L44
.L50:
	mov r17,r16
	cp r14,r16
	brsh .L47
	mov r17,r14
.L47:
	sts i2c_buf,r11
	sts i2c_buf+1,r10
	sts i2c_buf+2,r13
	sts i2c_buf+3,r17
	mul r17,r12
	mov r15,r0
	clr r1
	ldi r24,lo8(i2c_buf+4)
	ldi r25,hi8(i2c_buf+4)
	movw r22,r28
	mov r20,r15
	ldi r21,lo8(0)
	call memcpy_P
	mov r24,r15
	subi r24,lo8(-(4))
	sts i2c_tx_size,r24
	sts i2c_rx_size,r9
	call i2c_start_transmission
	call i2c_wait_transmission
	call i2c_status
	cpi r24,lo8(2)
	brne .L48
	lds r24,i2c_buf+1
	sts bgx1_x,r24
	lds r24,i2c_buf+2
	sts bgx1_y,r24
.L48:
	tst r17
	breq .L49
	mov r24,r17
	subi r24,lo8(-(-1))
	ldi r25,lo8(0)
	adiw r24,1
	mul r24,r6
	movw r18,r0
	mul r24,r7
	add r19,r0
	mul r25,r6
	add r19,r0
	clr r1
	add r28,r18
	adc r29,r19
	sub r16,r17
	brne .L50
.L44:
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
	pop r9
	pop r7
	pop r6
	ret
.L52:
	movw r18,r24
	subi r18,lo8(-(6))
	sbci r19,hi8(-(6))
	rjmp .L45
	.size	bgx1_drawBitmap_P, .-bgx1_drawBitmap_P
	.section	.text.bgx1_embeddedImage,"ax",@progbits
.global	bgx1_embeddedImage
	.type	bgx1_embeddedImage, @function
bgx1_embeddedImage:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,lo8(22)
	sts i2c_buf,r25
	ldi r25,lo8(26)
	sts i2c_buf+1,r25
	sts i2c_buf+2,r24
	ldi r24,lo8(3)
	sts i2c_tx_size,r24
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
	call i2c_status
	cpi r24,lo8(2)
	breq .L55
	ret
.L55:
	lds r24,i2c_buf+1
	sts bgx1_x,r24
	lds r24,i2c_buf+2
	sts bgx1_y,r24
	ret
	.size	bgx1_embeddedImage, .-bgx1_embeddedImage
	.section	.text.bgx1_lineTo,"ax",@progbits
.global	bgx1_lineTo
	.type	bgx1_lineTo, @function
bgx1_lineTo:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,lo8(22)
	sts i2c_buf,r25
	ldi r25,lo8(27)
	sts i2c_buf+1,r25
	sts i2c_buf+2,r24
	sts i2c_buf+3,r22
	ldi r24,lo8(4)
	sts i2c_tx_size,r24
	ldi r24,lo8(3)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
	call i2c_status
	cpi r24,lo8(2)
	breq .L58
	ret
.L58:
	lds r24,i2c_buf+1
	sts bgx1_x,r24
	lds r24,i2c_buf+2
	sts bgx1_y,r24
	ret
	.size	bgx1_lineTo, .-bgx1_lineTo
	.section	.text.bgx1_termClear,"ax",@progbits
.global	bgx1_termClear
	.type	bgx1_termClear, @function
bgx1_termClear:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(22)
	sts i2c_buf,r24
	ldi r24,lo8(48)
	sts i2c_buf+1,r24
	ldi r24,lo8(2)
	sts i2c_tx_size,r24
	ldi r24,lo8(1)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
/* epilogue start */
	ret
	.size	bgx1_termClear, .-bgx1_termClear
	.section	.text.bgx1_termGoto,"ax",@progbits
.global	bgx1_termGoto
	.type	bgx1_termGoto, @function
bgx1_termGoto:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,lo8(22)
	sts i2c_buf,r25
	ldi r25,lo8(49)
	sts i2c_buf+1,r25
	sts i2c_buf+2,r24
	sts i2c_buf+3,r22
	ldi r24,lo8(4)
	sts i2c_tx_size,r24
	ldi r24,lo8(1)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
/* epilogue start */
	ret
	.size	bgx1_termGoto, .-bgx1_termGoto
	.section	.text.bgx1_termScroll,"ax",@progbits
.global	bgx1_termScroll
	.type	bgx1_termScroll, @function
bgx1_termScroll:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,lo8(22)
	sts i2c_buf,r25
	ldi r25,lo8(50)
	sts i2c_buf+1,r25
	sts i2c_buf+2,r24
	ldi r24,lo8(3)
	sts i2c_tx_size,r24
	ldi r24,lo8(1)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
/* epilogue start */
	ret
	.size	bgx1_termScroll, .-bgx1_termScroll
	.section	.text.bgx1_termPrint,"ax",@progbits
.global	bgx1_termPrint
	.type	bgx1_termPrint, @function
bgx1_termPrint:
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	movw r22,r24
	ldi r24,lo8(22)
	sts i2c_buf,r24
	ldi r24,lo8(51)
	sts i2c_buf+1,r24
	movw r26,r22
	ld __tmp_reg__,X+
	tst __tmp_reg__
	brne .-6
	movw r20,r26
	subi r20,lo8(-(-1))
	sbci r21,hi8(-(-1))
	sub r20,r22
	sbc r21,r23
	mov r17,r20
	ldi r18,lo8(i2c_buf+2)
	ldi r19,hi8(i2c_buf+2)
	movw r24,r18
	ldi r21,lo8(0)
	call memcpy
	subi r17,lo8(-(2))
	sts i2c_tx_size,r17
	ldi r24,lo8(2)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
/* epilogue start */
	pop r17
	ret
	.size	bgx1_termPrint, .-bgx1_termPrint
	.section	.text.bgx1_termPrint_P,"ax",@progbits
.global	bgx1_termPrint_P
	.type	bgx1_termPrint_P, @function
bgx1_termPrint_P:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
	ldi r24,lo8(22)
	sts i2c_buf,r24
	ldi r24,lo8(51)
	sts i2c_buf+1,r24
	movw r24,r28
	call strlen_P
	mov r17,r24
	ldi r24,lo8(i2c_buf+2)
	ldi r25,hi8(i2c_buf+2)
	movw r22,r28
	mov r20,r17
	ldi r21,lo8(0)
	call memcpy_P
	subi r17,lo8(-(2))
	sts i2c_tx_size,r17
	ldi r24,lo8(2)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
	.size	bgx1_termPrint_P, .-bgx1_termPrint_P
	.section	.text.bgx1_syncPort,"ax",@progbits
.global	bgx1_syncPort
	.type	bgx1_syncPort, @function
bgx1_syncPort:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(22)
	sts i2c_buf,r24
	ldi r24,lo8(64)
	sts i2c_buf+1,r24
	lds r24,bgx1_DDR
	sts i2c_buf+2,r24
	lds r24,bgx1_PORT
	sts i2c_buf+3,r24
	ldi r24,lo8(4)
	sts i2c_tx_size,r24
	ldi r24,lo8(2)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
	lds r24,i2c_buf+1
	sts bgx1_PIN,r24
/* epilogue start */
	ret
	.size	bgx1_syncPort, .-bgx1_syncPort
	.section	.text.bgx1_getAnalog,"ax",@progbits
.global	bgx1_getAnalog
	.type	bgx1_getAnalog, @function
bgx1_getAnalog:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,lo8(22)
	sts i2c_buf,r25
	ldi r25,lo8(65)
	sts i2c_buf+1,r25
	sts i2c_buf+2,r24
	ldi r24,lo8(3)
	sts i2c_tx_size,r24
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
	lds r19,i2c_buf+1
	ldi r18,lo8(0)
	lds r24,i2c_buf+2
	add r18,r24
	adc r19,__zero_reg__
	movw r24,r18
/* epilogue start */
	ret
	.size	bgx1_getAnalog, .-bgx1_getAnalog
	.section	.text.bgx1_syncInterface,"ax",@progbits
.global	bgx1_syncInterface
	.type	bgx1_syncInterface, @function
bgx1_syncInterface:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(22)
	sts i2c_buf,r24
	ldi r24,lo8(66)
	sts i2c_buf+1,r24
	lds r24,bgx1_Leds
	sts i2c_buf+2,r24
	ldi r24,lo8(3)
	sts i2c_tx_size,r24
	ldi r24,lo8(2)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
	lds r24,i2c_buf+1
	sts bgx1_Keys,r24
/* epilogue start */
	ret
	.size	bgx1_syncInterface, .-bgx1_syncInterface
	.section	.text.bgx1_setIllumination,"ax",@progbits
.global	bgx1_setIllumination
	.type	bgx1_setIllumination, @function
bgx1_setIllumination:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(22)
	sts i2c_buf,r18
	ldi r18,lo8(67)
	sts i2c_buf+1,r18
	sts i2c_buf+2,r25
	sts i2c_buf+3,r24
	ldi r24,lo8(4)
	sts i2c_tx_size,r24
	ldi r24,lo8(1)
	sts i2c_rx_size,r24
	call i2c_start_transmission
	call i2c_wait_transmission
/* epilogue start */
	ret
	.size	bgx1_setIllumination, .-bgx1_setIllumination
.global	bgx1_DDR
.global	bgx1_DDR
	.section .bss
	.type	bgx1_DDR, @object
	.size	bgx1_DDR, 1
bgx1_DDR:
	.skip 1,0
.global	bgx1_PORT
.global	bgx1_PORT
	.type	bgx1_PORT, @object
	.size	bgx1_PORT, 1
bgx1_PORT:
	.skip 1,0
.global	bgx1_PIN
.global	bgx1_PIN
	.type	bgx1_PIN, @object
	.size	bgx1_PIN, 1
bgx1_PIN:
	.skip 1,0
.global	bgx1_Leds
.global	bgx1_Leds
	.type	bgx1_Leds, @object
	.size	bgx1_Leds, 1
bgx1_Leds:
	.skip 1,0
.global	bgx1_Keys
.global	bgx1_Keys
	.type	bgx1_Keys, @object
	.size	bgx1_Keys, 1
bgx1_Keys:
	.skip 1,0
	.comm bgx1_x,1,1
	.comm bgx1_y,1,1
.global __do_clear_bss
