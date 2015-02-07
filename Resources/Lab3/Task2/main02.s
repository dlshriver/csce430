.text
.global _start
.extern SUB

_start:
	movia sp, 0x007FFFFC /* initialize stack */
	movia r1, ARR /* get the array into a register */
	addi sp, sp, -4 /* decrement stack pointer */
	stw r1, 0(sp) /* push value of r1 onto stack, the array */
	call SUB
	ldw r4, 20(sp)
	addi sp, sp, 4
	
.data
ARR: .word 11, 12, 13, 14, 15, 16, 17, 18, 19, 20

.end