/*
	Created by: Zachary Sims
	Date	  :	02/20/2014
*/
.equ	TIMER, 			0x10002000
.equ	TIME, 			0x017D7840		/*Calculate the amount we want the timer to be here for a 1/2 second delay*/
.equ	PUSH_BUTTONS, 	0x10000050
.equ	HEX_DISPLAY,	0x10000020 	
.equ	RED_LEDS, 		0x10000000
.equ	GREEN_LEDS, 	0x10000010

.text
.global _start
.global	PUSH_BUTTONS
.global TIMER

_start:
	movia	sp, 0x007FFFFC		/*Set the stack pointer to the maximum value*/
	
	movia	r3, TIMER			/*Load the base address of the timer*/
	movia	r2, TIME			/*Load the time you calculated for 1/2 sec intervals*/
/**/	sthio	r2, 8(r3)			/*Set the lower value of the timer, What is the offset for the lower half*/
/**/	srli	r2, r2, 16			/*Shift the value so we can set the upper value of the timer, What is the amount to shift?*/
/**/	sthio	r2, 0xC(r3) 			/*Set the upper value of the timer, What is the offset for the upper half*/
	
/**/	movi	r4, 0b0111			/*We need to start the interrupt timer and enable its interrupts, What is the binary value for START,CONT,ITO to be 1*/
/**/	sthio	r4, 4(r3)			/*Set the control bits of the timer, What is the offset from the base for these?*/
	
	movia	r5, PUSH_BUTTONS	/*Load the base address of the push buttons*/
/**/	movi	r6, 0b01110			/*Set the key 1,2, and 3 interrupt mask bits, what is the binary value*/
/**/	stwio	r6, 8(r5)			/*Set the mask register of the push buttons to that value, what is the offset for this?*/
	
/**/	movi	r7, 0b011			/*Set interrupt mask bits for timer and for push buttons, what is the binary for the timer and the pushbuttons?*/
/**/	wrctl	ienable, r7			/*What register do I write to?*/
	movi	r7, 1
/**/	wrctl	status, r7			/*Turn on NIOS II interrupt processing, what register do I write to?*/

/*
	The below code is what the program will be doing inbetween interrupts
	At first it will simply display "PLaY" on the Hex display.  This lasts
	until the first timer interrupts occurs. After that, it will display
	the current number on the hex, the number to match on the green leds,
	and the number of attempts on the red leds.  It keeps checking the
	game_over variable, and while it is 1 the game continues.  Once 
	game_over becomes 0, it displays dOnE on the screen, and the game is over
*/	
	movia	r3, HEX_DISPLAY		/*Load the address of the hex display*/
	movia	r2, RED_LEDS		/*Load the address of the RED_LEDS*/
	movia	r10, GREEN_LEDS		/*Load the address of the GREEN_LEDS*/
	
BEGINNING:	
	movia	r11, VALUE_TO_MATCH
	ldb		r11, (r11)			/*Store the number we want to find (in binary), on the green leds*/
	stwio	r11, (r10)
	movia	r9, DISPLAYED		/*Check if the game has started*/
	ldb		r9, (r9)
	bne		r9, r0, STARTED		/*If started, then don't display PLAY*/
	movia	r4, 0x73387766
	stwio	r4, (r3)			/*Display PLAY on HEX until first number on monitor*/	
	br BEGINNING
	
STARTED:
	movia	r6, ATTEMPTS		/*Load the number of attempts*/
	ldb		r6, (r6)			
	stwio	r6, (r2)			/*Display the number of attempts on the leds in binary*/
	movia	r7, HEX_VALUE_DISPLAY
	ldw		r7, (r7)			/*Load the value to be displayed that was calcualted when the timer interrupted*/
	stwio	r7, (r3)			/*Display the value*/
	
	movia	r8, GAME_OVER		/*Load the status of the game*/
	ldb		r8, (r8)
	bne		r8, r0, STARTED		/*As long as it remains not zero, the game is still going*/
	
	movia	r7, DONE			/*The game is over*/
	ldw		r7, (r7)			/*Load the final message of the game*/
	stwio	r7, (r3)

	movi	r7, 0				
	wrctl	status, r7			/*Turn off the NIOS ii interrupt system*/
FINISHED:
	br FINISHED

.data
	.global	HEX_VALUE_DISPLAY
	HEX_VALUE_DISPLAY:
		.word	0b01111111
	.global VALUE_TO_DISPLAY
	VALUE_TO_DISPLAY:
		.byte	0b0
	.global VALUE_TO_MATCH
	VALUE_TO_MATCH:
		.byte	1
	.global ATTEMPTS
	ATTEMPTS:
		.byte	0b0
	.global DISPLAYED
	DISPLAYED:
		.byte	0b0
	.global GAME_OVER
	GAME_OVER:
		.byte	0b1
	PLAY:
		.word	0x73387766
	DONE:
		.word	0x5E3F5479
	.global ONE_TRY
	ONE_TRY:
		.byte	0b1
.end