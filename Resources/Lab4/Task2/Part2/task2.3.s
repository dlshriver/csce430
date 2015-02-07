.text
.global _start
.equ PUSH, 0x10000050
.equ HEX, 0x10000020

_start:
	movia r1, HEX
	movia r2, PUSH
	movia r5, 0x775E5E /* Add */
	movia r6, 0x6D1C7C /* Sub */
KEY2_NOT_PRESSED:
	ldwio r7, 0(r2) /* load data register of push button */
	stwio r5, 0(r1) /* store add to HEX */
	movia r3, 0x00000004 /* our check value */
	and r7, r7, r3 /* to perform a change when the button is pushed */
	beq r7, r3, KEY2_PRESSED /* branch if we push the button */
	br KEY2_NOT_PRESSED /* else key isn't pushed */
KEY2_PRESSED:
	stwio r6, 0(r1) /* basically the same code here down except for if the key is pressed */
	ldwio r7, 0(r2)
	movia r3, 0x00000004
	and r7, r7, r3
	beq r7, r3, KEY2_PRESSED
	br KEY2_NOT_PRESSED
.end