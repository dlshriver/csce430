/*
	Created by: Zachary Sims
	Date	  :	02/20/2014
*/
.extern	HEX_VALUE_DISPLAY
.extern	VALUE_TO_DISPLAY
.extern	DISPLAYED
.extern TIMER
.extern ONE_TRY

.global	_TIMER_ISR
.equ MAX, 61
_TIMER_ISR:
	subi	sp, sp, 24
	stw		ra, 0(sp)
	stw		r2, 4(sp)
	stw		r3, 8(sp)
	stw		r4, 12(sp)
	stw		r5, 16(sp)
	stw		r6, 20(sp)
	
	movia	r2, TIMER		/*Load the base address of the timer*/
/**/	sthio	r0, 0(r2)		/*Clear the interrupt, what is the offset to clear the interrupt?*/
	
/*
	The below code is what occurs every time there is a timer interrupt.
	We first want to let the main program know that the game has started
	by setting displayed to 1.  Then we want to reset the try variable
	so that the user can have an attempt at pressing the button.
	Then we determine what the next value to display is by simply
	loading a "random" number and displaying it.
*/
	
	movia	r3, DISPLAYED	/*Need to let the main now we have started*/
	movi	r2, 1
	stb		r2, (r3)		/*Set displayed to 1*/
	
	movia	r3, ONE_TRY		/*A new number is being displayed*/
	movi	r2, 1
	stb		r2, (r3)		/*We want to let the user try again*/
	
	movia	r2, INDEX
	movia	r5, VALUE_TO_DISPLAY
	movia	r6, RANDOM
	movi	r3, MAX			/*Maximum value of array index*/
	
	ldb		r4, (r2)		/*Load the index*/
	add		r6, r6, r4		/*Increment the pointer*/
	addi	r4, r4, 1		/*Increment the index*/
	blt		r4, r3, NOT_OVER	/*If less than 10, than simply store the new index back*/	
	movi		r4, 0			/*Otherwise reset to zero */
NOT_OVER:
	stb		r4, (r2)
	
	ldb		r3, (r6)		/*Load the next "random" number*/
	stb		r3, (r5)		/*This is the value that will be on the display*/

	movia	r6, NUMBERS	
	movia	r5, HEX_VALUE_DISPLAY
	add		r6, r6, r3	
	ldb		r4, (r6)		/*Load the hex value to represent the number chosen*/
	stw		r4, (r5)		/*Store it here so the main program will load it and display it*/
	
	ldw		ra, 0(sp)
	ldw		r2, 4(sp)
	ldw		r3, 8(sp)
	ldw		r4, 12(sp)
	ldw		r5, 16(sp)
	ldw		r6, 20(sp)
	addi	sp, sp, 24
	ret
	
.data
	RANDOM:
		.byte	8,2,7,6,1,3,9,0,4,5,8,6,1,4,0,2,3,9,4,0,5,8,6,3,1,4,0,5,4,6,7,4,9,2,1,5,7,0,3,9,0,1,5,8,9,3,1,4,2,3,5,7,8,6,3,1,0,2,3,6,4		/*Random number generation is difficult in assembly.  So we simply set up a specific random order*/
	INDEX:
		.byte	18
	NUMBERS:
		.byte	0b00111111, 0b00000110, 0b01011011, 0b01001111, 0b01100110, 0b01101101, 0b01111101, 0b00100111, 0b01111111, 0b01100111
.end
