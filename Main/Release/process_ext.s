	.file	"process_ext.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.createProcessExt3,"ax",@progbits
.global	createProcessExt3
	.type	createProcessExt3, @function
createProcessExt3:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r20
	subi r18,lo8(-(6))
	call createProcess3
	movw r16,r24
	sbiw r24,0
	breq .L2
	call getProcessMemory
	movw r30,r24
	lds r24,__nextProcessNumber
	lds r25,__nextProcessNumber+1
	std Z+1,r25
	st Z,r24
	adiw r24,1
	sts __nextProcessNumber+1,r25
	sts __nextProcessNumber,r24
	std Z+3,r29
	std Z+2,r28
	ldi r18,lo8(38)
	ldi r19,hi8(38)
	sub r18,r28
	sbc r19,r29
	movw r26,r16
	ld r24,X+
	ld r25,X
	sbiw r26,1
	add r24,r18
	adc r25,r19
	std Z+5,r25
	std Z+4,r24
.L2:
	movw r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	createProcessExt3, .-createProcessExt3
	.section	.text.createProcessExt2,"ax",@progbits
.global	createProcessExt2
	.type	createProcessExt2, @function
createProcessExt2:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	lds r28,__default_stack_size
	lds r29,__default_stack_size+1
	movw r20,r28
	ldi r18,lo8(6)
	call createProcess3
	movw r16,r24
	sbiw r24,0
	breq .L5
	call getProcessMemory
	movw r30,r24
	lds r24,__nextProcessNumber
	lds r25,__nextProcessNumber+1
	std Z+1,r25
	st Z,r24
	adiw r24,1
	sts __nextProcessNumber+1,r25
	sts __nextProcessNumber,r24
	std Z+3,r29
	std Z+2,r28
	ldi r18,lo8(38)
	ldi r19,hi8(38)
	sub r18,r28
	sbc r19,r29
	movw r26,r16
	ld r24,X+
	ld r25,X
	sbiw r26,1
	add r24,r18
	adc r25,r19
	std Z+5,r25
	std Z+4,r24
.L5:
	movw r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	createProcessExt2, .-createProcessExt2
	.section	.text.createProcessExt,"ax",@progbits
.global	createProcessExt
	.type	createProcessExt, @function
createProcessExt:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	lds r28,__default_stack_size
	lds r29,__default_stack_size+1
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	movw r20,r28
	ldi r18,lo8(6)
	call createProcess3
	movw r16,r24
	sbiw r24,0
	breq .L7
	call getProcessMemory
	movw r30,r24
	lds r24,__nextProcessNumber
	lds r25,__nextProcessNumber+1
	std Z+1,r25
	st Z,r24
	adiw r24,1
	sts __nextProcessNumber+1,r25
	sts __nextProcessNumber,r24
	std Z+3,r29
	std Z+2,r28
	ldi r18,lo8(38)
	ldi r19,hi8(38)
	sub r18,r28
	sbc r19,r29
	movw r26,r16
	ld r24,X+
	ld r25,X
	sbiw r26,1
	add r24,r18
	adc r25,r19
	std Z+5,r25
	std Z+4,r24
.L7:
	movw r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	createProcessExt, .-createProcessExt
	.section	.text.freeProcess,"ax",@progbits
.global	freeProcess
	.type	freeProcess, @function
freeProcess:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	call getCurrentProcess
	cp r28,r24
	cpc r29,r25
	breq .L8
	movw r24,r28
	call getProcessMemory
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	brne .L11
.L10:
	movw r24,r28
	call free
.L8:
/* epilogue start */
	pop r29
	pop r28
	ret
.L11:
	ldd r24,Z+4
	ldd r25,Z+5
	call free
	rjmp .L10
	.size	freeProcess, .-freeProcess
	.section	.text.getProcessStackSize,"ax",@progbits
.global	getProcessStackSize
	.type	getProcessStackSize, @function
getProcessStackSize:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call getProcessMemory
	movw r30,r24
	ldd r24,Z+2
/* epilogue start */
	ret
	.size	getProcessStackSize, .-getProcessStackSize
	.section	.text.getFreeProcessStackSize,"ax",@progbits
.global	getFreeProcessStackSize
	.type	getFreeProcessStackSize, @function
getFreeProcessStackSize:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	call getProcessMemory
	movw r30,r24
	ldd r18,Z+4
	ldd r19,Z+5
	ld r24,Y
	ldd r25,Y+1
	sub r18,r24
	sbc r19,r25
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	getFreeProcessStackSize, .-getFreeProcessStackSize
	.section	.text.getProcessNumber,"ax",@progbits
.global	getProcessNumber
	.type	getProcessNumber, @function
getProcessNumber:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call getProcessMemory
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
/* epilogue start */
	ret
	.size	getProcessNumber, .-getProcessNumber
	.section	.text.getProcessMemoryExt,"ax",@progbits
.global	getProcessMemoryExt
	.type	getProcessMemoryExt, @function
getProcessMemoryExt:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call getProcessMemory
	movw r18,r24
	subi r18,lo8(-(6))
	sbci r19,hi8(-(6))
	movw r24,r18
/* epilogue start */
	ret
	.size	getProcessMemoryExt, .-getProcessMemoryExt
	.section	.text._init_processes_ext,"ax",@progbits
.global	_init_processes_ext
	.type	_init_processes_ext, @function
_init_processes_ext:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	subi r24,lo8(-(6))
	call _init_processes
	lds r24,__current_process
	lds r25,__current_process+1
	call getProcessMemory
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	lds r24,__default_stack_size
	lds r25,__default_stack_size+1
	std Z+3,r25
	std Z+2,r24
	lds r24,__malloc_heap_end
	lds r25,__malloc_heap_end+1
	std Z+5,r25
	std Z+4,r24
/* epilogue start */
	ret
	.size	_init_processes_ext, .-_init_processes_ext
.global	__nextProcessNumber
.global	__nextProcessNumber
	.section .bss
	.type	__nextProcessNumber, @object
	.size	__nextProcessNumber, 2
__nextProcessNumber:
	.skip 2,0
.global __do_clear_bss
