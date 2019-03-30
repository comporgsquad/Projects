.section .data

xVal: .word 0

.section .text
.globl _start
_start:
	ldr r1, =xVal
	ldr r1, [r1]
	
	cmp r1, #3
	ble ifpart
	bgt elsepart

ifpart:
	sub r1, #1
	mov r4, #1
	str r1, [r2]
	B final 

elsepart:
	sub r1, #2
	@str r1, [r2]
	mov r5, #1
	mov r7, #1
final:
	svc #0
	.end
