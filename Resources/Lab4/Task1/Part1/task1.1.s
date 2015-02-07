.text
.global _start
.equ RED_LEDS, 0x10000000
.equ SWITCHES, 0x10000040

_start:
	movia r2, RED_LEDS /* move RED_LEDS value to a register */
	movia r3, SWITCHES /* same with switches */
LOOP:
	ldwio r4, 0(r3) /* check if switch is one */
	stwio r4, 0(r2) /* store to red LEDs */
	br LOOP
.end