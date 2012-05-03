	.file	"process.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.ProcessGraveyard,"ax",@progbits
.global	ProcessGraveyard
	.type	ProcessGraveyard, @function
ProcessGraveyard:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L2:
	call processor_idle
	rjmp .L2
	.size	ProcessGraveyard, .-ProcessGraveyard
	.section	.text._init_processes,"ax",@progbits
.global	_init_processes
	.type	_init_processes, @function
_init_processes:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(16639)
	ldi r19,hi8(16639)
	lds r20,__default_stack_size
	lds r21,__default_stack_size+1
	sub r18,r20
	sbc r19,r21
	sts __malloc_heap_end+1,r19
	sts __malloc_heap_end,r18
	sts __malloc_margin+1,__zero_reg__
	sts __malloc_margin,__zero_reg__
	mov r22,r24
	ldi r23,lo8(0)
	subi r22,lo8(-(2))
	sbci r23,hi8(-(2))
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	call calloc
	movw r30,r24
	sbiw r24,0
	breq .L4
	std Z+1,__zero_reg__
	st Z,__zero_reg__
.L4:
	sts __current_process+1,r31
	sts __current_process,r30
/* epilogue start */
	ret
	.size	_init_processes, .-_init_processes
	.section	.fini1,"ax",@progbits
.global	MainProcessEnd
	.type	MainProcessEnd, @function
MainProcessEnd:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L7:
	call processor_idle
	rjmp .L7
	.size	MainProcessEnd, .-MainProcessEnd
	.section	.text.createProcess3,"ax",@progbits
.global	createProcess3
	.type	createProcess3, @function
createProcess3:
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
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r13,r24
	mov r12,r25
	movw r14,r22
	movw r10,r20
	movw r24,r20
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	std Y+1,r18
	call calloc
	movw r16,r24
	ldd r18,Y+1
	sbiw r24,0
	breq .L13
	movw r20,r10
	add r20,r24
	adc r21,r25
	ldi r24,lo8(gs(ProcessGraveyard))
	ldi r25,hi8(gs(ProcessGraveyard))
	movw r26,r20
	st X,r24
	movw r30,r20
	sbiw r30,1
	st Z,r25
	movw r30,r20
	sbiw r30,2
	st Z,r13
	movw r30,r20
	sbiw r30,3
	st Z,r12
	mov r22,r18
	ldi r23,lo8(0)
	subi r22,lo8(-(2))
	sbci r23,hi8(-(2))
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	std Y+1,r20
	std Y+2,r21
	call calloc
	movw r30,r24
	ldd r20,Y+1
	ldd r21,Y+2
	sbiw r24,0
	breq .L10
	movw r24,r20
	sbiw r24,38
	std Z+1,r25
	st Z,r24
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L15
.L11:
	movw r26,r20
	sbiw r26,30
	st X,r14
	subi r20,lo8(-(-31))
	sbci r21,hi8(-(-31))
	movw r26,r20
	st X,r15
.L9:
	movw r24,r30
/* epilogue start */
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
	ret
.L13:
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	rjmp .L9
.L10:
	movw r24,r16
	call free
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	rjmp .L9
.L15:
	movw r14,r30
	rjmp .L11
	.size	createProcess3, .-createProcess3
	.section	.text.createProcess2,"ax",@progbits
.global	createProcess2
	.type	createProcess2, @function
createProcess2:
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
/* stack size = 8 */
.L__stack_usage = 8
	movw r12,r24
	movw r14,r22
	lds r28,__default_stack_size
	lds r29,__default_stack_size+1
	movw r24,r28
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call calloc
	movw r16,r24
	sbiw r24,0
	breq .L21
	add r28,r24
	adc r29,r25
	ldi r18,lo8(gs(ProcessGraveyard))
	ldi r19,hi8(gs(ProcessGraveyard))
	st Y,r18
	movw r30,r28
	sbiw r30,1
	st Z,r19
	movw r30,r28
	sbiw r30,2
	st Z,r12
	movw r30,r28
	sbiw r30,3
	st Z,r13
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call calloc
	movw r30,r24
	sbiw r24,0
	breq .L18
	movw r24,r28
	sbiw r24,38
	std Z+1,r25
	st Z,r24
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L23
.L19:
	movw r26,r28
	sbiw r26,30
	st X,r14
	sbiw r28,31
	st Y,r15
