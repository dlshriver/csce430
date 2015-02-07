.text
.global _start
.extern LABEL
_start:
	movia sp, 0x007FFFFC /* initialize stack */
	addi r2, r0, 2 /* set r2 to 2 */
	addi r3, r0, 4 /* set r3 to 4 */
	addi sp, sp, -8 /* decrement stack pointer */
	stw r2, 0(sp) /* push value of r2 onto stack */
	stw r3, 4(sp) /* push value of r3 onto stack */
	call LABEL /* call LABEl located in mult.s */
	ldw r4, (sp) /* return value of mult into r4 */
	addi sp, sp, 8 /* restore stack pointer to where it was */
.end