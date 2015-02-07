.text
.global SUB
.extern SUM

SUB:
	addi sp, sp, -24
	stw ra, 4(sp)
	stw r1, 8(sp)
	stw r2, 12(sp)
	stw r3, 16(sp)
	stw r4, 20(sp)
	ldw r1, 24(sp)
	stw r1, 0(sp)
	addi r2, r0, 0
	addi r3, r0, 10
	LOOP:
		ldw r4, (r1) /*load element in that array*/
		sub r4,r4,r2
		stw r4,(r1)
		addi r2, r2, 1
		addi r1, r1, 4
		blt r2, r3, LOOP
	call SUM
	ldw ra, 4(sp)
	ldw r2, 0(sp)
	stw r2, 24(sp)
	ldw r1, 8(sp)
	ldw r2, 12(sp)
	ldw r3, 16(sp)
	ldw r4, 20(sp)
	addi sp, sp, 4
	ret
.end