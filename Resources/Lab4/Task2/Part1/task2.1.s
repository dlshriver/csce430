.text
.global _start
.equ RED_LEDS, 0x10000000

_start:
	movia r1, RED_LEDS
	movia r2, 0x00000400 /* start a little outside of LEDR9 */
	addi r3, r0, 1 /* set increment */
MAIN:
	ror r2, r2, r3 /* rotate right by r3 */
	bgt r2, r0, SET /* while greater than do normal set for next value */
	movia r2, 0x00000200 /* otherwise set to LEDR9 */
SET:
	stwio r2, 0(r1)
DELAY: /* simple delay setup */
	movia r10, 1050000
LOOP:
	addi r10, r10, -1
	bne r10, r0, LOOP
	br MAIN
.end