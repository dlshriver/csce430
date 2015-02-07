	.text
	.global _start
_start:
	addi r1, r0, 15 /* counter = 15 */
	addi r4, r0, 0 /* initialize at 0 */
	addi r3, r0, 0 /* initialize at 0 */
	movia r2, ARR /* get the array from data */
	LOOP:
		ldw r3, (r2) /* load the value */
		add r4, r4, r3 /* get the sum */
		subi r1, r1, 1 /* increment the counter (taking one away) */
		addi r2, r2, 4 /* move ahead in the array */
		bgt r1, r0, LOOP /* repeat loop */
FINISH:
.data
	ARR: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
.end