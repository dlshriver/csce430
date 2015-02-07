vsim alu
view wave
add wave A
add wave B
add wave A_inv
add wave B_inv
add wave alu_op
add wave ALU_out
add wave Z
add wave N
add wave C
add wave V

force A 0111110000111110 0 
force B 0100011000110000 0 
force alu_op 00 0 
force alu_op 01 200
force alu_op 10 400
force alu_op 11 600
force A_inv 0 0
force B_inv 0 0

force A 0000000000000000 700 
force B 0000000000000000 700 
force alu_op 00 0 
force alu_op 01 700
force alu_op 10 900
force alu_op 11 1100
force A_inv 0 0
force B_inv 0 0

force A 0001000000000100 1200 
force B 0000000110000010 1200 
force alu_op 00 0 
force alu_op 01 1200
force alu_op 10 1400
force alu_op 11 1600
force A_inv 0 0
force B_inv 0 0

force A 0001000000000100 1700 
force B 0000000110000010 1700 
force alu_op 00 1700 
force alu_op 01 1900
force alu_op 10 2100
force alu_op 11 2300
force A_inv 0 0
force B_inv 1 0


run 3000