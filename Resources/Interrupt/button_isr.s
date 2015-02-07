/*
	Created by: Zachary Sims
	Date	  :	02/20/2014
*/
.extern	VALUE_TO_DISPLAY
.extern	VALUE_TO_MATCH
.extern	ATTEMPTS
.extern	GAME_OVER
.extern PUSH_BUTTONS
.extern ONE_TRY

.global _BUTTON_ISR

_BUTTON_ISR:
	subi	sp, sp, 20
	stw		ra, 0(sp)
	stw		r2, 4(sp)
	stw		r3, 8(sp)
	stw		r4, 12(sp)
	stw		r5, 16(sp)
	
	movia	r2, PUSH_BUTTONS		/*Load the base address of the PUSH_BUTTONS*/
/**/	stwio	r0, 0xC(r2)				/*Clear the interrupts, What is the offset to clear the interrupts?*/


/*
	This is the code that occurs every time there is a button
	pressed (excluding the last button).  We first want to check
	if we haven't already tried on the current number.  There is no
	point in clicking multiple times if the number stays the same.
	Then we increment the number of attempts.  Finally we check
	if the number they pressed on is the number that we want to
	match.  If it is, then we set game_over to 0 and the main
	knows to end the game. Otherwise we simply return.
*/	
	movia	r2, ONE_TRY				/*Only one click per number displayed*/
	ldb		r3, (r2)
	beq		r3, r0, INCORRECT		/*If it is zero than we cannot try until the next timer interrupt*/
	movi	r3, 0
	stb		r3, (r2)
	
	movia	r5, ATTEMPTS			/*Load the global that holds the number of attempts*/
	ldb		r4, (r5)				/*Load its value*/
	addi	r4, r4, 1				/*Increment it*/
	stb		r4, (r5)				/*Store the updated value back at ATTEMPTS*/
	
	movia	r5, VALUE_TO_DISPLAY	/*Load the value that is being displayed*/
	ldb		r5, (r5)
	movia	r4, VALUE_TO_MATCH		/*Load the value we are looking for*/
	ldb		r4, (r4)
	
	bne		r5, r4, INCORRECT		/*If the values are not the same, then simply return*/
	
	movia	r5, GAME_OVER			/*If they are, then we need to set GAME_OVER to 0*/
	movi	r4, 0
	stb		r4, (r5)				/*If this occurs, then the game will display DONE, and wait for a reset*/
	
INCORRECT:
	ldw		ra, 0(sp)
	ldw		r2, 4(sp)
	ldw		r3, 8(sp)
	ldw		r4, 12(sp)
	ldw		r5, 16(sp)
	addi	sp, sp, 20
	ret
.end