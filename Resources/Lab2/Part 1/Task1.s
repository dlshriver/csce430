	.text
	.global _start
_start:
	addi r2, r0, 20 /* counter = 20 */
	addi r3, r0, 40 /* end = 40 */
	addi r4, r0, 0 /* initialize at 0 this is where the sum goes */
LOOP:
	add r4, r4, r2 /* r4 = r4 + r2 */
	addi r2, r2, 1 /* increment counter */
	ble r2, r3, LOOP
	bgt r2, r3, FINISH
FINISH:
.end