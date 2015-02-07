.text
.global LABEL
	
	LABEL:
		addi sp, sp, -16 /* decrement stack pointer */
		stw r2, 0(sp) /* store r2 */
		stw r3, 4(sp) /* store r3 */
		stw r4, 8(sp) /* store r4 */
		stw r5, 12(sp) /* store r5 */
		ldw r2, 16(sp) /* load value of r2 onto stack at 16 */
		ldw r3, 20(sp) /* load value of r3 onto stack at 20 */
		slli r4, r2, 3 /* do the shift for x*8 */
		slli r5, r2, 2 /* do the shift for x*4 */
		add r4, r4, r5 /* add the x*8 value to the x*4 value getting x*12 */
		add r4, r4, r3 /* add y to x*12 */
		stw r4, 16(sp) /* store the value onto the stack */
		ldw r2, 0(sp) /* load old registers from here down */
		ldw r3, 4(sp)
		ldw r4, 8(sp)
		ldw r5, 12(sp)
		addi sp, sp, 16 /* reset stack pointer */
		ret /* return to main */
.end