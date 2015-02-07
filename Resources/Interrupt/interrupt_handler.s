/*
	Created by: Zachary Sims
	Date	  :	02/20/2014
*/
/*
	This is the reset section.  It is located
	at the top of the memory.  Whenever key_0
	is pressed, it is suppose to go here.
*/
.section	.reset, "ax"
	movia	r2, _start
	jmp 	r2
	
/*
	This is the exceptions section
	This is where we will check what interrupts occurred
*/
.section 	.exceptions, "ax"
.global		_EXCEPTION_HANDLER

_EXCEPTION_HANDLER:
	subi	sp, sp, 16
/**/	stw		et, 0(sp)						/*This should be the special register that can hold the interrupt status*/
	
/**/	rdctl	et, ctl4						/*Read the interrupt status from the control register mentioned in the document and stored it in*/
											/*  the special register	*/
/**/	beq		et, r0, INTERNAL_INTERRUPT		/*Check if internal/external interrupt, This should also be that special register*/
			
	subi	ea, ea, 4						/*Decrement ea if external so the program will return normally*/
	
	
INTERNAL_INTERRUPT:
	stw		ea, 4(sp)
	stw		ra, 8(sp)
	stw		r22, 12(sp)
	
/**/	rdctl	et, ctl4						/*Read the interrupt status from the control register mentioned in the document and stored it in*/
											/*  the special register	*/
/**/	bne		et, r0, CHECK_TIMER				/*If external, then check if timer first, This should also be that special register*/
	
NOT_EI:
	br		END_ISR							/*We don't care about internal_interrupt*/
	
CHECK_TIMER:
/**/	andi	r22, et, 0b01					/*Check if it is level 0.  This should be done by comparing that special register and a specific value*/
	beq		r22, r0, CHECK_BUTTON			/*The specific value depends on the bit location of the ienable register you set up earlier*/
	call	_TIMER_ISR
	br		END_ISR
	
CHECK_BUTTON:
/**/	andi	r22, et, 0b10					/*Check if it is level 1.  This should be done by comparing that special register and a specific value*/
	beq		r22, r0, END_ISR				/*The specific value depends on the bit location of the ienable register you set up earlier*/
	call	_BUTTON_ISR
	
END_ISR:
/**/	ldw		et, 0(sp)						/*Load back the original value of that special register*/
	ldw		ea, 4(sp)
	ldw		ra, 8(sp)
	ldw		r22, 12(sp)
	addi	sp, sp, 16
	
	eret
.end