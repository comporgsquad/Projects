.section .data

x: .word 5

.section .text
.globl _start
_start:
	ldr r1, =x
	ldr r1, [r1]
	ldr r2, =x
	
	cmp r1, #3
	ble thenpart
	sub r1, #2
	B endofif

thenpart:
	sub r1, #1

endofif:
	str r1, [r2]
	mov r7, #1
	svc #0
	.end