.L17:
	movw r24,r30
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
.L21:
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	rjmp .L17
.L18:
	movw r24,r16
	call free
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	rjmp .L17
.L23:
	movw r14,r30
	rjmp .L19
	.size	createProcess2, .-createProcess2
	.section	.text.createProcess,"ax",@progbits
.global	createProcess
	.type	createProcess, @function
createProcess:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r14,r24
	lds r28,__default_stack_size
	lds r29,__default_stack_size+1
	movw r24,r28
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call calloc
	movw r16,r24
	sbiw r24,0
	breq .L27
	add r28,r24
	adc r29,r25
	ldi r18,lo8(gs(ProcessGraveyard))
	ldi r19,hi8(gs(ProcessGraveyard))
	st Y,r18
	movw r30,r28
	sbiw r30,1
	st Z,r19
	movw r30,r28
	sbiw r30,2
	st Z,r14
	movw r30,r28
	sbiw r30,3
	st Z,r15
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call calloc
	mov r18,r25
	mov r30,r24
	mov r31,r25
	sbiw r30,0
	breq .L26
	movw r24,r28
	sbiw r24,38
	std Z+1,r25
	st Z,r24
	movw r26,r28
	sbiw r26,30
	st X,r30
	sbiw r28,31
	st Y,r18
	movw r24,r30
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L27:
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	movw r24,r30
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L26:
	movw r24,r16
	call free
	ldi r30,lo8(0)
	ldi r31,hi8(0)
	movw r24,r30
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	createProcess, .-createProcess
	.section	.text.switchContext,"ax",@progbits
.global	switchContext
	.type	switchContext, @function
switchContext:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  88 "../processes/process.c" 1
	push r0				
in r0, __SREG__		
cli					
push r0				
in r0, __RAMPZ__		
push r0				
push r1				
clr r1				
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
push r28			
push r29			
push r30			
push r31			

 ;  0 "" 2
 ;  89 "../processes/process.c" 1
	movw r26, r24
 ;  0 "" 2
 ;  90 "../processes/process.c" 1
	in r0, __SP_L__			
st X+, r0					
in r0, __SP_H__			
st X+, r0					

 ;  0 "" 2
 ;  91 "../processes/process.c" 1
	movw r26, r22
 ;  0 "" 2
 ;  92 "../processes/process.c" 1
	ld r0, X+					
out __SP_L__, r0			
ld r0, X+					
out __SP_H__, r0			

 ;  0 "" 2
 ;  93 "../processes/process.c" 1
	pop r31			
pop r30			
pop r29			
pop r28			
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
pop r1				
pop r0						
out __RAMPZ__, r0			
pop r0						
out __SREG__, r0			
pop r0						

 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
	.size	switchContext, .-switchContext
	.section	.text.getCurrentProcess,"ax",@progbits
.global	getCurrentProcess
	.type	getCurrentProcess, @function
getCurrentProcess:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,__current_process
	lds r25,__current_process+1
/* epilogue start */
	ret
	.size	getCurrentProcess, .-getCurrentProcess
	.section	.text.switchProcess,"ax",@progbits
.global	switchProcess
	.type	switchProcess, @function
switchProcess:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r22,r24
	lds r24,__current_process
	lds r25,__current_process+1
	sts __current_process,r22
	sts __current_process+1,r23
	call switchContext
/* epilogue start */
	ret
	.size	switchProcess, .-switchProcess
	.section	.text.getProcessMemory,"ax",@progbits
.global	getProcessMemory
	.type	getProcessMemory, @function
getProcessMemory:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r18,r24
	subi r18,lo8(-(2))
	sbci r19,hi8(-(2))
	movw r24,r18
/* epilogue start */
	ret
	.size	getProcessMemory, .-getProcessMemory
.global	__current_process
.global	__current_process
	.section .bss
	.type	__current_process, @object
	.size	__current_process, 2
__current_process:
	.skip 2,0
.global	__default_stack_size
	.data
	.type	__default_stack_size, @object
	.size	__default_stack_size, 2
__default_stack_size:
	.word	512
.global __do_copy_data
.global __do_clear_bss
