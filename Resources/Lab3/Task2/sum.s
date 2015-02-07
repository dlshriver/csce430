.text
.global SUM

SUM:
	addi sp, sp, -16
	stw r2, 0(sp)  /*push the original values in registers you are using into stack*/
	stw r3, 4(sp)
	stw r4, 8(sp)
	stw r5, 12(sp)
	ldw r2, 16(sp) /*load the address of that array*/
	add r3, r0, r0 /*counter*/
	add r4, r0, r2 /*get the starting address of the array*/
	add r5, r0, r0 /*store the sum of the array*/
	addi r2, r0, 10 /*used as a reference in the comparision*/
LOOP:
	ldw r2, (r4) /*load element in that array*/
	addi r3, r3, 1 /*increase the counter*/
	addi r4, r4, 4 /*get the address of next element in that array*/
	add r5, r5, r2 /*sum up*/
	addi r2, r0, 9 /*used as a reference in the comparision*/
	ble r3, r2, LOOP
	stw r5, 16(sp)  /*save the result on stack*/
/*restoring*/	
	ldw r2, 0(sp)
	ldw r3, 4(sp)
	ldw r4, 8(sp)
	ldw r5, 12(sp)
	addi sp, sp, 16 /*after this instruction, the first element on your stack is RA, then the result*/
	ret