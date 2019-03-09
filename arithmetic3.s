.section .data

val1: .byte -60
val2: .byte 11
val3: .byte 16

.section .text
.globl _start
_start:

	ldr r1, =val1
	ldrsb r1, [r1]
	ldr r2, =val2
	ldrb r2, [r2]
	ldr r3, =val3
	ldrb r3, [r3]
	
	add r2, r2, #3
	sub r3, r3, r1
	add r2, r2, r3

	mov r7, #1
	svc #0

.end
